package com.lcsz.reuseplus.controllers;

import com.lcsz.reuseplus.enums.postRedemptions.PostRedemptionStatus;
import com.lcsz.reuseplus.models.PostRedemption;
import com.lcsz.reuseplus.services.PostRedemptionService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("${app.base-url}posts/{postId}/redemptions")
public class PostRedemptionController {
    private final PostRedemptionService service;

    public PostRedemptionController(PostRedemptionService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<PostRedemption> createPostRedemption (
        @PathVariable Long postId
    ) {
        PostRedemption responseDto = service.create(postId);
        return ResponseEntity.status(HttpStatus.CREATED).body(responseDto);
    }

    @PostMapping("/{postRedemptionId}/cancel")
    public ResponseEntity<PostRedemption> cancelPostRedemption (
        @PathVariable Long postId,
        @PathVariable Long postRedemptionId
    ) {
        PostRedemption responseDto = service.updateStatus(postRedemptionId, PostRedemptionStatus.CANCELLED);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }

    @PostMapping("/{postRedemptionId}/complete")
    public ResponseEntity<PostRedemption> completePostRedemption (
            @PathVariable Long postId,
            @PathVariable Long postRedemptionId
    ) {
        PostRedemption responseDto = service.updateStatus(postRedemptionId, PostRedemptionStatus.COMPLETED);
        return ResponseEntity.status(HttpStatus.OK).body(responseDto);
    }
}
