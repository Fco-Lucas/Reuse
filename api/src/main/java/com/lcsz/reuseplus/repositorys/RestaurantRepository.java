package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.enums.restaurants.RestaurantStatus;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.repositorys.projections.RestaurantProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

public interface RestaurantRepository extends JpaRepository<Restaurant, UUID> {
    Optional<Restaurant> findByCnpjAndStatus(String cnpj, RestaurantStatus status);

    @Query(value = """
            SELECT id, name, cnpj, status FROM restaurants 
            WHERE (COALESCE(:name, '') = '' OR name ILIKE :name)
                AND (COALESCE(:cnpj, '') = '' OR cnpj ILIKE :cnpj)
                AND (:status IS NULL OR status = :status)
            """, nativeQuery = true)
    Page<RestaurantProjection> getAllPageable(
            Pageable pageable,
            @Param("name") String name,
            @Param("cnpj") String cnpj,
            @Param("status") String status
    );
}
