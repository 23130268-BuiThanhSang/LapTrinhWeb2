package vn.edu.hcmuaf.fit.laptrinhweb2.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.cart.Cart;

import java.io.IOException;

@WebServlet(name = "delFromCart", value = "/delFromCart")
public class delFromCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Cart cart = (Cart) request.getSession().getAttribute("cart");
        cart.delAll(id);
        response.sendRedirect("????");  //!!!!
    }
}