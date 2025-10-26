package com.lcsz.reuseplus.security;

import com.lcsz.reuseplus.dtos.AuthRole;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.services.RestaurantService;
import com.lcsz.reuseplus.services.UserService;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class AuthenticatedUserProvider {
    private final UserService userService;
    private final RestaurantService restaurantService;

    public AuthenticatedUserProvider(
            @Lazy UserService userService,
            @Lazy RestaurantService restaurantService
    ) {
        this.userService = userService;
        this.restaurantService = restaurantService;
    }

    // Retorna o usuário autenticado
    public JwtUserDetails getAuthenticatedUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication == null || !authentication.isAuthenticated()) {
            throw new RuntimeException("Usuário não autenticado.");
        }

        Object principal = authentication.getPrincipal();

        if (!(principal instanceof JwtUserDetails)) {
            return null;
        }

        return (JwtUserDetails) authentication.getPrincipal();
    }

    // Retorna o ID do usuário autenticado
    public UUID getAuthenticatedUserId() {
        return getAuthenticatedUser().getId();
    }

    public AuthRole getAuthenticatedUserRole() {
        return getAuthenticatedUser().getRole();
    }

    public User getAuthenticatedUserEntity () {
        return getAuthenticatedUser().getUser();
    }

    public Restaurant getAuthenticatedRestaurantEntity () {
        return getAuthenticatedUser().getRestaurant();
    }
}
