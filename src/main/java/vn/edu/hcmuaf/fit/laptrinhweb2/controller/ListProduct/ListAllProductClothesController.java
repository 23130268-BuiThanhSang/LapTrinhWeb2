package vn.edu.hcmuaf.fit.laptrinhweb2.controller.ListProduct;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductCardService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAllProductClothesController", value = "/ListProductClothes")
public class ListAllProductClothesController extends HttpServlet {
    ProductCardService productCardService = new ProductCardService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productTypeId = 3;
        int page = 1;
        List<ProductCard> products = productCardService.getProductCardsByType(productTypeId, page);
        request.setAttribute("products", products);
        request.getRequestDispatcher("PageAllProductClothes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}