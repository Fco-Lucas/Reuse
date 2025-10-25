package com.lcsz.reuseplus.repositorys.projections;

import java.time.LocalDateTime;
import java.util.UUID;

public interface PostUserListProjection {
    Long getId();
    UUID getUserId();
    String getUserName();
    UUID getRestaurantId();
    String getRestaurantName();
    String getName();
    LocalDateTime getCreatedAt();
    String getAddress();
    String getDescription();
    String getImageKey();
}
