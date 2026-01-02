package vn.edu.hcmuaf.fit.laptrinhweb2.services;

import vn.edu.hcmuaf.fit.laptrinhweb2.dao.OrderDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class OrderService {

    private OrderDao orderDao = new OrderDao();

    public List<Order> getAll() {
        return orderDao.getAll();
    }

    public Order getOrder(int id) {
        return orderDao.getById(id);
    }

    public List<Order> getToday() {
        List<Order> orders = orderDao.getAll();
        List<Order> result = new ArrayList<>();

        Calendar today = Calendar.getInstance();

        for (Order o : orders) {
            Calendar orderCal = Calendar.getInstance();
            orderCal.setTime(o.getOrderDate());

            if (orderCal.get(Calendar.DAY_OF_MONTH) == today.get(Calendar.DAY_OF_MONTH)
                    && orderCal.get(Calendar.MONTH) == today.get(Calendar.MONTH)
                    && orderCal.get(Calendar.YEAR) == today.get(Calendar.YEAR)) {

                result.add(o);
            }
        }
        return result;
    }
    public List<Order> getByFilter(
            Integer day,
            Integer month,
            Integer year,
            String status
    ) {
        List<Order> orders = orderDao.getAll();
        List<Order> result = new ArrayList<>();

        for (Order o : orders) {
            Calendar cal = Calendar.getInstance();
            cal.setTime(o.getOrderDate());

            if (day != null && cal.get(Calendar.DAY_OF_MONTH) != day) {
                continue;
            }

            if (month != null && cal.get(Calendar.MONTH) != (month - 1)) {
                continue;
            }

            if (year != null && cal.get(Calendar.YEAR) != year) {
                continue;
            }

            if (status != null && !"all".equals(status)
                    && !status.equalsIgnoreCase(o.getStatus())) {
                continue;
            }

            result.add(o);
        }

        return result;
    }

}

