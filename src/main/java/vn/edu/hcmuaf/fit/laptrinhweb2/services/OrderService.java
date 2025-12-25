package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.OrderDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.util.List;

public class OrderService {

    private OrderDao orderDao = new OrderDao();

    public List<Order> getAllOrders() {
        return orderDao.getAll();
    }

    public Order getOrder(int id) {
        return orderDao.getById(id);
    }

//    public int createOrder(Order order) {
//        return orderDao.create(order);
//    }
}

