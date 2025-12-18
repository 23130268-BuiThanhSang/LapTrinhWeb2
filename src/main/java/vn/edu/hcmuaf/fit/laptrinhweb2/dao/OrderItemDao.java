package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.OrderItem;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;

import java.util.*;

public class OrderItemDao {
    private static Map<Integer, List<OrderItem>> orderItemMap = new HashMap<>();
    public List<OrderItem> getByOrderId(int orderId) {
        return orderItemMap.getOrDefault(orderId, new ArrayList<>());
    }
    public void addOrderItem(int orderId, OrderItem item) {
        List<OrderItem> items = orderItemMap.get(orderId);
        if (items == null) {
            items = new ArrayList<>();
        }
        item.setOrderId(orderId);
        items.add(item);
        orderItemMap.put(orderId, items);
    }
}

