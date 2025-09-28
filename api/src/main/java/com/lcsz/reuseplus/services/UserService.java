package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.users.*;
import com.lcsz.reuseplus.enums.users.UserStatus;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityExistsException;
import com.lcsz.reuseplus.exceptions.customExceptions.EntityNotFoundException;
import com.lcsz.reuseplus.mappers.UserMapper;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.UserRepository;
import com.lcsz.reuseplus.repositorys.projections.UserProjection;
import com.lcsz.reuseplus.utils.UserLoginType;
import com.lcsz.reuseplus.utils.UserUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;
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

    @Transactional(readOnly = true)
    public User existsByCnpj (String cnpj) {
        return repository.findByCnpjAndStatus(cnpj, UserStatus.ACTIVE).orElse(null);
    }

    @Transactional(readOnly = false)
    public UserResponseDto create (UserCreateDto createDto) {
        // Verifica o tipo do login do usuário
        UserLoginType userLoginType = UserUtils.getTypeLogin(createDto.getCpf(), createDto.getCnpj());
        if(userLoginType == UserLoginType.BOTH) throw new RuntimeException("Informe apenas o CPF ou o CNPJ para se cadastrar");
        if(userLoginType == UserLoginType.INVALID) throw new RuntimeException("Informe o CPF ou o CNPJ para se cadastrar");

        String userLoginTypeText = UserUtils.getTypeLoginText(userLoginType);
        String userLoginTypeCredential = UserUtils.getTypeLoginCredential(createDto.getCpf(), createDto.getCnpj());

        User existsUser = null;
        if(userLoginType == UserLoginType.CPF) existsUser = existsByCpf(createDto.getCpf());
        else if(userLoginType == UserLoginType.CNPJ) existsUser = existsByCnpj(createDto.getCnpj());

        if(existsUser != null) throw new EntityExistsException(String.format("Usuário com %s: %s já cadastrado no sistema", userLoginTypeText, userLoginTypeCredential));

        User entity = UserMapper.createDtoToEntity(createDto);
        entity.setPassword(passwordEncoder.encode(createDto.getPassword()));
        User saved = repository.save(entity);

        return UserMapper.entityToResponse(saved);
    }

    @Transactional(readOnly = true)
    public Page<UserResponseDto> getAllPageable (
            Pageable pageable,
            String filterName,
            String filterCpfCnpj,
            UserStatus filterStatus
    ) {
        String nameParam = (filterName == null || filterName.isBlank()) ? null : "%" + filterName + "%";
        String cpfCnpjParam = (filterCpfCnpj == null || filterCpfCnpj.isBlank()) ? null : "%" + filterCpfCnpj + "%";
        String statusParam = filterStatus == null ? null : filterStatus.name();

        Page<UserProjection> users = repository.getAllPageable(pageable, nameParam, cpfCnpjParam, statusParam);

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

        UserLoginType userLoginType = UserUtils.getTypeLogin(user.getCpf(), user.getCnpj());

        if (updateDto.getCpf() != null && !updateDto.getCpf().equals(user.getCpf())) {
            if (!userLoginType.equals(UserLoginType.CPF)) {
                throw new RuntimeException(String.format("O usuário autenticado possui CNPJ cadastrado, portanto não é possível alterar o CPF para: %s", updateDto.getCpf()));
            }

            user.setCpf(updateDto.getCpf());
        }

        if (updateDto.getCnpj() != null && !updateDto.getCnpj().equals(user.getCnpj())) {
            if (!userLoginType.equals(UserLoginType.CNPJ)) {
                throw new RuntimeException(String.format("O usuário autenticado possui CPF cadastrado, portanto não é possível alterar o CNPJ para: %s", updateDto.getCnpj()));
            }

            user.setCnpj(updateDto.getCnpj());
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
