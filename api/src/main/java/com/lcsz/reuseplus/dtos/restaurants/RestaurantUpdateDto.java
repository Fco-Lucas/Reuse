package com.lcsz.reuseplus.dtos.restaurants;

import jakarta.validation.constraints.Size;

public class RestaurantUpdateDto {
    private String name;
    @Size(min = 14, max = 14, message = "O campo 'cpf' deve conter 14 dígitos")
    private String cnpj;

    public RestaurantUpdateDto() {
    }

    public RestaurantUpdateDto(String name, String cnpj) {
        this.name = name;
        this.cnpj = cnpj;
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

    @Override
    public String toString() {
        return "RestaurantUpdateDto{" +
                "name='" + name + '\'' +
                ", cnpj='" + cnpj + '\'' +
                '}';
    }
}
