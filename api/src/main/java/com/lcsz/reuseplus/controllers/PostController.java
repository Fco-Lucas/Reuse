package com.lcsz.reuseplus.controllers;

import com.lcsz.reuseplus.dtos.PageableDto;
import com.lcsz.reuseplus.dtos.posts.PostCreateDto;
import com.lcsz.reuseplus.dtos.posts.PostListResponseDto;
import com.lcsz.reuseplus.dtos.posts.PostResponseDto;
import com.lcsz.reuseplus.mappers.PageableMapper;
import com.lcsz.reuseplus.services.PostService;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


@RestController
@RequestMapping("${app.base-url}posts")
public class PostController {
    private final PostService service;

    public PostController(PostService service) {
        this.service = service;
    }

    @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<PostResponseDto> createPost (
            @Valid @RequestPart("data") PostCreateDto createDto,
            @RequestPart(value = "image", required = false) MultipartFile image
    ) {
        PostResponseDto responseDto = service.create(image, createDto);
        return ResponseEntity.status(HttpStatus.CREATED).body(responseDto);
    }

    @GetMapping
    public ResponseEntity<PageableDto> getAllPosts (
            Pageable pageable
    ) {
        Page<PostListResponseDto> responseDto = service.getAll(pageable);
        return ResponseEntity.status(HttpStatus.OK).body(PageableMapper.toDto(responseDto));
    }

    @GetMapping("/{id}")
    public ResponseEntity<PostResponseDto> getById (
            @PathVariable Long id
    ) {
        PostResponseDto responseDto = service.getByIdDto(id);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }
}
