package com.lcsz.reuseplus.repositorys.projections;

import com.lcsz.reuseplus.enums.posts.PostStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public interface PostProjection {
    Long getId();
    Long getPostLikeId();
    UUID getUserId();
    String getUserName();
    UUID getRestaurantId();
    String getRestaurantName();
    String getName();
    Integer getAmount();
    Integer getAmountRedemption();
    LocalDateTime getValidUntil();
    String getImageKey();
    PostStatus getStatus();
}
