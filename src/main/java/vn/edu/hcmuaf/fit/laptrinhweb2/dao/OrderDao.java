package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import org.jdbi.v3.core.Jdbi;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.util.List;

public class OrderDao extends BaseDao {

    private final OrderItemDao orderItemDao = new OrderItemDao();

    public List<Order> getAll() {
        return get().withHandle(handle -> {

            List<Order> orders = handle
                    .createQuery("SELECT * FROM orders")
                    .map((rs, ctx) -> {
                        Order o = new Order();
                        o.setId(rs.getInt("id"));
                        o.setUserId(rs.getInt("user_id"));
                        o.setOrderDate(rs.getTimestamp("order_date"));
                        o.setTotalPrice(rs.getDouble("price"));
                        o.setStatus(rs.getString("order_status"));
                        return o;
                    })
                    .list();

            // attach order items
            for (Order o : orders) {
                o.setItems(orderItemDao.getByOrderId(o.getId()));
            }
            return orders;
        });
    }

    public Order getById(int id) {
        return get().withHandle(handle -> {
            Order order = handle
                    .createQuery("SELECT * FROM orders WHERE id = :id")
                    .bind("id", id)
                    .map((rs, ctx) -> {
                        Order o = new Order();
                        o.setId(rs.getInt("id"));
                        o.setUserId(rs.getInt("user_id"));
                        o.setOrderDate(rs.getTimestamp("order_date"));
                        o.setTotalPrice(rs.getDouble("price"));
                        o.setStatus(rs.getString("order_status"));
                        return o;
                    })
                    .findOne()
                    .orElse(null);

            if (order != null) {
                order.setItems(orderItemDao.getByOrderId(order.getId()));
            }
            return order;
        });
    }
}
