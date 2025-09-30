package com.lcsz.reuseplus.repositorys.projections;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public interface RestaurantProjection {
    UUID getId();
    LocalDateTime getCreatedAt();
    String getName();
    String getCnpj();
    UserStatus getStatus();
}
