package com.lcsz.reuseplus.mappers;

import com.lcsz.reuseplus.dtos.users.UserCreateDto;
import com.lcsz.reuseplus.dtos.users.UserResponseDto;
import com.lcsz.reuseplus.models.User;
import com.lcsz.reuseplus.repositorys.projections.UserProjection;
import org.modelmapper.ModelMapper;

public class UserMapper {
    private static final ModelMapper mapper = new ModelMapper();

    static {
        mapper.typeMap(UserCreateDto.class, User.class)
                .addMappings(mapper -> mapper.skip(User::setId)
                );
    }

    public static User createDtoToEntity(UserCreateDto createDto) {
        return mapper.map(createDto, User.class);
    }

    public static UserResponseDto entityToResponse(User entity) {
        return mapper.map(entity, UserResponseDto.class);
    }

    public static User responseToEntity(UserResponseDto responseDto) {
        return mapper.map(responseDto, User.class);
    }

    public static UserResponseDto projectionToResponse(UserProjection projection) {
        return mapper.map(projection, UserResponseDto.class);
    }
}
