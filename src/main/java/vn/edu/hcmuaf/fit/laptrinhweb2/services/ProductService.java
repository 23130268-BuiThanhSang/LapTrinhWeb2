package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductVariantDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductVariantImageDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductReview;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService {
    ProductDao productDao = new ProductDao();

    public Product getProduct(int id) {
        return productDao.getProduct(id);
    }

    public boolean addProduct(Product product) {
        ProductVariantDao productVariantDao = new ProductVariantDao();
        ProductVariantImageDao productVariantImageDao = new ProductVariantImageDao();

            int product_id = productDao.insertProduct(product);
            List<ProductVariant> variants = product.getVariants();
            for (ProductVariant variant : variants) {
                System.out.println("insert variant trigger");
                variant.setProduct_id(product_id);
                int variant_id = productVariantDao.addProductVariant(variant);
                System.out.println(variant_id);

                List<ProductVariantImage> images = variant.getImages();
                for (ProductVariantImage productVariantImage : images) {
                    System.out.println("insert image trigger");
                    productVariantImage.setVariantId(variant_id);
                    productVariantImageDao.insert(productVariantImage);
                }
            }
        return true;
    }

    public List<ProductReview> getReviews(int id, Integer rating) {
        return productDao.getReviewsByProduct(id, rating);
    }

    public double getAverageRating(int id) {
        return productDao.getAverageRatingByProduct(id);
    }

    public int countReviews(int id) {
        return productDao.countReviewsByProduct(id);
    }

    public Map<Integer, String> buildSizeMap(Product product) {
        Map<Integer, String> sizeMap = new HashMap<>();
        product.getVariants().forEach(v -> {
            sizeMap.put(v.getSize(), getSizeText(v.getSize()));
        });
        return sizeMap;
    }

    private String getSizeText(int sizeID) {
        switch (sizeID) {
            case 1: return "S";
            case 2: return "M";
            case 3: return "L";
            case 4: return "XL";
            case 5: return "XXL";

            case 38: return "US 7";
            case 39: return "US 8";
            case 40: return "US 9";
            case 41: return "US 10";
            case 42: return "US 11";
            case 43: return "US 12";
        }

        if (sizeID >= 100) {
            if (sizeID % 100 == 0) {
                return (sizeID / 100) + "KG";
            } else {
                return (sizeID / 100.0) + "KG";
            }
        }
        return String.valueOf(sizeID);
    }

    public Map<String, Object> buildRatingInfo(int productId) {
        Map<String, Object> map = new HashMap<>();

        double avgRating = productDao.getAverageRatingByProduct(productId);
        int fullStars = (int) avgRating;
        boolean hasHalfStar = (avgRating - fullStars) >= 0.5;

        map.put("avgRating", String.format("%.1f", avgRating));
        map.put("fullStars", fullStars);
        map.put("hasHalfStar", hasHalfStar);

        return map;
    }

}
