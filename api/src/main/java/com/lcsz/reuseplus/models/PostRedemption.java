package com.lcsz.reuseplus.models;

import com.lcsz.reuseplus.enums.postRedemptions.PostRedemptionStatus;
import jakarta.persistence.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.LocalDateTime;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "post_redemptions")
@EntityListeners(AuditingEntityListener.class)
public class PostRedemption {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private Long id;
    @Column(nullable = false, name = "user_id", columnDefinition = "UUID")
    private UUID userId;
    @Column(nullable = false, name = "post_id")
    private Long postId;
    @CreatedDate
    @Column(nullable = false, name = "created_at")
    private LocalDateTime createdAt;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private PostRedemptionStatus status = PostRedemptionStatus.RESERVED;

    public PostRedemption() {
    }

    public PostRedemption(Long id, UUID userId, Long postId, LocalDateTime createdAt, PostRedemptionStatus status) {
        this.id = id;
        this.userId = userId;
        this.postId = postId;
        this.createdAt = createdAt;
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

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public PostRedemptionStatus getStatus() {
        return status;
    }

    public void setStatus(PostRedemptionStatus status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        PostRedemption postRedemption = (PostRedemption) o;
        return Objects.equals(id, postRedemption.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }

    @Override
    public String toString() {
        return "PostRedemption{" +
                "id=" + id +
                ", userId=" + userId +
                ", postId=" + postId +
                ", createdAt=" + createdAt +
                ", status=" + status +
                '}';
    }
}
