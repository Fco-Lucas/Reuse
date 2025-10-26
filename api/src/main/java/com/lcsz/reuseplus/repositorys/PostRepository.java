package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
import com.lcsz.reuseplus.repositorys.projections.PostUserListProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.UUID;

public interface PostRepository extends JpaRepository<Post, Long> {
    @Query(value = """
        SELECT 
            P.id, 
            L.id AS post_like_id, 
            P.user_id, 
            U.name AS user_name, 
            P.restaurant_id, 
            R.name AS restaurant_name, 
            P.name, 
            P.amount,
            P.amount_redemption, 
            P.valid_until, 
            P.image_key,
            P.status
        FROM posts P
            LEFT JOIN users U ON P.user_id = U.id
            LEFT JOIN restaurants R ON P.restaurant_id = R.id
            LEFT JOIN post_likes L ON L.user_id = :authUserId AND P.id = L.post_id
        WHERE P.status = 'ACTIVE'
              AND NOT EXISTS (
                  SELECT 1
                  FROM post_redemptions RD
                  WHERE RD.user_id = :authUserId
                    AND RD.post_id = P.id
              )
        ORDER BY P.id DESC
    """, nativeQuery = true)
    Page<PostProjection> findAllPageable(
            Pageable pageable,
            @Param("authUserId") UUID authUserId
    );

    @Query(value = """
            SELECT 
                P.id, 
                P.user_id, 
                U.name AS user_name, 
                P.restaurant_id, 
                R.name AS restaurant_name, 
                P.name, 
                P.created_at, 
                P.address,
                P.description,
                P.image_key FROM posts P 
                LEFT JOIN users U ON P.user_id = U.id
                LEFT JOIN restaurants R ON P.restaurant_id = R.id
             WHERE (P.user_id = :userId OR P.restaurant_id = :userId) AND P.status != 'INACTIVE'
             ORDER BY P.id DESC
            """, nativeQuery = true)
    Page<PostUserListProjection> findAllByUserPageable (
            Pageable pageable,
            @Param("userId") UUID userId
    );
}