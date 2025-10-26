package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.PostRedemption;
import com.lcsz.reuseplus.repositorys.projections.PostRedemptionProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

public interface PostRedemptionRepository extends JpaRepository<PostRedemption, Long> {
    @Query(value = """
                SELECT 
                    R.id AS postRedemptionId, 
                    R.post_id, 
                    R.created_at AS redemptionAt,
                    P.image_key,
                    P.name AS postName,
                    RT.name AS restaurantName,
                    U.name AS userName FROM post_redemptions R
                INNER JOIN posts P ON P.id = R.post_id
                INNER JOIN users U ON R.user_id = U.id
                LEFT JOIN restaurants RT ON P.restaurant_id = RT.id
                WHERE R.user_id = :userId AND R.post_id = :postId AND R.status != 'CANCELLED'
            """, nativeQuery = true)
    PostRedemptionProjection findByUserIdAndPostIdActive(UUID userId, Long postId);

    @Query(value = """
                SELECT 
                    R.id AS postRedemptionId, 
                    R.post_id, 
                    R.created_at AS redemptionAt,
                    P.image_key,
                    P.name AS postName,
                    RT.name AS restaurantName,
                    U.name AS userName FROM post_redemptions R
                INNER JOIN posts P ON P.id = R.post_id
                INNER JOIN users U ON R.user_id = U.id
                LEFT JOIN restaurants RT ON P.restaurant_id = RT.id
                WHERE R.user_id = :userId AND R.status != 'CANCELLED'
            """, nativeQuery = true)
    Page<PostRedemptionProjection> findAllByUserIdPageable(
            Pageable pageable,
            @Param("userId") UUID userId
    );
}
