package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.List;

public class ProductVariantImageDao extends BaseDao {

    public List<ProductVariantImage> getAll() {
        return get().withHandle(h ->
                h.createQuery("SELECT id, variant_id AS variantId, image_url AS imageUrl FROM product_variant_image")
                        .mapToBean(ProductVariantImage.class)
                        .list()
        );
    }
    public ProductVariantImage getById(int id) {
        return get().withHandle(h ->
                h.createQuery("SELECT id, variant_id AS variantId, image_url AS imageUrl FROM product_variant_image WHERE id = :id")
                        .bind("id", id)
                        .mapToBean(ProductVariantImage.class)
                        .stream()
                        .findFirst()
                        .orElse(null)
        );
    }
    public List<ProductVariantImage> getByVariantId(int variantId) {
        return get().withHandle(h ->
                h.createQuery("SELECT id, variant_id AS variantId, image_url AS imageUrl FROM product_variant_image WHERE variant_id = :variantId")
                        .bind("variantId", variantId)
                        .mapToBean(ProductVariantImage.class)
                        .list()
        );
    }
}