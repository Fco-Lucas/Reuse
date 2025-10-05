package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.enums.postRedemptions.PostRedemptionStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.models.PostRedemption;
import com.lcsz.reuseplus.repositorys.PostRedemptionRepository;
import com.lcsz.reuseplus.repositorys.projections.PostRedemptionProjection;
import com.lcsz.reuseplus.security.AuthenticatedUserProvider;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
public class PostRedemptionService {
    private final PostRedemptionRepository repository;
    private final PostService postService;
    private final AuthenticatedUserProvider authenticatedUserProvider;

    public PostRedemptionService(PostRedemptionRepository repository, PostService postService, AuthenticatedUserProvider authenticatedUserProvider) {
        this.repository = repository;
        this.postService = postService;
        this.authenticatedUserProvider = authenticatedUserProvider;
    }

    @Transactional(readOnly = true)
    public PostRedemptionProjection getByUserIdAndPostId (UUID userId, Long postId) {
        return repository.findByUserIdAndPostIdActive(userId, postId);
    }

    @Transactional
    public PostRedemption create (Long postId) {
        // Verifica se é um usuário que está tentando resgatar
        AuthRole authUserRole = authenticatedUserProvider.getAuthenticatedUserRole();
        if(!authUserRole.equals(AuthRole.USER)) throw new RuntimeException("Somente usuários podem resgatar publicações");

        UUID authUserId = authenticatedUserProvider.getAuthenticatedUserId();

        // Verifica se o POST existe
        Post post = this.postService.getById(postId);
        Integer amount = post.getAmount();
        Integer amountRedemption = post.getAmountRedemption();

        // Verifica se o produto pode ser resgatado
        if(amountRedemption >= amount) throw new RuntimeException("O número de produtos disponíveis para serem resgatados já foi atingido, volte mais cedo na próxima");

        // Verifica se o usuário já resgatou o produto
        PostRedemptionProjection exists = getByUserIdAndPostId(authUserId, postId);
        if(exists != null) throw new RuntimeException("Você já resgatou este produto, apenas 1 produto por usuário pode ser resgatado");

        // Incrementa o valor
        postService.updateAmountRedemption(postId, true);

        PostRedemption entity = new PostRedemption();
        entity.setUserId(authUserId);
        entity.setPostId(postId);
        entity.setStatus(PostRedemptionStatus.RESERVED);

        return repository.save(entity);
    }

    @Transactional(readOnly = true)
    public PostRedemption getById (Long postRedemptionId) {
        return repository.findById(postRedemptionId).orElseThrow(
                () -> new EntityNotFoundException(String.format("PostRedemption com ID: %s não encontrado no sistema", postRedemptionId))
        );
    }

    @Transactional
    public PostRedemption updateStatus (Long postRedemptionId, PostRedemptionStatus status) {
        if(!status.equals(PostRedemptionStatus.CANCELLED) && !status.equals(PostRedemptionStatus.COMPLETED)) {
            throw new RuntimeException("O status de um resgate só pode ser alterado para CANCELLED ou COMPLETED");
        }

        PostRedemption postRedemption = getById(postRedemptionId);

        UUID authUserId = authenticatedUserProvider.getAuthenticatedUserId();
        if (!authUserId.equals(postRedemption.getUserId()) && status.equals(PostRedemptionStatus.COMPLETED)) {
            throw new RuntimeException("Apenas quem resgatou a publicação pode completar o resgate");
        }
        if (!authUserId.equals(postRedemption.getUserId()) && status.equals(PostRedemptionStatus.CANCELLED)) {
            throw new RuntimeException("Apenas quem resgatou a publicação pode cancelar o resgate");
        }

        // Se o usuário está cancelando o resgate, decrementa o número de resgates do pedido
        if (status.equals(PostRedemptionStatus.CANCELLED) && !postRedemption.getStatus().equals(status)) postService.updateAmountRedemption(postRedemption.getPostId(), false);

        if (!postRedemption.getStatus().equals(status)) postRedemption.setStatus(status);

        return repository.save(postRedemption);
    }
}
