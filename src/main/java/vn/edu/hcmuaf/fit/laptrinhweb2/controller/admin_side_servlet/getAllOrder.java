package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.OrderDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "getAllOrder", value = "/getAllOrder")
public class getAllOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        OrderDao orderDAO = new OrderDao();

        List<Order> orders = orderDAO.getAll();
        // or getTodayOrders() later

        request.setAttribute("orders", orders);
        request.getRequestDispatcher("manageOrder.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}