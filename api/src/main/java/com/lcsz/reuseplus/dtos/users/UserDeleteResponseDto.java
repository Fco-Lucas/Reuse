package com.lcsz.reuseplus.dtos.users;

import java.util.UUID;

public class UserDeleteResponseDto {
    private boolean deleted;
    private UUID id;

    public UserDeleteResponseDto() {
    }

    public UserDeleteResponseDto(boolean deleted, UUID id) {
        this.deleted = deleted;
        this.id = id;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "UserDeleteResponseDto{" +
                "deleted=" + deleted +
                ", id=" + id +
                '}';
    }
}
