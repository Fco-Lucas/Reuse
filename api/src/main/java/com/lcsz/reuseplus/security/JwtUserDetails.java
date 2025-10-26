package com.lcsz.reuseplus.security;

import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.models.Restaurant;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.List;
import java.util.UUID;

public class JwtUserDetails extends User {
    private final com.lcsz.reuseplus.models.User user;
    private final Restaurant restaurant;
    private final AuthRole role;

    public JwtUserDetails(com.lcsz.reuseplus.models.User user) {
        super(
                user.getCpf(),
                user.getPassword(),
                List.of(new SimpleGrantedAuthority("USER")) // autoridade padrão
        );
        this.user = user;
        this.restaurant = null;
        this.role = AuthRole.USER;
    }

    public JwtUserDetails(Restaurant restaurant) {
        super(
                restaurant.getCnpj(),
                restaurant.getPassword(),
                List.of(new SimpleGrantedAuthority("RESTAURANT")) // autoridade padrão
        );
        this.restaurant = restaurant;
        this.user = null;
        this.role = AuthRole.RESTAURANT;
    }

    public UUID getId() {
        return user != null ? user.getId() : restaurant.getId();
    }

    public AuthRole getRole() {
        return role;
    }

    public boolean isUser() {
        return user != null;
    }

    public boolean isRestaurant() {
        return restaurant != null;
    }

    public Restaurant getRestaurant() {
        return restaurant;
    }

    public com.lcsz.reuseplus.models.User getUser() {
        return user;
    }
}
