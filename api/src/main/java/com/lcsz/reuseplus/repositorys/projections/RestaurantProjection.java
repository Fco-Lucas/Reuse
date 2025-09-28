package com.lcsz.reuseplus.repositorys.projections;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.util.UUID;

public interface RestaurantProjection {
    UUID getId();
    String getName();
    String getCnpj();
    UserStatus getStatus();
}
