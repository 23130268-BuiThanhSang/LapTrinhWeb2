package vn.edu.hcmuaf.fit.laptrinhweb2.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/ProductMainPage")
public class ProductMainPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = 1; // mặc định

        String idRaw = request.getParameter("id");
        if (idRaw != null) {
            try {
                id = Integer.parseInt(idRaw);
            } catch (NumberFormatException e) {
                id = 1;
            }
        }

        ProductDao dao = new ProductDao();
        Product product = dao.getProduct(id);
        String ratingRaw = request.getParameter("rating");
        Integer rating = null;

        if (product == null) {
            response.sendRedirect("Home");
            return;
        }

        if (ratingRaw != null && !ratingRaw.isEmpty()) {
            rating = Integer.parseInt(ratingRaw);
        }

        List<ProductReview> reviews = dao.getReviewsByProduct(id, rating);

        request.setAttribute("reviews", reviews);
        int totalReviewCount = dao.countReviewsByProduct(id);

        request.setAttribute("reviewCount", totalReviewCount);

        request.setAttribute("selectedRating", rating);
        request.setAttribute("isLogin",
                request.getSession().getAttribute("auth") != null);
        request.setAttribute("product", product);

        request.getRequestDispatcher("/ProductMainPage.jsp")
                .forward(request, response);
    }
}

