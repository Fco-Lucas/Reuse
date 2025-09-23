package com.lcsz.reuseplus.controllers;

import com.lcsz.reuseplus.dtos.PageableDto;
import com.lcsz.reuseplus.dtos.users.UserCreateDto;
import com.lcsz.reuseplus.dtos.users.UserResponseDto;
import com.lcsz.reuseplus.enums.users.UserStatus;
import com.lcsz.reuseplus.mappers.PageableMapper;
import com.lcsz.reuseplus.services.UserService;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("${app.base-url}users")
public class UserController {
    private final UserService service;

    public UserController(UserService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<UserResponseDto> createUser (
        @RequestBody @Valid UserCreateDto createDto
    ) {
        UserResponseDto responseDto = service.create(createDto);
        return ResponseEntity.status(HttpStatus.CREATED).body(responseDto);
    }

    @GetMapping
    public ResponseEntity<PageableDto> getAllUsers (
        Pageable pageable,
        @RequestParam(required = false) String name,
        @RequestParam(required = false) String cpfCnpj,
        @RequestParam(required = false)UserStatus status
    ) {
        Page<UserResponseDto> responseDto = service.getAllPageable(pageable, name, cpfCnpj, status);
        return ResponseEntity.status(HttpStatus.OK).body(PageableMapper.toDto(responseDto));
    }

    @GetMapping("/{id}")
    public ResponseEntity<UserResponseDto> createUser (
            @PathVariable UUID id
    ) {
        UserResponseDto responseDto = service.getByIdDto(id);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }
}
