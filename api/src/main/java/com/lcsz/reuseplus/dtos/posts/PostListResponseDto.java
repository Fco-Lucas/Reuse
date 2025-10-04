package com.lcsz.reuseplus.dtos.posts;

import java.time.LocalDateTime;
import java.util.UUID;

public class PostListResponseDto {
    private Long id;
    private Long postLikeId;
    private UUID userId;
    private String userName;
    private UUID restaurantId;
    private String restaurantName;
    private String name;
    private Integer amount;
    private LocalDateTime validUntil;
    private String imageUrl;

    public PostListResponseDto() {
    }

    public PostListResponseDto(Long id, Long postLikeId, UUID userId, String userName, UUID restaurantId, String restaurantName, String name, Integer amount, LocalDateTime validUntil, String imageUrl) {
        this.id = id;
        this.postLikeId = postLikeId;
        this.userId = userId;
        this.userName = userName;
        this.restaurantId = restaurantId;
        this.restaurantName = restaurantName;
        this.name = name;
        this.amount = amount;
        this.validUntil = validUntil;
        this.imageUrl = imageUrl;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPostLikeId() {
        return postLikeId;
    }

    public void setPostLikeId(Long postLikeId) {
        this.postLikeId = postLikeId;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public UUID getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(UUID restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public LocalDateTime getValidUntil() {
        return validUntil;
    }

    public void setValidUntil(LocalDateTime validUntil) {
        this.validUntil = validUntil;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "PostListResponseDto{" +
                "id=" + id +
                ", postLikeId=" + postLikeId +
                ", userId=" + userId +
                ", userName=" + userName +
                ", restaurantId=" + restaurantId +
                ", restaurantName=" + restaurantName +
                ", name='" + name + '\'' +
                ", amount=" + amount +
                ", validUntil=" + validUntil +
                ", imageUrl='" + imageUrl + '\'' +
                '}';
    }
}
