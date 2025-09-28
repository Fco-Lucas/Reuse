package com.lcsz.reuseplus.security;

import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.services.UserService;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class JwtUserDetailsService implements UserDetailsService {
    private final UserService userService;

    public JwtUserDetailsService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        String numericLogin = login.replaceAll("[^\\d]", "");

        if(numericLogin.length() != 11 && numericLogin.length() != 14) throw new BadCredentialsException("Informe um CPF ou CNPJ válido para realizar login");

        // Checa se é CPF válido (11 números, com ou sem máscara)
//        if (numericLogin.length() == 11) {
            User user = userService.existsByCpf(login);
            if(user == null) throw new UsernameNotFoundException("Credenciais inválidas, certifique-se de possuir uma conta com as credenciais fornecidas");
            return new JwtUserDetails(user);
//        }

        // Se passou até aqui é CNPJ
//        User user = userService.existsByCnpj(login);
//        if(user == null) throw new UsernameNotFoundException("Credenciais inválidas, certifique-se de possuir uma conta com as credenciais fornecidas");
//        return new JwtUserDetails(user);
    }

    public JwtToken getTokenAuthenticated(String login) {
        UserDetails userDetails = loadUserByUsername(login);
        UUID id;

        if (userDetails instanceof JwtUserDetails jwtUserDetails) {
            id = jwtUserDetails.getId();
        } else {
            throw new RuntimeException("Erro ao gerar token: tipo de usuário inválido.");
        }

        return JwtUtils.createToken(id, login);
    }
}
