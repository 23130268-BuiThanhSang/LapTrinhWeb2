package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.OrderService;

import java.io.IOException;

@WebServlet(name = "updateOrder", value = "/updateOrder")
public class updateOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("orderId");
        String status = request.getParameter("status");
        OrderService orderService = new OrderService();
        if (idParam == null || status == null) {
            response.sendRedirect("servlet_getOrder?action=all");
            return;
        }

        int orderId;
        try {
            orderId = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            response.sendRedirect("servlet_getOrder?action=all");
            return;
        }
        System.out.println(status);
        orderService.updateStatus(orderId, status);
        response.sendRedirect("page_orderDetail?orderId=" + orderId);
    }
}