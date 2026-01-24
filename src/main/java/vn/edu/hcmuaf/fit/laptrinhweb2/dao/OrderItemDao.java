package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.OrderItem;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductVariant;

import java.util.List;

public class OrderItemDao extends BaseDao {

    private final ProductDao productDao = new ProductDao();
    private final ProductVariantDao productVariantDao = new ProductVariantDao();
    public List<OrderItem> getByOrderId(int orderId) {
        return get().withHandle(handle ->
                handle.createQuery("SELECT * FROM order_detail WHERE order_id = :orderId")
                        .bind("orderId", orderId)
                        .map((rs, ctx) -> {
                            OrderItem item = new OrderItem();
                            item.setId(rs.getInt("id"));
                            item.setOrderId(rs.getInt("order_id"));

                            int variantId = rs.getInt("variant_id");
                            ProductVariant productVariant = productVariantDao.getById(variantId);
                            Product product = productDao.getProduct(productVariant.getProduct_id());
                            item.setProduct(product);
                            item.setColor(productVariant.getColor());
                            int fake_size = productVariant.getSize();
                            String real_size = String.valueOf(fake_size);
                            switch (fake_size) {
                                case -1: real_size = "Free Size"; break;
                                case 1: real_size = "S"; break;
                                case 2: real_size = "M"; break;
                                case 3: real_size = "L"; break;
                                case 4: real_size = "XL"; break;
                                case 5: real_size = "XXL"; break;
                                case 100: real_size = "Nhỏ"; break;
                                case 200: real_size = "Vừa"; break;
                                case 300: real_size = "Lớn"; break;
                            }
                            item.setSize(real_size);
                            item.setQuantity(rs.getInt("quantity"));
                            item.setPrice(rs.getDouble("price"));

                            return item;
                        })
                        .list()
        );
    }
}
