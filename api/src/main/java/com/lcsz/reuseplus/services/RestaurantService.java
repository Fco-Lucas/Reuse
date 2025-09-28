package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.restaurants.*;
import com.lcsz.reuseplus.enums.restaurants.RestaurantStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityExistsException;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.mappers.RestaurantMapper;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.repositorys.RestaurantRepository;
import com.lcsz.reuseplus.repositorys.projections.RestaurantProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
public class RestaurantService {
    private final RestaurantRepository repository;
    private final PasswordEncoder passwordEncoder;

    public RestaurantService(RestaurantRepository repository, PasswordEncoder passwordEncoder) {
        this.repository = repository;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional(readOnly = true)
    public Restaurant existsByCnpj (String cnpj) {
        return repository.findByCnpjAndStatus(cnpj, RestaurantStatus.ACTIVE).orElse(null);
    }

    @Transactional(readOnly = false)
    public RestaurantResponseDto create (RestaurantCreateDto createDto) {
        Restaurant existsRestaurant = existsByCnpj(createDto.getCnpj());
        if(existsRestaurant != null) throw new EntityExistsException(String.format("Restaurante com CNPJ: %s já cadastrado no sistema", createDto.getCnpj()));

        Restaurant entity = RestaurantMapper.createDtoToEntity(createDto);
        entity.setPassword(passwordEncoder.encode(createDto.getPassword()));
        Restaurant saved = repository.save(entity);

        return RestaurantMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = true)
    public Page<RestaurantResponseDto> getAllPageable (
            Pageable pageable,
            String filterName,
            String filterCnpj,
            RestaurantStatus filterStatus
    ) {
        String nameParam = (filterName == null || filterName.isBlank()) ? null : "%" + filterName + "%";
        String cnpjParam = (filterCnpj == null || filterCnpj.isBlank()) ? null : "%" + filterCnpj + "%";
        String statusParam = filterStatus == null ? null : filterStatus.name();

        Page<RestaurantProjection> restaurants = repository.getAllPageable(pageable, nameParam, cnpjParam, statusParam);

        return restaurants.map(RestaurantMapper::projectionToResponse);
    }

    @Transactional(readOnly = true)
    public Restaurant getById (UUID id) {
        return repository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(String.format("Restaurante com ID: %s não encontrado", id))
        );
    }

    @Transactional(readOnly = true)
    public RestaurantResponseDto getByIdDto (UUID id) {
        Restaurant restaurant = getById(id);
        return RestaurantMapper.entityToResponse(restaurant);
    }

    @Transactional(readOnly = false)
    public RestaurantResponseDto update (UUID id, RestaurantUpdateDto updateDto) {
        Restaurant restaurant = getById(id);

        if (updateDto.getName() != null && !updateDto.getName().equals(restaurant.getName())) restaurant.setName(updateDto.getName());

        if (updateDto.getCnpj() != null && !updateDto.getCnpj().equals(restaurant.getCnpj())) {
            Restaurant existsRestaurant = existsByCnpj(updateDto.getCnpj());
            if (existsRestaurant != null && !existsRestaurant.getId().equals(restaurant.getId())) {
                throw new EntityExistsException(String.format("Usuário com CNPJ: %s já cadastrado no sistema", updateDto.getCnpj()));
            }

            restaurant.setCnpj(updateDto.getCnpj());
        }

        Restaurant saved = repository.save(restaurant);

        return RestaurantMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = false)
    public RestaurantDeleteResponseDto delete (UUID id) {
        Restaurant restaurant = getById(id);
        restaurant.setStatus(RestaurantStatus.INACTIVE);
        Restaurant saved = repository.save(restaurant);
        return new RestaurantDeleteResponseDto(true, saved.getId());
    }

    @Transactional(readOnly = false)
    public RestaurantResponseDto restore (UUID id) {
        Restaurant restaurant = getById(id);
        restaurant.setStatus(RestaurantStatus.ACTIVE);
        Restaurant saved = repository.save(restaurant);
        return RestaurantMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = false)
    public void updatePassword (UUID id, RestaurantUpdatePasswordDto updatePasswordDto) {
        String currentPassword = updatePasswordDto.getCurrentPassword();
        String newPassword = updatePasswordDto.getNewPassword();
        String confirmNewPassword = updatePasswordDto.getConfirmNewPassword();

        if (!newPassword.equals(confirmNewPassword)) {
            throw new RuntimeException("Nova senha não é igual à confirmação da nova senha");
        }

        Restaurant restaurant = getById(id);

        if (!passwordEncoder.matches(currentPassword, restaurant.getPassword())) {
            throw new RuntimeException("Senha atual inválida");
        }

        restaurant.setPassword(passwordEncoder.encode(newPassword));

        this.repository.save(restaurant);
    }
}
