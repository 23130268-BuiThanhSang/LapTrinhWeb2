package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.Product.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.OrderItem;
import vn.edu.hcmuaf.fit.laptrinhweb2.Product.Product;

import java.util.List;

public class OrderItemDao extends BaseDao {

    private final ProductDao productDao = new ProductDao();

    public List<OrderItem> getByOrderId(int orderId) {
        return get().withHandle(handle ->
                handle.createQuery("SELECT * FROM order_detail WHERE order_id = :orderId")
                        .bind("orderId", orderId)
                        .map((rs, ctx) -> {
                            OrderItem item = new OrderItem();
                            item.setId(rs.getInt("id"));
                            item.setOrderId(rs.getInt("order_id"));

                            int variantId = rs.getInt("variant_id");
                            Product product = productDao.getProduct(variantId);
                            item.setProduct(product);

                            item.setQuantity(rs.getInt("quantity"));
                            item.setPrice(rs.getDouble("price"));

                            return item;
                        })
                        .list()
        );
    }
}
