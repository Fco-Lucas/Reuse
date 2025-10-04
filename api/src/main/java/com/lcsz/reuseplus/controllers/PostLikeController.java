package com.lcsz.reuseplus.controllers;

import com.lcsz.reuseplus.dtos.postLikes.PostLikeUpdateDto;
import com.lcsz.reuseplus.models.PostLike;
import com.lcsz.reuseplus.services.PostLikeService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("${app.base-url}posts/{postId}/likes")
public class PostLikeController {
    private final PostLikeService service;

    public PostLikeController(PostLikeService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<PostLike> createPostLike (
        @PathVariable Long postId
    ) {
        PostLike responseDto = service.create(postId);
        return ResponseEntity.status(HttpStatus.CREATED).body(responseDto);
    }

    @PatchMapping("{postLikeId}")
    public ResponseEntity<PostLike> updatePostLike (
            @PathVariable Long postId,
            @PathVariable Long postLikeId,
            @RequestBody @Valid PostLikeUpdateDto updateDto
    ) {
        PostLike responseDto = service.update(postLikeId, updateDto);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }
}
