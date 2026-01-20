package vn.edu.hcmuaf.fit.laptrinhweb2.controller.cart;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.cart.Cart;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductService;

import java.io.IOException;

@WebServlet(name = "addToCart", value = "/addToCart")
public class addToCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("q"));
        ProductService ps = new ProductService();
        Product product = ps.getProduct(id);
        if (product == null) {
            response.sendRedirect("????");  //!!!!
            return;
        }
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }
//        cart.addItem(product, quantity);
        session.setAttribute("cart", cart);
        response.sendRedirect("????");  //!!!!
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}