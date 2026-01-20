package vn.edu.hcmuaf.fit.laptrinhweb2.model;

import java.util.ArrayList;
import java.util.List;

public class ProductVariant{
    private int id;
    private String color;
    private int size;
    private double price;
    private int stock;
    private List<ProductVariantImage> images;
    public ProductVariant() {
        super();
    }
    public ProductVariant(int id, String color, int size, double price, int stock) {
        super();
        this.id = id;
        this.color = color;
        this.size = size;
        this.price = price;
        this.stock = stock;
        this.images = new ArrayList<>();
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getColor() {
        return color;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public int getSize() {
        return size;
    }
    public void setSize(int size) {
        this.size = size;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public int getStock() {
        return stock;
    }
    public void setStock(int stock) {
        this.stock = stock;
    }
    public List<ProductVariantImage> getImages() {
        return images;
    }
    public void setImages(List<ProductVariantImage> images) {
        this.images = images;
    }


}
