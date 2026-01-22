package vn.edu.hcmuaf.fit.laptrinhweb2.controller.ListProduct;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductCardService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAllProductMachineGymController", value = "/ListMachineGym")
public class ListAllProductMachineGymController extends HttpServlet {
    ProductCardService productCardService = new ProductCardService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productTypeId = 1;
        int page = 1;
        List<ProductCard> products = productCardService.getProductCardsByType(productTypeId, page);
        request.setAttribute("products", products);
        request.getRequestDispatcher("PageAllProductMachineGym.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}