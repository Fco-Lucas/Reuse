package com.lcsz.reuseplus.dtos.postLikes;

import com.lcsz.reuseplus.enums.postLikes.PostLikeStatus;
import jakarta.validation.constraints.NotNull;

public class PostLikeUpdateDto {
    @NotNull(message = "O campo 'status' é obrigatório")
    private PostLikeStatus status;

    public PostLikeUpdateDto() {
    }

    public PostLikeUpdateDto(PostLikeStatus status) {
        this.status = status;
    }

    public PostLikeStatus getStatus() {
        return status;
    }

    public void setStatus(PostLikeStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "PostLikeUpdateDto{" +
                "status=" + status +
                '}';
    }
}
