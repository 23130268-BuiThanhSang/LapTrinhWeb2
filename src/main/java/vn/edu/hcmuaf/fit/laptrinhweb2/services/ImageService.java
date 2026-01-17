package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import java.io.File;

public class ImageService {
    private static final String ROOT = "D:/lgImg";

    public File getDirectory(String relativePath) {
        if (relativePath == null) {
            relativePath = "";
        }

        File dir = new File(ROOT, relativePath);

        if (!dir.exists() || !dir.isDirectory()) {
            return null;
        }

        return dir;
    }

    public File[] getAllFiles(String relativePath) {
        File dir = getDirectory(relativePath);
        if (dir == null) {
            return null;
        }
        return dir.listFiles();
    }
    public File getImageFile(String relativePath) {
        if (relativePath == null || relativePath.isEmpty()) {
            return null;
        }

        File file = new File(ROOT, relativePath);

        if (!file.exists() || !file.isFile()) {
            return null;
        }

        return file;
    }
}
