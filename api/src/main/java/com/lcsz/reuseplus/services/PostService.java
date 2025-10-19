package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.AppProperties;
import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.dtos.posts.PostCreateDto;
import com.lcsz.reuseplus.dtos.posts.PostListResponseDto;
import com.lcsz.reuseplus.dtos.posts.PostResponseDto;
import com.lcsz.reuseplus.enums.postLikes.PostLikeStatus;
import com.lcsz.reuseplus.enums.posts.PostStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.mappers.PostMapper;
import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.models.PostLike;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.PostRepository;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
import com.lcsz.reuseplus.security.AuthenticatedUserProvider;
import com.lcsz.reuseplus.utils.PostUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

@Service
public class PostService {
    private final PostRepository repository;
    private final AuthenticatedUserProvider authUserProvider;
    private final UserService userService;
    private final RestaurantService restaurantService;
    private final PostLikeService postLikeService;
    private final AppProperties appProperties;

    public PostService(PostRepository repository, AuthenticatedUserProvider authUserProvider, UserService userService, RestaurantService restaurantService, PostLikeService postLikeService, AppProperties appProperties) {
        this.repository = repository;
        this.authUserProvider = authUserProvider;
        this.userService = userService;
        this.restaurantService = restaurantService;
        this.postLikeService = postLikeService;
        this.appProperties = appProperties;
    }

    // Retorna a entidade caso o usuário tenha curtido o POST
    private PostLike getPostLikeForPost (UUID userId, Long postId) {
        return postLikeService.getByUserIdAndPostId(userId, postId);
    }

    // Retorna se o usuário curtiu a publicação
    private Boolean postIsLiked (UUID userId, Long postId) {
        PostLike postLike = getPostLikeForPost(userId, postId);
        return postLike != null && postLike.getStatus().equals(PostLikeStatus.ACTIVE);
    }

    private String getImageUrl (String imageKey) {
        String imagesBaseUrl = appProperties.getBaseImagesUrl();
        return imagesBaseUrl + imageKey;
    }

    private String getImagePath (String imageKey) {
        String imagesBasePath = appProperties.getBaseImagesPath();
        return imagesBasePath + imageKey;
    }

    public String storePostImage(MultipartFile file, Long postId) {
        try {
            if (file.isEmpty()) {
                throw new IllegalArgumentException("Arquivo de imagem vazio");
            }

            // Gera nome único para o arquivo
            String extension = getFileExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID() + (extension.isBlank() ? "" : "." + extension);

            // Converte a propriedade para Path
            Path rootLocation = Paths.get(appProperties.getBaseImagesPath());

            // Cria a pasta se não existir: uploads/posts/{postId}
            Path postDir = rootLocation.resolve(postId.toString());
            Files.createDirectories(postDir);

            // Caminho final do arquivo
            Path destinationFile = postDir.resolve(filename);

            // Copia o arquivo
            Files.copy(file.getInputStream(), destinationFile, StandardCopyOption.REPLACE_EXISTING);

            // Retorna caminho relativo (pra salvar no banco)
            return postId + "/" + filename;

        } catch (IOException e) {
            throw new RuntimeException("Falha ao salvar a imagem: " + e.getMessage(), e);
        }
    }

    private String getFileExtension(String originalFilename) {
        if (originalFilename == null || !originalFilename.contains(".")) return "";
        return originalFilename.substring(originalFilename.lastIndexOf('.') + 1);
    }

    @Transactional
    public PostResponseDto create (MultipartFile image, PostCreateDto createDto) {
        // Obtém o ID através do contexto do SPRING
        UUID authUserId = authUserProvider.getAuthenticatedUserId();
        AuthRole authUserRole = authUserProvider.getAuthenticatedUserRole();

        if (authUserId == null) throw new RuntimeException("ID do usuário autenticado não encontrado");
        if (authUserRole == null) throw new RuntimeException("Role do usuário autenticado não encontrado");

        Post entity = PostMapper.createDtoToEntity(createDto);

        switch (authUserRole) {
            case USER -> entity.setUserId(authUserId);
            case RESTAURANT -> entity.setRestaurantId(authUserId);
        }

        Post saved = repository.save(entity);

        String imagePath = storePostImage(image, saved.getId());
        saved.setImageKey(imagePath);

        return getByIdDto(saved.getId());
    }

    @Transactional(readOnly = true)
    public Page<PostListResponseDto> getAll(Pageable pageable) {
        UUID authUserId = authUserProvider.getAuthenticatedUserId();
        Page<PostProjection> projections = repository.findAllPageable(pageable, authUserId);

        return projections.map(p -> {
            String imageUrl = null;
            String imagePath = getImagePath(p.getImageKey());
            if (PostUtils.fileExists(imagePath)) {
                imageUrl = getImageUrl(p.getImageKey());
            }

            PostStatus resolvedStatus = resolveStatus(p);

            // Verifica se o usuário curtiu essa publicação
            Boolean isLiked = postIsLiked(authUserId, p.getId());

            return new PostListResponseDto(
                    p.getId(),
                    isLiked,
                    p.getUserId(),
                    p.getUserName(),
                    p.getRestaurantId(),
                    p.getRestaurantName(),
                    p.getName(),
                    p.getAmount(),
                    p.getAmountRedemption(),
                    p.getValidUntil(),
                    imageUrl,
                    resolvedStatus
            );
        });
    }

    private PostStatus resolveStatus(PostProjection p) {
        if (Objects.equals(p.getAmount(), p.getAmountRedemption())) {
            return PostStatus.FULL;
        }
        if (p.getValidUntil().isBefore(LocalDateTime.now())) {
            return PostStatus.EXPIRED;
        }
        return p.getStatus();
    }

    @Transactional
    public void checkAndUpdateStatus(Post post) {
        PostStatus newStatus = null;

        if (Objects.equals(post.getAmount(), post.getAmountRedemption()) && !post.getStatus().equals(PostStatus.FULL)) {
            newStatus = PostStatus.FULL;
        } else if (post.getValidUntil().isBefore(LocalDateTime.now()) && !post.getStatus().equals(PostStatus.EXPIRED)) {
            newStatus = PostStatus.EXPIRED;
        } else if (!post.getStatus().equals(PostStatus.ACTIVE)) {
            newStatus = PostStatus.ACTIVE;
        }

        if (newStatus != null) {
            post.setStatus(newStatus);
            repository.save(post);
        }
    }

    @Transactional
    public Post getById(Long id) {
        Post post = repository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Post com id: " + id + " não encontrado"));

        checkAndUpdateStatus(post);
        return post;
    }

    @Transactional(readOnly = true)
    public PostResponseDto getByIdDto (Long id) {
        UUID authUserId = authUserProvider.getAuthenticatedUserId();

        Post post = getById(id);
        if(post.getUserId() == null && post.getRestaurantId() == null) throw new RuntimeException(String.format("Post com ID: %s não possui user_id e restaurant_id", id));

        PostResponseDto responseDto = PostMapper.entityToResponse(post);

        // Verifica se a imagem existe no diretório antes de adicionar na resposta
        String imagePath = getImagePath(post.getImageKey());
        if (PostUtils.fileExists(imagePath)) {
            String imageUrl = getImageUrl(post.getImageKey());
            responseDto.setImageUrl(imageUrl);
        }

        // Verifica se o usuário curtiu essa publicação
        Boolean isLiked = postIsLiked(authUserId, post.getId());
        responseDto.setLiked(isLiked);

        if(post.getUserId() != null) {
            User user = userService.getById(post.getUserId());
            responseDto.setUserName(user.getName());
        }

        if(post.getRestaurantId() != null) {
            Restaurant restaurant = restaurantService.getById(post.getRestaurantId());
            responseDto.setRestaurantName(restaurant.getName());
        }

        return responseDto;
    }

    @Transactional
    public void updateAmountRedemption (Long id, boolean increment) {
        Post post = getById(id);
        Integer amount = post.getAmount();
        Integer amountRedemption = post.getAmountRedemption();

        // Se os valores já estão iguais e está incrementando retorna

        Integer newAmountRedemption = null;
        // Incrementa caso não tenha atingido o máximo
        if(!Objects.equals(amount, amountRedemption) && increment) newAmountRedemption = amountRedemption + 1;
        // Decrementa caso o valor atual de amountRedemption esteja diferente de 0
        if (!Objects.equals(amountRedemption, 0) && !increment) newAmountRedemption = amountRedemption - 1;

        if(newAmountRedemption != null) {
            post.setAmountRedemption(newAmountRedemption);

            Post saved = repository.save(post);

            // Verifica e atualiza o status também
            checkAndUpdateStatus(saved);
        }
    }
}
