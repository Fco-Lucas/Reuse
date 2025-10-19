package com.lcsz.reuseplus.dtos.posts;

import com.lcsz.reuseplus.enums.posts.PostStatus;

import java.time.LocalDateTime;
import java.util.UUID;

public class PostListResponseDto {
    private Long id;
    private Boolean liked;
    private UUID userId;
    private String userName;
    private UUID restaurantId;
    private String restaurantName;
    private String name;
    private Integer amount;
    private Integer amountRedemption;
    private LocalDateTime validUntil;
    private String imageUrl;
    private PostStatus status;

    public PostListResponseDto() {
    }

    public PostListResponseDto(Long id, Boolean liked, UUID userId, String userName, UUID restaurantId, String restaurantName, String name, Integer amount, Integer amountRedemption, LocalDateTime validUntil, String imageUrl, PostStatus status) {
        this.id = id;
        this.liked = liked;
        this.userId = userId;
        this.userName = userName;
        this.restaurantId = restaurantId;
        this.restaurantName = restaurantName;
        this.name = name;
        this.amount = amount;
        this.amountRedemption = amountRedemption;
        this.validUntil = validUntil;
        this.imageUrl = imageUrl;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Boolean getLiked() {
        return liked;
    }

    public void setLiked(Boolean liked) {
        this.liked = liked;
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

    public Integer getAmountRedemption() {
        return amountRedemption;
    }

    public void setAmountRedemption(Integer amountRedemption) {
        this.amountRedemption = amountRedemption;
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

    public PostStatus getStatus() {
        return status;
    }

    public void setStatus(PostStatus status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "PostListResponseDto{" +
                "id=" + id +
                ", liked=" + liked +
                ", userId=" + userId +
                ", userName=" + userName +
                ", restaurantId=" + restaurantId +
                ", restaurantName=" + restaurantName +
                ", name='" + name + '\'' +
                ", amount=" + amount +
                ", amountRedemption=" + amountRedemption +
                ", validUntil=" + validUntil +
                ", imageUrl='" + imageUrl + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
