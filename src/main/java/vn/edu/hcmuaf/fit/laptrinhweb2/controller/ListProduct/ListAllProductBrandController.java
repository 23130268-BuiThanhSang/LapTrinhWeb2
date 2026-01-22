package vn.edu.hcmuaf.fit.laptrinhweb2.controller.ListProduct;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductCardService;

import java.io.IOException;

@WebServlet(name = "ListAllProductBrandController", value = "/ListProductBrand")
public class ListAllProductBrandController extends HttpServlet {
    ProductCardService productCardService = new ProductCardService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("PageAllProductBrand.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}