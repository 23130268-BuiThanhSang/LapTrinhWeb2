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
    /**
     * lấy danh sách ProductCard chưa lọc
     * hiện tại có thể bỏ đi nhưng để dành cho trang khác có thể sử dụng
     * @param limit
     * @param offset
     * @return
     */
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
                                    ORDER BY p.id DESC
                                    LIMIT :limit OFFSET :offset
                                """)
                        .bind("limit", limit)
                        .bind("offset", offset)
                        .mapToBean(ProductCard.class)
                        .list()
        );
    }

    /**
     * `Lấy danh sách ProductCard theo loại sản phẩm
     * hiện tại có thể bỏ đi nhưng để dành cho trang khác có thể sử dụng
     * @param productTypeId
     * @param limit
     * @param offset
     * @return
     */
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
                                    WHERE  p.product_type_id = :typeId
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

    /**
     * đếm số lượng sản phẩm theo loại sản phẩm nhằm mục đích phân trang
     * có thể bỏ đi nhưng để dành cho trang khác có thể sử dụng
     * @param productTypeId
     * @return
     */
    public int countProductByType(int productTypeId) {
        return get().withHandle(h ->
                h.createQuery("""
                                    SELECT COUNT(*) FROM product
                                    WHERE product_type_id = :typeId
                                """)
                        .bind("typeId", productTypeId)
                        .mapTo(int.class)
                        .one()
        );
    }


    /**
     * Lấy danh sách ProductCard theo loại sản phẩm và bộ lọc
     * có thể bỏ đi những để dành cho trang khác sử dụng
     * @param productTypeId
     * @param limit
     * @param offset
     * @param color
     * @param gender
     * @param brandId
     * @param size
     * @return
     */
    public List<ProductCard> getProductCardByTypeAndFilter(
            int productTypeId, int limit, int offset,
            String color, String gender, Integer brandId, Integer size) {

        StringBuilder sql = new StringBuilder("""
                SELECT 
                    p.id,
                    p.product_name      AS name,
                    b.name              AS brandName,
                    v.price             AS price,
                    hd.discount_per     AS discountPercent,
                    img.image_url       AS imageUrl
                FROM product p
                JOIN brand b ON p.brand_id = b.id
                JOIN product_variant v ON v.product_id = p.id AND v.id = (
                    SELECT MIN(v2.id) FROM product_variant v2 WHERE v2.product_id = p.id
                )
                LEFT JOIN hot_deal hd ON p.hot_deal_id = hd.id
                LEFT JOIN product_variant_image img ON img.variant_id = v.id AND img.id = (
                    SELECT MIN(img2.id) FROM product_variant_image img2 WHERE img2.variant_id = v.id
                )
                WHERE p.product_type_id = :typeId
                """);

        /**
         * Dùng EXISTS để đảm bảo chỉ lấy product nếu có ít nhất 1 variant
         */
        sql.append("""
                  AND EXISTS (
                      SELECT 1 FROM product_variant vfilter
                      WHERE vfilter.product_id = p.id
                """);
        if (color != null && !color.isEmpty()) sql.append(" AND vfilter.color = :color ");
        if (size != null) sql.append(" AND vfilter.size = :size ");
        if (brandId != null) sql.append(" AND vfilter.brand_id = :brandId ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");

        sql.append("""
                 ORDER BY p.id DESC
                 LIMIT :limit OFFSET :offset
                """);

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString())
                    .bind("typeId", productTypeId)
                    .bind("limit", limit)
                    .bind("offset", offset);

            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);
            if (brandId != null) query.bind("brandId", brandId);
            if (size != null) query.bind("size", size);

            return query.mapToBean(ProductCard.class).list();
        });
    }

    /**
     * đây là phương thức thực hiện đếm số sản phẩm theo bộ lọc
     * có thể bỏ đi những để dành cho trang khác sử dụng
     * @param productTypeId
     * @param color
     * @param gender
     * @param brandId
     * @param size
     * @return
     */
    public int countProductByTypeAndFilter(
            int productTypeId,
            String color, String gender, Integer brandId, Integer size
    ) {
        StringBuilder sql = new StringBuilder("""
                    SELECT COUNT(*) FROM product p
                    JOIN brand b ON p.brand_id = b.id
                    WHERE p.product_type_id = :typeId
                """);

        /**
         * Dùng EXISTS để đảm bảo chỉ lấy product nếu có ít nhất 1 variant
         */
        sql.append("""
                  AND EXISTS (
                    SELECT 1 FROM product_variant v
                    WHERE v.product_id = p.id
                """);

        if (color != null && !color.isEmpty()) sql.append(" AND v.color = :color ");
        if (size != null) sql.append(" AND v.size = :size ");
        if (brandId != null) sql.append(" AND v.brand_id = :brandId ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString())
                    .bind("typeId", productTypeId);
            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);
            if (brandId != null) query.bind("brandId", brandId);
            if (size != null) query.bind("size", size);
            return query.mapTo(int.class).one();
        });
    }

    /**
     * Lấy danh sách sản phẩm (toàn bộ hoặc theo loại) cho phép filter/tìm kiếm
     * phương thức quan trọng dùng cho trang tất cả sản phẩm
     * @param productTypeId
     * @param limit
     * @param offset
     * @param keyword
     * @param color
     * @param gender
     * @param brandId
     * @param collectionId
     * @param size
     * @return
     */
    public List<ProductCard> getProductCardsByFullFilter(
            Integer productTypeId,
            int limit,
            int offset,
            String keyword,
            String color,
            String gender,
            Integer brandId,
            Integer collectionId,
            Integer size
    ) {
        StringBuilder sql = new StringBuilder("""
        SELECT 
            p.id,
            p.product_name      AS name,
            b.name              AS brandName,
            v.price             AS price,
            hd.discount_per     AS discountPercent,
            img.image_url       AS imageUrl,
            (DATEDIFF(NOW(), p.enter_date) <= 10) AS isNewProduct
        FROM product p
        JOIN brand b ON p.brand_id = b.id
        JOIN product_variant v ON v.product_id = p.id
            AND v.id = (
                SELECT MIN(v2.id)
                FROM product_variant v2
                WHERE v2.product_id = p.id
            )
        LEFT JOIN hot_deal hd ON p.hot_deal_id = hd.id
        LEFT JOIN product_variant_image img ON img.variant_id = v.id
            AND img.id = (
                SELECT MIN(img2.id)
                FROM product_variant_image img2
                WHERE img2.variant_id = v.id
            )
        WHERE 1=1
    """);

        if (productTypeId != null) sql.append(" AND p.product_type_id = :typeId ");
        if (keyword != null && !keyword.isBlank()) sql.append(" AND p.product_name LIKE :keyword ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");
        if (collectionId != null) sql.append(" AND p.collection_id = :collectionId ");

        sql.append("""
        AND EXISTS (
            SELECT 1 FROM product_variant vf
            WHERE vf.product_id = p.id
            AND vf.stock > 0
    """);
        if (color != null && !color.isEmpty()) sql.append(" AND vf.color = :color ");
        if (size != null) sql.append(" AND vf.size = :size ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");

        sql.append("""
        ORDER BY p.id DESC
        LIMIT :limit OFFSET :offset
    """);

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString())
                    .bind("limit", limit)
                    .bind("offset", offset);

            if (productTypeId != null) query.bind("typeId", productTypeId);
            if (keyword != null && !keyword.isBlank()) query.bind("keyword", "%" + keyword + "%");
            if (brandId != null) query.bind("brandId", brandId);
            if (collectionId != null) query.bind("collectionId", collectionId);
            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (size != null) query.bind("size", size);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);

            return query.mapToBean(ProductCard.class).list();
        });
    }

    /**
     * Đếm số lượng sản phẩm (toàn bộ hoặc theo loại) cho phép filter/tìm kiếm
     * phương thức quan trọng dùng cho trang tất cả sản phẩm phục vụ phân trang
     * @param productTypeId
     * @param keyword
     * @param color
     * @param gender
     * @param brandId
     * @param collectionId
     * @param size
     * @return
     */
    public int countProductByFullFilter(
            Integer productTypeId,
            String keyword,
            String color,
            String gender,
            Integer brandId,
            Integer collectionId,
            Integer size
    ) {
        StringBuilder sql = new StringBuilder("""
        SELECT COUNT(*) FROM product p
        JOIN brand b ON p.brand_id = b.id
        WHERE 1=1
    """);

        if (productTypeId != null) sql.append(" AND p.product_type_id = :typeId ");
        if (keyword != null && !keyword.isBlank()) sql.append(" AND p.product_name LIKE :keyword ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");
        if (collectionId != null) sql.append(" AND p.collection_id = :collectionId ");

        sql.append("""
        AND EXISTS (
            SELECT 1 FROM product_variant v
            WHERE v.product_id = p.id
            AND v.stock > 0
    """);
        if (color != null && !color.isEmpty()) sql.append(" AND v.color = :color ");
        if (size != null) sql.append(" AND v.size = :size ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString());

            if (productTypeId != null) query.bind("typeId", productTypeId);
            if (keyword != null && !keyword.isBlank()) query.bind("keyword", "%" + keyword + "%");
            if (brandId != null) query.bind("brandId", brandId);
            if (collectionId != null) query.bind("collectionId", collectionId);
            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (size != null) query.bind("size", size);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);

            return query.mapTo(int.class).one();
        });
    }

    /**
     * Lấy danh sách sản phẩm mới (toàn bộ hoặc theo loại) cho phép filter/tìm kiếm
     * phương thức quan trọng dùng cho trang san phẩm mới
     * @param productTypeId
     * @param limit
     * @param offset
     * @param keyword
     * @param color
     * @param gender
     * @param brandId
     * @param collectionId
     * @param size
     * @return
     */
    public List<ProductCard> getNewProductCardsByFullFilter(
            Integer productTypeId,
            int limit,
            int offset,
            String keyword,
            String color,
            String gender,
            Integer brandId,
            Integer collectionId,
            Integer size
    ) {
        StringBuilder sql = new StringBuilder("""
        SELECT 
            p.id,
            p.product_name      AS name,
            b.name              AS brandName,
            v.price             AS price,
            hd.discount_per     AS discountPercent,
            img.image_url       AS imageUrl,
            (DATEDIFF(NOW(), p.enter_date) <= 10) AS isNewProduct
        FROM product p
        JOIN brand b ON p.brand_id = b.id
        JOIN product_variant v ON v.product_id = p.id
            AND v.id = (
                SELECT MIN(v2.id)
                FROM product_variant v2
                WHERE v2.product_id = p.id
            )
        LEFT JOIN hot_deal hd ON p.hot_deal_id = hd.id
        LEFT JOIN product_variant_image img ON img.variant_id = v.id
            AND img.id = (
                SELECT MIN(img2.id)
                FROM product_variant_image img2
                WHERE img2.variant_id = v.id
            )
        WHERE 1=1
    """);

        if (productTypeId != null) sql.append(" AND p.product_type_id = :typeId ");
        if (keyword != null && !keyword.isBlank()) sql.append(" AND p.product_name LIKE :keyword ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");
        if (collectionId != null) sql.append(" AND p.collection_id = :collectionId ");
        sql.append(" AND DATEDIFF(NOW(), p.enter_date) <= 10 ");
        sql.append("""
        AND EXISTS (
            SELECT 1 FROM product_variant vf
            WHERE vf.product_id = p.id
            AND vf.stock > 0
    """);
        if (color != null && !color.isEmpty()) sql.append(" AND vf.color = :color ");
        if (size != null) sql.append(" AND vf.size = :size ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");

        sql.append("""
        ORDER BY p.id DESC
        LIMIT :limit OFFSET :offset
    """);

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString())
                    .bind("limit", limit)
                    .bind("offset", offset);

            if (productTypeId != null) query.bind("typeId", productTypeId);
            if (keyword != null && !keyword.isBlank()) query.bind("keyword", "%" + keyword + "%");
            if (brandId != null) query.bind("brandId", brandId);
            if (collectionId != null) query.bind("collectionId", collectionId);
            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (size != null) query.bind("size", size);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);

            return query.mapToBean(ProductCard.class).list();
        });
    }

    /**
     * Đếm số lượng sản phẩm mới (toàn bộ hoặc theo loại) cho phép filter/tìm kiếm
     * phương thức quan trọng dùng cho trang sản phẩm mới phục vụ phân trang
     * @param productTypeId
     * @param keyword
     * @param color
     * @param gender
     * @param brandId
     * @param collectionId
     * @param size
     * @return
     */
    public int countNewProductByFullFilter(
            Integer productTypeId,
            String keyword,
            String color,
            String gender,
            Integer brandId,
            Integer collectionId,
            Integer size
    ) {
        StringBuilder sql = new StringBuilder("""
        SELECT COUNT(*) FROM product p
        JOIN brand b ON p.brand_id = b.id
        WHERE 1=1
    """);

        if (productTypeId != null) sql.append(" AND p.product_type_id = :typeId ");
        if (keyword != null && !keyword.isBlank()) sql.append(" AND p.product_name LIKE :keyword ");
        if (brandId != null) sql.append(" AND b.id = :brandId ");
        if (collectionId != null) sql.append(" AND p.collection_id = :collectionId ");
        sql.append(" AND DATEDIFF(NOW(), p.enter_date) <= 10 ");
        sql.append("""
        AND EXISTS (
            SELECT 1 FROM product_variant v
            WHERE v.product_id = p.id
            AND v.stock > 0
    """);
        if (color != null && !color.isEmpty()) sql.append(" AND v.color = :color ");
        if (size != null) sql.append(" AND v.size = :size ");
        sql.append(") ");

        if (gender != null && !gender.isEmpty()) sql.append(" AND p.product_gender = :gender ");

        return get().withHandle(h -> {
            var query = h.createQuery(sql.toString());

            if (productTypeId != null) query.bind("typeId", productTypeId);
            if (keyword != null && !keyword.isBlank()) query.bind("keyword", "%" + keyword + "%");
            if (brandId != null) query.bind("brandId", brandId);
            if (collectionId != null) query.bind("collectionId", collectionId);
            if (color != null && !color.isEmpty()) query.bind("color", color);
            if (size != null) query.bind("size", size);
            if (gender != null && !gender.isEmpty()) query.bind("gender", gender);

            return query.mapTo(int.class).one();
        });
    }

    /**
     * Lấy thông tin chi tiết sản phẩm theo id
     * @param id
     * @return
     */
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
    public double getAverageRatingByProduct(int productId) {
        return get().withHandle(h ->
                h.createQuery("""
                    SELECT COALESCE(AVG(rating), 0)
                    FROM product_review
                    WHERE product_id = :pid
                """).bind("pid", productId).mapTo(double.class).one()
        );
    }


}
