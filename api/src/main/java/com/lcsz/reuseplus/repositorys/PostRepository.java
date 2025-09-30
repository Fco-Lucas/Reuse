package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostRepository extends JpaRepository<Post, Long> {
    @Query(value = """
            SELECT P.id, P.user_id, U.name AS user_name, P.restaurant_id, R.name AS restaurant_name, P.name, P.amount, P.valid_until, P.image_key FROM posts P 
                LEFT JOIN users U ON P.user_id = U.id
                RIGHT JOIN restaurants R ON P.restaurant_id = R.id
            WHERE P.status = 'ACTIVE'
            """, nativeQuery = true)
    Page<PostProjection> findAllPageable(
        Pageable pageable
    );
}