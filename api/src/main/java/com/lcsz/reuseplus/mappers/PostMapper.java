package com.lcsz.reuseplus.mappers;

import com.lcsz.reuseplus.dtos.posts.PostCreateDto;
import com.lcsz.reuseplus.dtos.posts.PostListResponseDto;
import com.lcsz.reuseplus.dtos.posts.PostResponseDto;
import com.lcsz.reuseplus.models.Post;
import com.lcsz.reuseplus.repositorys.projections.PostProjection;
import org.modelmapper.ModelMapper;

public class PostMapper {
    private static final ModelMapper mapper = new ModelMapper();

    static {
        mapper.typeMap(PostCreateDto.class, Post.class)
                .addMappings(mapper -> {
                    mapper.skip(Post::setId);
                    mapper.skip(Post::setUserId);
                    mapper.skip(Post::setRestaurantId);
                }
        );
    }

    public static Post createDtoToEntity(PostCreateDto createDto) {
        return mapper.map(createDto, Post.class);
    }

    public static PostResponseDto entityToResponse(Post entity) {
        return mapper.map(entity, PostResponseDto.class);
    }

    public static Post responseToEntity(PostResponseDto responseDto) {
        return mapper.map(responseDto, Post.class);
    }
}
