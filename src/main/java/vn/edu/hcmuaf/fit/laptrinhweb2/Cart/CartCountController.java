package vn.edu.hcmuaf.fit.laptrinhweb2.Cart;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cart-count")
public class CartCountController extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {

        Cart cart = (Cart) req.getSession().getAttribute("cart");
        int count = (cart == null) ? 0 : cart.getTotalQuantity();

        resp.getWriter().print(count);
    }
}

