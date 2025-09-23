package com.lcsz.reuseplus.dtos.users;

import com.lcsz.reuseplus.enums.users.UserStatus;

import java.util.UUID;

public class UserResponseDto {
    private UUID id;
    private String name;
    private String cpf;
    private String cnpj;
    private UserStatus status;

    public UserResponseDto() {
    }

    public UserResponseDto(UUID id, String name, String cpf, String cnpj, UserStatus status) {
        this.id = id;
        this.name = name;
        this.cpf = cpf;
        this.cnpj = cnpj;
        this.status = status;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
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
        return "UserResponseDto{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                ", cnpj='" + cnpj + '\'' +
                ", status=" + status +
                '}';
    }
}
