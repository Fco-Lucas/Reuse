package com.lcsz.reuseplus.exceptions.customExceptions;

public class EntityExistsException extends RuntimeException {
    public EntityExistsException(String message) {
        super(message);
    }
}
