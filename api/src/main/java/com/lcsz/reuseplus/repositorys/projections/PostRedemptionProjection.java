package com.lcsz.reuseplus.repositorys.projections;

import java.time.LocalDateTime;

public interface PostRedemptionProjection {
    Long getPostRedemptionId();
    Long getPostId();
    LocalDateTime getRedemptionAt();
    String getPostName();
    String getRestaurantName();
    String getUserName();
}
