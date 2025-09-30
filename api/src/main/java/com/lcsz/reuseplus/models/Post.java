package com.lcsz.reuseplus.models;

import com.lcsz.reuseplus.enums.posts.PostStatus;
import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "posts")
@EntityListeners(AuditingEntityListener.class)
public class Post implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private Long id;
    @Column(name = "user_id", nullable = false)
    private UUID userId;
    @Column(name = "restaurant_id", nullable = false)
    private UUID restaurantId;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private Integer amount;
    private String description;
    @Column(nullable = false)
    private String address;
    @Column(name = "valid_until", nullable = false)
    private LocalDateTime validUntil;
    @CreatedDate
    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;
    @Column(name = "image_key")
    private String imageKey;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 12)
    private PostStatus status = PostStatus.ACTIVE;

    public Post() {
    }

    public Post(Long id, UUID userId, UUID restaurantId, String name, Integer amount, String description, String address, LocalDateTime validUntil, LocalDateTime createdAt, String imageKey, PostStatus status) {
        this.id = id;
        this.userId = userId;
        this.restaurantId = restaurantId;
        this.name = name;
        this.amount = amount;
        this.description = description;
        this.address = address;
        this.validUntil = validUntil;
        this.createdAt = createdAt;
        this.imageKey = imageKey;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UUID getUserId() {
        return userId;
    }

    public void setUserId(UUID userId) {
        this.userId = userId;
    }

    public UUID getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(UUID restaurantId) {
        this.restaurantId = restaurantId;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getValidUntil() {
        return validUntil;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setValidUntil(LocalDateTime validUntil) {
        this.validUntil = validUntil;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public String getImageKey() {
        return imageKey;
    }

    public void setImageKey(String imageKey) {
        this.imageKey = imageKey;
    }

    public PostStatus getStatus() {
        return status;
    }

    public void setStatus(PostStatus status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        Post post = (Post) o;
        return Objects.equals(id, post.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", userId=" + userId +
                ", restaurantId=" + restaurantId +
                ", name='" + name + '\'' +
                ", amount=" + amount +
                ", description='" + description + '\'' +
                ", address=" + address +
                ", validUntil=" + validUntil +
                ", createdAt=" + createdAt +
                ", imageKey='" + imageKey + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
