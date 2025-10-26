package com.lcsz.reuseplus.dtos.users;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public class UserResponseDto {
    private UUID id;
    private LocalDateTime createdAt;
    private String name;
    private String cpf;
    private UserStatus status;

    public UserResponseDto() {
    }

    public UserResponseDto(UUID id, LocalDateTime createdAt, String name, String cpf, UserStatus status) {
        this.id = id;
        this.createdAt = createdAt;
        this.name = name;
        this.cpf = cpf;
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

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "UserResponseDto{" +
                "id=" + id +
                ", createdAt='" + createdAt + '\'' +
                ", name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                ", status=" + status +
                '}';
    }
}
