package com.lcsz.reuseplus.repositorys.projections;

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
    LocalDateTime getValidUntil();
    String getImageKey();
}
