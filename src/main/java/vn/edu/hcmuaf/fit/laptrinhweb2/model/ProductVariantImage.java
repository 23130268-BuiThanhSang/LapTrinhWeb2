package vn.edu.hcmuaf.fit.laptrinhweb2.model;

import java.util.List;

public class ProductVariantImage {
    private int id;
    private String imageUrl;
    public ProductVariantImage(int id, String imageUrl) {
        super();
        this.id = id;
        this.imageUrl = imageUrl;
    }
    public ProductVariantImage() {
        super();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getImageUrl() {
        return imageUrl;
    }
    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

}