package com.lcsz.reuseplus.dtos.postRedemptions;

import java.time.LocalDateTime;

public class PostUserRedemptionResponseDto {
    private Long postRedemptionId;
    private Long postId;
    private LocalDateTime redemptionAt;
    private String imageUrl;
    private String postName;
    private String restaurantName;
    private String userName;

    public PostUserRedemptionResponseDto() {
    }

    public PostUserRedemptionResponseDto(Long postRedemptionId, Long postId, LocalDateTime redemptionAt, String imageUrl, String postName, String restaurantName, String userName) {
        this.postRedemptionId = postRedemptionId;
        this.postId = postId;
        this.redemptionAt = redemptionAt;
        this.imageUrl = imageUrl;
        this.postName = postName;
        this.restaurantName = restaurantName;
        this.userName = userName;
    }

    public Long getPostRedemptionId() {
        return postRedemptionId;
    }

    public void setPostRedemptionId(Long postRedemptionId) {
        this.postRedemptionId = postRedemptionId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public LocalDateTime getRedemptionAt() {
        return redemptionAt;
    }

    public void setRedemptionAt(LocalDateTime redemptionAt) {
        this.redemptionAt = redemptionAt;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getPostName() {
        return postName;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public String toString() {
        return "PostUserRedemptionResponseDto{" +
                "postRedemptionId=" + postRedemptionId +
                ", postId=" + postId +
                ", redemptionAt=" + redemptionAt +
                ", imageUrl='" + imageUrl + '\'' +
                ", postName='" + postName + '\'' +
                ", restaurantName='" + restaurantName + '\'' +
                ", userName='" + userName + '\'' +
                '}';
    }
}
