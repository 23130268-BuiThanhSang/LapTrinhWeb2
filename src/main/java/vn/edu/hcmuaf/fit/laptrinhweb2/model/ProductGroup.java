package vn.edu.hcmuaf.fit.laptrinhweb2.model;

public class ProductGroup {

    private int id;
    private String name;
    private String thumbnailUrl;
    private String imageUrl;
    private int displayOrder;

    public ProductGroup(int id, String name, String thumbnailUrl, String imageUrl, int displayOrder) {
        this.id = id;
        this.name = name;
        this.thumbnailUrl = thumbnailUrl;
        this.imageUrl = imageUrl;
        this.displayOrder = displayOrder;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getThumbnailUrl() {
        return thumbnailUrl;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public int getDisplayOrder() {
        return displayOrder;
    }
}
