package com.lcsz.reuseplus.security;

import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.services.UserService;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class AuthenticatedUserProvider {
    private final UserService userService;

    public AuthenticatedUserProvider(UserService userService) {
        this.userService = userService;
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

    public User getAuthenticatedUserEntity () {
        return getAuthenticatedUser().getUser();
    }
}
