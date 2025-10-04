package com.lcsz.reuseplus.utils;

import java.io.File;

public class PostUtils {
    public static Boolean fileExists(String pathFile) {
        File file = new File(pathFile);
        return file.exists();
    }
}
