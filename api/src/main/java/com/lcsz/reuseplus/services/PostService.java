package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.dtos.posts.PostCreateDto;
import com.lcsz.reuseplus.dtos.posts.PostListResponseDto;
import com.lcsz.reuseplus.dtos.posts.PostResponseDto;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.mappers.PostMapper;
import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.PostRepository;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
import com.lcsz.reuseplus.security.AuthenticatedUserProvider;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.UUID;

@Service
public class PostService {
    private final PostRepository repository;
    private final AuthenticatedUserProvider authUserProvider;
    private final Path rootLocation = Path.of("images/posts");
    private final UserService userService;
    private final RestaurantService restaurantService;

    public PostService(PostRepository repository, AuthenticatedUserProvider authUserProvider, UserService userService, RestaurantService restaurantService) {
        this.repository = repository;
        this.authUserProvider = authUserProvider;
        this.userService = userService;
        this.restaurantService = restaurantService;
    }

    public String storePostImage(MultipartFile file, Long postId) {
        try {
            if (file.isEmpty()) {
                throw new IllegalArgumentException("Arquivo de imagem vazio");
            }

            // Gera nome único para o arquivo
            String extension = getFileExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID() + (extension.isBlank() ? "" : "." + extension);

            // Cria pasta se não existir: images/posts/{postId}
            Path postDir = rootLocation.resolve(postId.toString());
            Files.createDirectories(postDir);

            // Caminho final do arquivo
            Path destinationFile = postDir.resolve(filename);

            // Copia o arquivo
            Files.copy(file.getInputStream(), destinationFile, StandardCopyOption.REPLACE_EXISTING);

            // Retorna caminho relativo (pra salvar no banco)
            return "images/posts/" + postId + "/" + filename;

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
        System.out.println(entity);

        switch (authUserRole) {
            case USER -> entity.setUserId(authUserId);
            case RESTAURANT -> entity.setRestaurantId(authUserId);
        }

        Post saved = repository.save(entity);

        String imagePath = storePostImage(image, saved.getId());
        saved.setImageKey(imagePath);

        return PostMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = true)
    public Page<PostListResponseDto> getAll (
            Pageable pageable
    ) {
        Page<PostProjection> projections = repository.findAllPageable(pageable);

        return projections.map(p -> new PostListResponseDto(
                p.getId(),
                p.getUserId(),
                p.getUserName(),
                p.getRestaurantId(),
                p.getRestaurantName(),
                p.getName(),
                p.getAmount(),
                p.getValidUntil(),
                "http://localhost:8181/api/v1/" + p.getImageKey()
        ));
    }

    @Transactional(readOnly = true)
    public Post getById (Long id) {
        return repository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(String.format("Post com id: %s não encontrado", id))
        );
    }

    @Transactional(readOnly = true)
    public PostResponseDto getByIdDto (Long id) {
        Post post = getById(id);
        if(post.getUserId() == null && post.getRestaurantId() == null) throw new RuntimeException(String.format("Post com ID: %s não possui user_id e restaurant_id", id));

        PostResponseDto responseDto = PostMapper.entityToResponse(post);
        responseDto.setImageUrl("http://localhost:8181/api/v1/" + post.getImageKey());

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
}
