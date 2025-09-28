package com.lcsz.reuseplus.mappers;

import com.lcsz.reuseplus.dtos.restaurants.RestaurantCreateDto;
import com.lcsz.reuseplus.dtos.restaurants.RestaurantResponseDto;
import com.lcsz.reuseplus.models.Restaurant;
import com.lcsz.reuseplus.repositorys.projections.RestaurantProjection;
import org.modelmapper.ModelMapper;

public class RestaurantMapper {
    private static final ModelMapper mapper = new ModelMapper();

    static {
        mapper.typeMap(RestaurantCreateDto.class, Restaurant.class)
                .addMappings(mapper -> mapper.skip(Restaurant::setId)
                );
    }

    public static Restaurant createDtoToEntity(RestaurantCreateDto createDto) {
        return mapper.map(createDto, Restaurant.class);
    }

    public static RestaurantResponseDto entityToResponse(Restaurant entity) {
        return mapper.map(entity, RestaurantResponseDto.class);
    }

    public static Restaurant responseToEntity(RestaurantResponseDto responseDto) {
        return mapper.map(responseDto, Restaurant.class);
    }

    public static RestaurantResponseDto projectionToResponse(RestaurantProjection projection) {
        return mapper.map(projection, RestaurantResponseDto.class);
    }
}
