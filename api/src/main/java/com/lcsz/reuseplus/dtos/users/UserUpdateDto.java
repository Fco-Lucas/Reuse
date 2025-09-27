package com.lcsz.reuseplus.dtos.users;

import jakarta.validation.constraints.Size;

public class UserUpdateDto {
    private String name;
    @Size(min = 11, max = 11, message = "O campo 'cpf' deve conter 11 dígitos")
    private String cpf;
    @Size(min = 14, max = 14, message = "O campo 'cnpj' deve conter 14 dígitos")
    private String cnpj;

    public UserUpdateDto() {
    }

    public UserUpdateDto(String name, String cpf, String cnpj) {
        this.name = name;
        this.cpf = cpf;
        this.cnpj = cnpj;
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

    @Override
    public String toString() {
        return "UserUpdateDto{" +
                "name='" + name + '\'' +
                ", cpf='" + cpf + '\'' +
                ", cnpj='" + cnpj + '\'' +
                '}';
    }
}
