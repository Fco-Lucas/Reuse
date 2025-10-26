package com.lcsz.reuseplus.dtos.posts;

import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;

import java.time.LocalDateTime;

public class PostCreateDto {
    @NotBlank(message = "O campo 'name' é obrigatório")
    private String name;
    @NotNull(message = "O campo 'amount' é obrigatório")
    @Positive(message = "O campo 'amount' deve ser maior que zero")
    private Integer amount;
    @NotNull(message = "O campo 'validUntil' é obrigatório")
    @Future(message = "O campo 'validUntil' deve ser maior que a data atual")
    private LocalDateTime validUntil;
    @NotBlank(message = "O campo 'address' é obrigatório")
    private String address;
    private String description;

    public PostCreateDto() {
    }

    public PostCreateDto(String name, Integer amount, LocalDateTime validUntil, String address, String description) {
        this.name = name;
        this.amount = amount;
        this.validUntil = validUntil;
        this.address = address;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public LocalDateTime getValidUntil() {
        return validUntil;
    }

    public void setValidUntil(LocalDateTime validUntil) {
        this.validUntil = validUntil;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "PostCreateDto{" +
                "name='" + name + '\'' +
                ", amount=" + amount +
                ", validUntil=" + validUntil +
                ", address='" + address + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
