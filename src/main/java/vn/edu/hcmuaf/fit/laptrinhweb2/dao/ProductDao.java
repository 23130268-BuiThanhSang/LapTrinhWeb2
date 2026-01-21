package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.PreparedBatch;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductReview;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.*;

public class ProductDao extends BaseDao {

    public List<Product> getAllProduct() {
        return null;
    }

    public Product getProduct(int id) {
        ProductGroupDao groupDao = new ProductGroupDao();
        ProductTypeDao typeDao = new ProductTypeDao();

        return get().withHandle(handle -> handle.createQuery("""
                    SELECT id, product_name, brand_id, product_infor,
                           product_car_instruction, product_return_infor,
                           product_gender, product_type_id, collection_id, sport_id
                    FROM product
                    WHERE id = :id
                """).bind("id", id).map((rs, ctx) -> {
            Product p = new Product();
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("product_name"));
            p.setProductInfor(rs.getString("product_infor"));
            p.setProductCareInstruction(rs.getString("product_car_instruction"));
            p.setProductReturnInfor(rs.getString("product_return_infor"));
            p.setProductGender(rs.getString("product_gender"));

            /**
             * productGroup lấy theo 1 dòng
             */
            p.setCollection(groupDao.getProductGroup(GroupType.COLLECTION, rs.getInt("collection_id")));

            p.setSport(groupDao.getProductGroup(GroupType.SPORT, rs.getInt("sport_id")));

            p.setBrand(groupDao.getProductGroup(GroupType.BRAND, rs.getInt("brand_id")));

            /**
             * productType lấy theo 1 dòng
             */
            p.setProductType(typeDao.getById(rs.getInt("product_type_id")));

            /**
             * variants lấy theo nhiều dòng
             */
            List<ProductVariant> variants = handle.createQuery("""
                        SELECT id, color, size, price, stock
                        FROM product_variant
                        WHERE product_id = :productId
                    """).bind("productId", p.getId()).mapToBean(ProductVariant.class).list();

            for (ProductVariant v : variants) {
                List<ProductVariantImage> images = handle.createQuery("""
                            SELECT id,
                                   variant_id AS variantId,
                                   image_url AS imageUrl
                            FROM product_variant_image
                            WHERE variant_id = :variantId
                        """).bind("variantId", v.getId()).mapToBean(ProductVariantImage.class).list();

                v.setImages(images);
            }

            p.setVariants(variants);

            return p;
        }).findOne().orElse(null));
    public List<ProductReview> getReviewsByProduct(int productId, Integer rating) {
        String sql = "SELECT r.id, r.user_id AS userId, " +
                "                   r.product_id AS productId, " +
                "                   r.review_date AS reviewDate, " +
                "                   u.user_name AS userName, " +
                "                   u.avatar_url AS avatarUrl, " +
                "                   r.rating, r.review_text AS reviewText " +
                "            FROM product_review r " +
                "            JOIN accounts u ON r.user_id = u.id " +
                "            WHERE r.product_id = :pid";
        if (rating != null) {
            sql += " AND r.rating = :rating";
        }

        sql += " ORDER BY r.review_date DESC";

        final String finalSql = sql;

        return get().withHandle(h -> {
            var query = h.createQuery(finalSql)
                    .bind("pid", productId);

            if (rating != null) {
                query.bind("rating", rating);
            }

            return query.mapToBean(ProductReview.class).list();
        });
    }

    public void insertReview(int userId, int productId, int rating, String text) {
        get().useHandle(h ->
                h.createUpdate("""
        INSERT INTO product_review(user_id, product_id, rating, review_text, review_date)
        VALUES (:uid, :pid, :rating, :text, NOW())
    """).bind("uid", userId).bind("pid", productId).bind("rating", rating).bind("text", text).execute()
        );
    }

    public int countReviewsByProduct(int productId) {
        return get().withHandle(h ->
                h.createQuery("""
            SELECT COUNT(*)
            FROM product_review
            WHERE product_id = :pid
        """).bind("pid", productId).mapTo(int.class).one()
        );
    }
    }


}
