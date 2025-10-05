package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.PostRedemption;
import com.lcsz.reuseplus.repositorys.projections.PostRedemptionProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.Optional;
import java.util.UUID;

public interface PostRedemptionRepository extends JpaRepository<PostRedemption, Long> {
    @Query(value = """
                SELECT id FROM post_redemptions WHERE user_id = :userId AND post_id = :postId AND status != 'CANCELLED'
            """, nativeQuery = true)
    PostRedemptionProjection findByUserIdAndPostIdActive(UUID userId, Long postId);
}
