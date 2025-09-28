package com.lcsz.reuseplus.repositorys.projections;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.util.UUID;

public interface UserProjection {
    UUID getId();
    String getName();
    String getCpf();
    UserStatus getStatus();
}
