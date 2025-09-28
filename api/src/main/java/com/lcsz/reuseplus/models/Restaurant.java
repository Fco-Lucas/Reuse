package com.lcsz.reuseplus.models;

import com.lcsz.reuseplus.enums.restaurants.RestaurantStatus;
import jakarta.persistence.*;

import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "restaurants")
public class Restaurant {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(nullable = false)
    private UUID id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false, length = 14)
    private String cnpj;
    @Column(nullable = false)
    private String password;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private RestaurantStatus status = RestaurantStatus.ACTIVE;

    public Restaurant() {
    }

    public Restaurant(UUID id, String name, String cnpj, String password, RestaurantStatus status) {
        this.id = id;
        this.name = name;
        this.cnpj = cnpj;
        this.password = password;
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

    public RestaurantStatus getStatus() {
        return status;
    }

    public void setStatus(RestaurantStatus status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Restaurant that = (Restaurant) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "Restaurant{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cnpj='" + cnpj + '\'' +
                ", password='" + password + '\'' +
                ", status=" + status +
                '}';
    }
}
