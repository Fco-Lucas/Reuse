package com.lcsz.reuseplus.security;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.List;
import java.util.UUID;

public class JwtUserDetails extends User {
    private final com.lcsz.reuseplus.models.User user;

    public JwtUserDetails(com.lcsz.reuseplus.models.User user) {
        super(
                resolveSubject(user),
                user.getPassword(),
                List.of(new SimpleGrantedAuthority("ROLE_USER")) // autoridade padrão
        );
        this.user = user;
    }

    private static String resolveSubject(com.lcsz.reuseplus.models.User user) {
        if (user.getCpf() != null) return user.getCpf();
        if (user.getCnpj() != null) return user.getCnpj();
        throw new IllegalArgumentException("Usuário precisa ter CPF ou CNPJ válido");
    }

    public UUID getId() {
        return user.getId();
    }

    public com.lcsz.reuseplus.models.User getUser() {
        return user;
    }
}
