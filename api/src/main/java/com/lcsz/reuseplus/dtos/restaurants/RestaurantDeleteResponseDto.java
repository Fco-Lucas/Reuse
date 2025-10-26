package com.lcsz.reuseplus.dtos.restaurants;

import java.util.UUID;

public class RestaurantDeleteResponseDto {
    private boolean deleted;
    private UUID id;

    public RestaurantDeleteResponseDto() {
    }

    public RestaurantDeleteResponseDto(boolean deleted, UUID id) {
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
        return "RestaurantDeleteResponseDto{" +
                "deleted=" + deleted +
                ", id=" + id +
                '}';
    }
}
