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
    public List<Order> getToday() {
        return get().withHandle(handle -> {

            List<Order> orders = handle
                    .createQuery("""
                    SELECT *
                    FROM orders
                    WHERE DATE(order_date) = CURRENT_DATE
                """)
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


    public List<Order> getByFilter(Integer day, Integer month, Integer year, String status) {
        return get().withHandle(handle -> {

            StringBuilder sql = new StringBuilder(
                    "SELECT * FROM orders WHERE 1=1"
            );

            if (day != null) {
                sql.append(" AND DAY(order_date) = ?");
            }
            if (month != null) {
                sql.append(" AND MONTH(order_date) = ?");
            }
            if (year != null) {
                sql.append(" AND YEAR(order_date) = ?");
            }
            if (status != null && !status.equals("all")) {
                sql.append(" AND order_status = ?");
            }

            var query = handle.createQuery(sql.toString());

            int idx = 0;

            if (day != null) {
                query.bind(idx++, day);
            }
            if (month != null) {
                query.bind(idx++, month);
            }
            if (year != null) {
                query.bind(idx++, year);
            }
            if (status != null && !status.equals("all")) {
                query.bind(idx++, status);
            }

            List<Order> orders = query
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
