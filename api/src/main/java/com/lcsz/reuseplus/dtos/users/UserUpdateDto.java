package com.lcsz.reuseplus.dtos.users;

import jakarta.validation.constraints.Size;

public class UserUpdateDto {
    private String name;
    @Size(min = 11, max = 11, message = "O campo 'cpf' deve conter 11 dígitos")
    private String cpf;

    public UserUpdateDto() {
    }

    public UserUpdateDto(String name, String cpf) {
        this.name = name;
        this.cpf = cpf;
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

    @Override
    public String toString() {
        return "UserUpdateDto{" +
                "name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                '}';
    }
}
