package com.lcsz.reuseplus.services;

import com.lcsz.reuseplus.dtos.users.UserCreateDto;
import com.lcsz.reuseplus.dtos.users.UserResponseDto;
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
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;
import java.util.UUID;

@Service
public class UserService {
    private final UserRepository repository;

    public UserService(UserRepository repository) {
        this.repository = repository;
    }

    @Transactional(readOnly = true)
    private Optional<User> existsByCpf (String cpf) {
        return repository.findByCpfAndStatus(cpf, UserStatus.ACTIVE);
    }

    @Transactional(readOnly = true)
    private Optional<User> existsByCnpj (String cnpj) {
        return repository.findByCnpjAndStatus(cnpj, UserStatus.ACTIVE);
    }

    @Transactional(readOnly = false)
    public UserResponseDto create (UserCreateDto createDto) {
        // Verifica o tipo do login do usuário
        UserLoginType userLoginType = UserUtils.getTypeLogin(createDto.getCpf(), createDto.getCnpj());
        if(userLoginType == UserLoginType.BOTH) throw new RuntimeException("Informe apenas o CPF ou o CNPJ para se cadastrar");
        if(userLoginType == UserLoginType.INVALID) throw new RuntimeException("Informe o CPF ou o CNPJ para se cadastrar");

        String userLoginTypeText = UserUtils.getTypeLoginText(userLoginType);
        String userLoginTypeCredential = UserUtils.getTypeLoginCredential(createDto.getCpf(), createDto.getCnpj());

        Optional<User> existsUser = Optional.empty();
        if(userLoginType == UserLoginType.CPF) existsUser = existsByCpf(createDto.getCpf());
        else if(userLoginType == UserLoginType.CNPJ) existsUser = existsByCnpj(createDto.getCnpj());

        if(existsUser.isPresent()) throw new EntityExistsException(String.format("Usuário com %s: %s já cadastrado no sistema", userLoginTypeText, userLoginTypeCredential));

        User entity = UserMapper.createDtoToEntity(createDto);
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
}
