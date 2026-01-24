package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Order;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.OrderService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "servlet_getOrder", value = "/servlet_getOrder")
public class getOrderList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        OrderService orderService = new OrderService();
        String action = request.getParameter("action");

        List<Order> orders;

        // ===== DEFAULT: TODAY =====
        if (action == null || action.equals("today")) {

            orders = orderService.getToday();
            request.setAttribute("orders", orders);
            request.getRequestDispatcher("manageOrder.jsp")
                    .forward(request, response);
            return;
        }

        // ===== ALL ORDERS =====
        if (action.equals("all")) {
            orders = orderService.getAll();
            request.setAttribute("orders", orders);
            request.getRequestDispatcher("manageOrder_AllOrders.jsp")
                    .forward(request, response);
            return;
        }

        // ===== FILTER =====
        if (action.equals("filter")) {
            String dayStr = request.getParameter("day");
            Integer day = null;
            if (dayStr != null && !dayStr.isBlank()) {
                day = Integer.parseInt(dayStr);
            }

            String monthStr = request.getParameter("month");
            Integer month = null;
            if (monthStr != null && !monthStr.isBlank()) {
                month = Integer.parseInt(monthStr);
            }

            String yearStr = request.getParameter("year");
            Integer year = null;
            if (yearStr != null && !yearStr.isBlank()) {
                year = Integer.parseInt(yearStr);
            }

            String status = request.getParameter("status");
            if (status == null || status.isBlank() || "all".equals(status)) {
                status = null;
            }


            orders = orderService.getByFilter(day, month, year, status);

            request.setAttribute("orders", orders);
            request.setAttribute("day", day);
            request.setAttribute("month", month);
            request.setAttribute("year", year);
            request.setAttribute("status", status);

            request.getRequestDispatcher("manageOrder_AllOrders.jsp")
                    .forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
