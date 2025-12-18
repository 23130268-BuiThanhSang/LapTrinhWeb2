package vn.edu.hcmuaf.fit.laptrinhweb2.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
    private int id;
    private int userId;
    private Date orderDate;
    private double totalPrice;
    private String status;
    private List<OrderItem> items;

    public Order() {
    }

    public Order(int id, int userId, Date orderDate,
                 double totalPrice, String status) {
        this.id = id;
        this.userId = userId;
        this.orderDate = orderDate;
        this.totalPrice = totalPrice;
        this.status = status;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public Date getOrderDate() { return orderDate; }
    public void setOrderDate(Date orderDate) { this.orderDate = orderDate; }

    public double getTotalPrice() { return totalPrice; }
    public void setTotalPrice(double totalPrice) { this.totalPrice = totalPrice; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public List<OrderItem> getItems() { return items; }
    public void setItems(List<OrderItem> items) { this.items = items; }
}

