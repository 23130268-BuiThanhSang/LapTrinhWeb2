package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.OrderItemDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.OrderItem;

import java.util.List;

public class OrderItemService {

    private OrderItemDao orderItemDao = new OrderItemDao();

    public List<OrderItem> getOrderItems(int orderId) {
        return orderItemDao.getByOrderId(orderId);
    }

//    public void addOrderItem(int orderId, OrderItem item) {
//        orderItemDao.addOrderItem(orderId, item);
//    }
}

