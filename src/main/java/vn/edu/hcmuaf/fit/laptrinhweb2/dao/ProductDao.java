package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.core.statement.PreparedBatch;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariantImage;

import java.util.*;

public class ProductDao extends BaseDao{
    private static final String SQL =
            "SELECT p.id AS product_id, p.product_name, p.product_type, b.name AS brand_name, p.product_infor, " +
            "p.product_car_instruction, p.product_return_infor, p.product_gender, " +
            "v.id AS variant_id, v.color, v.size, v.price, v.stock, "+
            "i.id AS image_id, i.image_url " +
            "FROM product p " +
            "JOIN brand b ON p.brand_id = b.id " +
            "JOIN product_variant v ON p.id = v.product_id " +
            "LEFT JOIN product_variant_image i ON v.id = i.variant_id " +
            "WHERE p.id = :id " +
            "ORDER BY v.color ASC, v.size ASC, i.id ASC";


    static Map<Integer,Product> productMap = new HashMap<Integer,Product>();

    public List<Product> getAllProduct() {
        return get().withHandle(h -> h.createQuery("select * from product").mapToBean(Product.class).list());
    }

    public Product getProductMap(int id) {
        return productMap.get(id);
    }

    public Product getProduct(int id) {
        return get().withHandle(handle -> {

            Product product = null;
            Map<Integer, ProductVariant> variantMap = new LinkedHashMap<>();

            List<Map<String, Object>> rows = handle.createQuery(SQL)
                    .bind("id", id)
                    .mapToMap()
                    .list();

            for (Map<String, Object> row : rows) {

                if (product == null) {
                    product = new Product(
                            ((Number) row.get("product_id")).intValue(),
                            (String) row.get("product_name"),
                            (String) row.get("product_type"),
                            (String) row.get("brand_name"),
                            (String) row.get("product_infor"),
                            (String) row.get("product_car_instruction"),
                            (String) row.get("product_return_infor"),
                            (String) row.get("product_gender"),
                            new ArrayList<>()
                    );
                }

                int variantId = ((Number) row.get("variant_id")).intValue();

                ProductVariant variant = variantMap.get(variantId);
                if (variant == null) {
                    variant = new ProductVariant(
                            variantId,
                            (String) row.get("color"),
                            ((Number) row.get("size")).intValue(),
                            ((Number) row.get("price")).doubleValue(),
                            ((Number) row.get("stock")).intValue()
                    );
                    variantMap.put(variantId, variant);
                    product.getVariants().add(variant);
                }

                // image (LEFT JOIN nên phải check null)
                if (row.get("image_id") != null) {
                    ProductVariantImage img = new ProductVariantImage(
                            ((Number) row.get("image_id")).intValue(),
                            (String) row.get("image_url")
                    );
                    variant.getImages().add(img);
                }
            }

            return product;
        });
    }




    public void insertProduct(List<Product> products) {
        Jdbi jdbi= get();
        jdbi.useHandle(h-> {
//                                  createUpdate neu luu 1 product
            PreparedBatch batch = h.prepareBatch("insert into product values (:id,:name,:price,:img)");
            products.forEach(product -> {
                batch.bindBean(product).add();
            });
            batch.execute();
        });
    }

    public static void main(String[] args) {
        ProductDao dao = new ProductDao();
        dao.getAllProduct().forEach(System.out::println);
    }

}
