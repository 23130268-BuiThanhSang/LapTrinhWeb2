package vn.edu.hcmuaf.fit.laptrinhweb2.dao;

import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.util.*;

public class OrderDao {

    private static Map<Integer, Order> orderMap = new HashMap<>();
    private static int autoId = 1;

    public List<Order> getAll() {
        return new ArrayList<>(orderMap.values());
    }

    public Order getById(int id) {
        return orderMap.get(id);
    }

    public int create(Order order) {
        order.setId(autoId++);
        orderMap.put(order.getId(), order);
        return order.getId();
    }
}

