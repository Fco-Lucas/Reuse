package com.lcsz.reuseplus.utils;

public class UserUtils {
    public static UserLoginType getTypeLogin (String cpf, String cnpj) {
        if (cpf != null && !cpf.isBlank() && cnpj != null && !cnpj.isBlank()) return UserLoginType.BOTH;
        else if(cpf != null && !cpf.isBlank()) return UserLoginType.CPF;
        else if (cnpj != null && !cnpj.isBlank()) return UserLoginType.CNPJ;
        else return UserLoginType.INVALID;
    }

    public static String getTypeLoginText (UserLoginType userLoginType) {
        return switch (userLoginType) {
            case CPF -> "CPF";
            case CNPJ -> "CNPJ";
            case BOTH -> "AMBOS";
            case INVALID -> "INVÁLIDO";
        };
    }

    public static String getTypeLoginCredential (String cpf, String cnpj) {
        if (cpf != null && !cpf.isBlank() && cnpj != null && !cnpj.isBlank()) return null;
        else if(cpf != null && !cpf.isBlank()) return cpf;
        else if (cnpj != null && !cnpj.isBlank()) return cnpj;
        else return null;
    }
}
