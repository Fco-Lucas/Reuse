package com.lcsz.reuseplus.repositorys;

import com.lcsz.reuseplus.enums.users.UserStatus;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.projections.UserProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;
import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID> {
    Optional<User> findByCpfAndStatus(String cpf, UserStatus status);
    Optional<User> findByCnpjAndStatus(String cnpj, UserStatus status);

    @Query(value = """
            SELECT id, name, cpf, cnpj, status FROM users 
            WHERE (COALESCE(:name, '') = '' OR name ILIKE :name)
                AND (COALESCE(:cpfCnpj, '') = '' OR (cpf ILIKE :cpfCnpj OR cnpj ILIKE :cpfCnpj))
                AND (:status IS NULL OR status = :status)
            """, nativeQuery = true)
    Page<UserProjection> getAllPageable(
            Pageable pageable,
            @Param("name") String name,
            @Param("cpfCnpj") String cpfCnpj,
            @Param("status") String status
    );
}
