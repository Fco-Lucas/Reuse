package com.lcsz.reuseplus.repositorys.projections;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public interface UserProjection {
    UUID getId();
    LocalDateTime getCreatedAt();
    String getName();
    String getCpf();
    UserStatus getStatus();
}
