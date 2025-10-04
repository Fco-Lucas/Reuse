package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.PostLike;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;
import java.util.UUID;

public interface PostLikeRepository extends JpaRepository<PostLike, Long> {
    Optional<PostLike> findByUserIdAndPostId(UUID userId, Long postId);
}
