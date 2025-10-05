package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
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
    """, nativeQuery = true)
    Page<PostProjection> findAllPageable(
            Pageable pageable,
            @Param("authUserId") UUID authUserId
    );
}