package com.lcsz.reuseplus.dtos.restaurants;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class RestaurantUpdatePasswordDto {
    @NotBlank
    @Size(min = 6)
    private String currentPassword;
    @NotBlank
    @Size(min = 6)
    private String newPassword;
    @NotBlank
    @Size(min = 6)
    private String confirmNewPassword;

    public RestaurantUpdatePasswordDto() {
    }

    public RestaurantUpdatePasswordDto(String currentPassword, String newPassword, String confirmNewPassword) {
        this.currentPassword = currentPassword;
        this.newPassword = newPassword;
        this.confirmNewPassword = confirmNewPassword;
    }

    public String getCurrentPassword() {
        return currentPassword;
    }

    public void setCurrentPassword(String currentPassword) {
        this.currentPassword = currentPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getConfirmNewPassword() {
        return confirmNewPassword;
    }

    public void setConfirmNewPassword(String confirmNewPassword) {
        this.confirmNewPassword = confirmNewPassword;
    }

    @Override
    public String toString() {
        return "RestaurantUpdatePasswordDto{" +
                "currentPassword='" + currentPassword + '\'' +
                ", newPassword='" + newPassword + '\'' +
                ", confirmNewPassword='" + confirmNewPassword + '\'' +
                '}';
    }
}
