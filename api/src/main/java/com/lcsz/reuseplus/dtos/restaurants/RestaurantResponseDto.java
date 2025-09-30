package com.lcsz.reuseplus.dtos.restaurants;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public class RestaurantResponseDto {
    private UUID id;
    private LocalDateTime createdAt;
    private String name;
    private String cnpj;
    private UserStatus status;

    public RestaurantResponseDto() {
    }

    public RestaurantResponseDto(UUID id, LocalDateTime createdAt, String name, String cnpj, UserStatus status) {
        this.id = id;
        this.createdAt = createdAt;
        this.name = name;
        this.cnpj = cnpj;
        this.status = status;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "RestaurantResponseDto{" +
                "id=" + id +
                ", createdAt='" + createdAt + '\'' +
                ", name='" + name + '\'' +
                ", cnpj='" + cnpj + '\'' +
                ", status=" + status +
                '}';
    }
}
