package com.lcsz.reuseplus.controllers;

import com.lcsz.reuseplus.dtos.PageableDto;
import com.lcsz.reuseplus.dtos.restaurants.*;
import com.lcsz.reuseplus.enums.restaurants.RestaurantStatus;
import com.lcsz.reuseplus.mappers.PageableMapper;
import com.lcsz.reuseplus.services.RestaurantService;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("${app.base-url}restaurants")
public class RestaurantController {
    private final RestaurantService service;

    public RestaurantController(RestaurantService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<RestaurantResponseDto> createRestaurant (
            @RequestBody @Valid RestaurantCreateDto createDto
    ) {
        RestaurantResponseDto responseDto = service.create(createDto);
        return ResponseEntity.status(HttpStatus.CREATED).body(responseDto);
    }

    @GetMapping
    public ResponseEntity<PageableDto> getAllRestaurants (
            Pageable pageable,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String cnpj,
            @RequestParam(required = false) RestaurantStatus status
    ) {
        Page<RestaurantResponseDto> responseDto = service.getAllPageable(pageable, name, cnpj, status);
        return ResponseEntity.status(HttpStatus.OK).body(PageableMapper.toDto(responseDto));
    }

    @GetMapping("/{id}")
    public ResponseEntity<RestaurantResponseDto> getRestaurantById (
            @PathVariable UUID id
    ) {
        RestaurantResponseDto responseDto = service.getByIdDto(id);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<RestaurantResponseDto> updateRestaurant (
            @PathVariable UUID id,
            @RequestBody @Valid RestaurantUpdateDto updateDto
    ) {
        RestaurantResponseDto responseDto = service.update(id, updateDto);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<RestaurantDeleteResponseDto> deleteRestaurant (
            @PathVariable UUID id
    ) {
        RestaurantDeleteResponseDto responseDto = service.delete(id);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }

    @PostMapping("/{id}/restore")
    public ResponseEntity<RestaurantResponseDto> restoreRestaurant (
            @PathVariable UUID id
    ) {
        RestaurantResponseDto responseDto = service.restore(id);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }

    @PostMapping("/{id}/updatePassword")
    public ResponseEntity<Void> updateRestaurantPassword (
            @PathVariable UUID id,
            @RequestBody @Valid RestaurantUpdatePasswordDto updatePasswordDto
    ) {
        service.updatePassword(id, updatePasswordDto);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }
}
