package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.users.*;
import com.lcsz.reuseplus.enums.users.UserStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityExistsException;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.mappers.UserMapper;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.UserRepository;
import com.lcsz.reuseplus.repositorys.projections.UserProjection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
public class UserService {
    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository repository, PasswordEncoder passwordEncoder) {
        this.repository = repository;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional(readOnly = true)
    public User existsByCpf (String cpf) {
        return repository.findByCpfAndStatus(cpf, UserStatus.ACTIVE).orElse(null);
    }

    @Transactional(readOnly = false)
    public UserResponseDto create (UserCreateDto createDto) {
        User existsUser = existsByCpf(createDto.getCpf());
        if(existsUser != null) throw new EntityExistsException(String.format("Usuário com CPF: %s já cadastrado no sistema", createDto.getCpf()));

        User entity = UserMapper.createDtoToEntity(createDto);
        entity.setPassword(passwordEncoder.encode(createDto.getPassword()));
        User saved = repository.save(entity);

        return UserMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = true)
    public Page<UserResponseDto> getAllPageable (
            Pageable pageable,
            String filterName,
            String filterCpf,
            UserStatus filterStatus
    ) {
        String nameParam = (filterName == null || filterName.isBlank()) ? null : "%" + filterName + "%";
        String cpfParam = (filterCpf == null || filterCpf.isBlank()) ? null : "%" + filterCpf + "%";
        String statusParam = filterStatus == null ? null : filterStatus.name();

        Page<UserProjection> users = repository.getAllPageable(pageable, nameParam, cpfParam, statusParam);

        return users.map(UserMapper::projectionToResponse);
    }

    @Transactional(readOnly = true)
    public User getById (UUID id) {
        return repository.findById(id).orElseThrow(
                () -> new EntityNotFoundException(String.format("Usuário com ID: %s não encontrado", id))
        );
    }

    @Transactional(readOnly = true)
    public UserResponseDto getByIdDto (UUID id) {
        User user = getById(id);
        return UserMapper.entityToResponse(user);
    }

    @Transactional(readOnly = false)
    public UserResponseDto update (UUID id, UserUpdateDto updateDto) {
        User user = getById(id);

        if (updateDto.getName() != null && !updateDto.getName().equals(user.getName())) user.setName(updateDto.getName());

        if (updateDto.getCpf() != null && !updateDto.getCpf().equals(user.getCpf())) {
            User existsUser = existsByCpf(updateDto.getCpf());
            if (existsUser != null && !existsUser.getId().equals(user.getId())) {
                throw new EntityExistsException(String.format("Usuário com CPF: %s já cadastrado no sistema", updateDto.getCpf()));
            }

            user.setCpf(updateDto.getCpf());
        }

        User saved = repository.save(user);

        return UserMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = false)
    public UserDeleteResponseDto delete (UUID id) {
        User user = getById(id);
        user.setStatus(UserStatus.INACTIVE);
        User saved = repository.save(user);
        return new UserDeleteResponseDto(true, saved.getId());
    }

    @Transactional(readOnly = false)
    public UserResponseDto restore (UUID id) {
        User user = getById(id);
        user.setStatus(UserStatus.ACTIVE);
        User saved = repository.save(user);
        return UserMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = false)
    public void updatePassword (UUID id, UserUpdatePasswordDto updatePasswordDto) {
        String currentPassword = updatePasswordDto.getCurrentPassword();
        String newPassword = updatePasswordDto.getNewPassword();
        String confirmNewPassword = updatePasswordDto.getConfirmNewPassword();

        if (!newPassword.equals(confirmNewPassword)) {
            throw new RuntimeException("Nova senha não é igual à confirmação da nova senha");
        }

        User user = getById(id);

        if (!passwordEncoder.matches(currentPassword, user.getPassword())) {
            throw new RuntimeException("Senha atual inválida");
        }

        user.setPassword(passwordEncoder.encode(newPassword));

        this.repository.save(user);
    }
}
