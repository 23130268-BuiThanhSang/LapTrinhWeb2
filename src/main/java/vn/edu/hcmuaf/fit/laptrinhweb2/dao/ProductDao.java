package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.PreparedBatch;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductReview;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.*;

public class ProductDao extends BaseDao {

    public List<ProductCard> getProductCardRaw(int limit, int offset) {
        return get().withHandle(h ->
                h.createQuery("""
            SELECT 
                p.id,
                p.product_name      AS name,
                b.name              AS brandName,
                v.price             AS price,
                hd.discount_per     AS discountPercent,
                img.image_url       AS imageUrl
            FROM product p
            JOIN brand b ON p.brand_id = b.id
            JOIN product_variant v 
                ON v.product_id = p.id
               AND v.id = (
                    SELECT MIN(id)
                    FROM product_variant
                    WHERE product_id = p.id
               )
            LEFT JOIN hot_deal hd
                ON p.hot_deal_id = hd.id
            LEFT JOIN product_variant_image img
                ON img.variant_id = v.id
               AND img.id = (
                    SELECT MIN(id)
                    FROM product_variant_image
                    WHERE variant_id = v.id
               )

            -- Chỉ lấy sản phẩm đang hoạt động (dựa trên schema)
            WHERE p.is_active = 1

            ORDER BY p.id DESC
            LIMIT :limit OFFSET :offset
        """)
                        .bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(ProductCard.class)
                        .list()
        );
    }

    public List<ProductCard> getProductCardByType(int productTypeId, int limit, int offset) {
        return get().withHandle(h ->
                h.createQuery("""
        SELECT 
            p.id,
            p.product_name      AS name,
            b.name              AS brandName,
            v.price             AS price,
            hd.discount_per     AS discountPercent,
            img.image_url       AS imageUrl
        FROM product p
        JOIN brand b ON p.brand_id = b.id
        JOIN product_variant v 
            ON v.product_id = p.id
           AND v.id = (
                SELECT MIN(id)
                FROM product_variant
                WHERE product_id = p.id
           )
        LEFT JOIN hot_deal hd
            ON p.hot_deal_id = hd.id
        LEFT JOIN product_variant_image img
            ON img.variant_id = v.id
           AND img.id = (
                SELECT MIN(id)
                FROM product_variant_image
                WHERE variant_id = v.id
           )
        WHERE p.is_active = 1
          AND p.product_type_id = :typeId
        ORDER BY p.id DESC
        LIMIT :limit OFFSET :offset
    """)
                        .bind("typeId", productTypeId)
                        .bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(ProductCard.class)
                        .list()
        );
    }
    public int countProductByType(int productTypeId) {
        return get().withHandle(h ->
                h.createQuery("""
            SELECT COUNT(*) FROM product
            WHERE is_active = 1 AND product_type_id = :typeId
        """)
                        .bind("typeId", productTypeId)
                        .mapTo(int.class)
                        .one()
        );
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
                        SELECT id,product_id, color, size, price, stock
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
    }

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

    public int insertProduct(Product product) {

        String sql = """
        INSERT INTO product (
            brand_id,
            collection_id,
            sport_id,
            product_name,
            product_infor,
            product_car_instruction,
            product_return_infor,
            product_gender,
            enter_date,
            product_type_id
        ) VALUES (
            :brandId,
            :collectionId,
            :sportId,
            :productName,
            :productInfor,
            :productCareInstruction,
            :productReturnInfor,
            :productGender,
            NOW(),
            :productTypeId
        )
    """;

        return get().withHandle(handle ->
                handle.createUpdate(sql)
                        .bind("brandId", product.getBrand().getId())
                        .bind("collectionId",
                                product.getCollection() != null ? product.getCollection().getId() : null)
                        .bind("sportId",
                                product.getSport() != null ? product.getSport().getId() : null)
                        .bind("productName", product.getName())
                        .bind("productInfor", product.getProductInfor())
                        .bind("productCareInstruction", product.getProductCareInstruction())
                        .bind("productReturnInfor", product.getProductReturnInfor())
                        .bind("productGender", product.getProductGender())
                        .bind("productTypeId", product.getProductType().getId())
                        .executeAndReturnGeneratedKeys("id")
                        .mapTo(int.class)
                        .one()
        );
    }


}
