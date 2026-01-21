package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.List;

public class ProductVariantDao extends BaseDao {

    public List<ProductVariant> getAll() {
        return get().withHandle(h ->
                h.createQuery("SELECT id, color, size, price, stock FROM product_variant")
                        .mapToBean(ProductVariant.class)
                        .list()
        );
    }

    public ProductVariant getById(int id) {
        return get().withHandle(h ->
                h.createQuery("SELECT id, color, size, price, stock FROM product_variant WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(ProductVariant.class)
                        .findFirst()
                        .orElse(null)
        );
    }

    // Helper method to attach images
    public void loadImages(ProductVariant variant) {
        if (variant == null) return;

        List<ProductVariantImage> images =
                get().withHandle(h ->
                        h.createQuery(
                                        "SELECT id, variant_id AS variantId, image_url AS imageUrl " +
                                                "FROM product_variant_image WHERE variant_id = :variantId"
                                )
                                .bind("variantId", variant.getId())
                                .mapToBean(ProductVariantImage.class)
                                .list()
                );

        variant.setImages(images);
    }
}
