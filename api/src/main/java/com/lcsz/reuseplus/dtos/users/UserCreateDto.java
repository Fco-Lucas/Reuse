package com.lcsz.reuseplus.dtos.users;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class UserCreateDto {
    @NotBlank(message = "O campo 'name' é obrigatório")
    private String name;
    private String cpf;
    private String cnpj;
    @NotBlank(message = "O campo 'password' é obrigatório")
    @Size(min = 6, message = "O campo 'password' deve conter ao menos 6 dígitos")
    private String password;

    public UserCreateDto() {
    }

    public UserCreateDto(String name, String cpf, String cnpj, String password) {
        this.name = name;
        this.cpf = cpf;
        this.cnpj = cnpj;
        this.password = password;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UserCreateDto{" +
                "name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                ", cnpj='" + cnpj + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
