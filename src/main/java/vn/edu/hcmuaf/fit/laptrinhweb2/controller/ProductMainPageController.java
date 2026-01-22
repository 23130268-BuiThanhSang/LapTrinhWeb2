package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductReview;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/ProductMainPage")
public class ProductMainPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = 1;

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

        Map<Integer, String> sizeMap = new HashMap<>();

        product.getVariants().forEach(v -> {
            sizeMap.put(v.getSize(), getSizeText(v.getSize()));
        });

        double avgRating = dao.getAverageRatingByProduct(id);

        int fullStars = (int) avgRating;
        boolean hasHalfStar = (avgRating - fullStars) >= 0.5;

        request.setAttribute("avgRating", String.format("%.1f", avgRating));
        request.setAttribute("fullStars", fullStars);
        request.setAttribute("hasHalfStar", hasHalfStar);

        request.setAttribute("sizeMap", sizeMap);

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

    private String getSizeText(int sizeID) {
        switch (sizeID) {
            // Quần áo
            case 1: return "S";
            case 2: return "M";
            case 3: return "L";
            case 4: return "XL";
            case 5: return "XXL";

            // Giày (US)
            case 38: return "US 7";
            case 39: return "US 8";
            case 40: return "US 9";
            case 41: return "US 10";
            case 42: return "US 11";
            case 43: return "US 12";
        }

        // Tạ / kg (100 = 1kg, 150 = 1.5kg)
        if (sizeID >= 100) {
            if (sizeID % 100 == 0) {
                return (sizeID / 100) + "KG";
            } else {
                return (sizeID / 100.0) + "KG";
            }
        }

        return String.valueOf(sizeID);
    }

}


