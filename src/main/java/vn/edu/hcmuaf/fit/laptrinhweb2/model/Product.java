package vn.edu.hcmuaf.fit.laptrinhweb2.model;

import java.io.Serializable;
import java.util.List;

public class Product implements Serializable {
    private int id;
    private String name;
    private double price;
    private String img;
    private List<String> subImgs;
    public Product(int id, String name, double price, String img, List<String> subImgs) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.img = img;
        this.subImgs = subImgs;
    }
    public Product() {
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public String getImg() {
        return img;
    }
    public void setImg(String img) {
        this.img = img;
    }

    public List<String> getSubImgs() {
        return subImgs;
    }
}
