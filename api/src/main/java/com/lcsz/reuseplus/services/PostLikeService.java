package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.dtos.postLikes.PostLikeUpdateDto;
import com.lcsz.reuseplus.enums.postLikes.PostLikeStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.models.PostLike;
import com.lcsz.reuseplus.repositorys.PostLikeRepository;
import com.lcsz.reuseplus.security.AuthenticatedUserProvider;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class PostLikeService {
    private final PostLikeRepository repository;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public PostLikeService(PostLikeRepository repository, AuthenticatedUserProvider authenticatedUserProvider) {
        this.repository = repository;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    public PostLike getByUserIdAndPostId (UUID userId, Long postId) {
        return repository.findByUserIdAndPostId(userId, postId).orElse(null);
    }

    public PostLike create (Long postId) {
        // Verifica se é um usuaŕio que está tentando curtir o POST
        AuthRole authUserRole = authenticatedUserProvider.getAuthenticatedUserRole();
        if(!authUserRole.equals(AuthRole.USER)) throw new RuntimeException("Somente usuários podem curtir publicações");

        UUID authUserId = authenticatedUserProvider.getAuthenticatedUserId();

        // Verifica se o usuário já curtiu esse POST
        PostLike exists = getByUserIdAndPostId(authUserId, postId);
        if(exists != null) {
            PostLikeUpdateDto updateDto = new PostLikeUpdateDto(PostLikeStatus.ACTIVE);
            return update(exists.getId(), updateDto);
        }

        PostLike entity = new PostLike();
        entity.setUserId(authUserId);
        entity.setPostId(postId);
        entity.setStatus(PostLikeStatus.ACTIVE);
        return repository.save(entity);
    }

    public PostLike getById (Long id) {
        return repository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(String.format("PostLike com ID: %s não encontrado", id))
        );
    }

    public PostLike update (Long id, PostLikeUpdateDto updateDto) {
        PostLike entity = getById(id);

        if(entity.getStatus() != null && !entity.getStatus().equals(updateDto.getStatus())) entity.setStatus(updateDto.getStatus());

        return repository.save(entity);
    }
}
