package com.lcsz.reuseplus;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "app")
public class AppProperties {
    private String baseImagesUrl;
    private String baseImagesPath;

    public String getBaseImagesUrl() {
        return baseImagesUrl;
    }

    public void setBaseImagesUrl(String baseImagesUrl) {
        this.baseImagesUrl = baseImagesUrl;
    }

    public String getBaseImagesPath() {
        return baseImagesPath;
    }

    public void setBaseImagesPath(String baseImagesPath) {
        this.baseImagesPath = baseImagesPath;
    }
}
