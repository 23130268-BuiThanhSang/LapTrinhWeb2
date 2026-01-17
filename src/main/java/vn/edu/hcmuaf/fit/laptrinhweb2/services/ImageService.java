package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

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

    public boolean renameImage(String relativePath, String newName) {
        File oldFile = getImageFile(relativePath);

        String oldName = oldFile.getName();
        int dotIndex = oldName.lastIndexOf(".");
        if (dotIndex == -1) return false;

        String extension = oldName.substring(dotIndex);
        File newFile = new File(oldFile.getParent(), newName + extension);

        if (newFile.exists()) return false;

        return oldFile.renameTo(newFile);
    }
}
