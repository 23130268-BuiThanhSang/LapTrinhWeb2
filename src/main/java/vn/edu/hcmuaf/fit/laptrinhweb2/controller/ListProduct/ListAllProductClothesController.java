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
        String pageParam = request.getParameter("page");
        if (pageParam != null) {
            try { page = Integer.parseInt(pageParam); } catch (Exception ignored) {}
        }

        /**
         * thực hiện lấy tham số từ filter
         */
        String color = request.getParameter("color");
        String gender = request.getParameter("gender");
        String brandIdStr = request.getParameter("brandId");
        Integer brandId = (brandIdStr != null && !brandIdStr.isEmpty()) ? Integer.parseInt(brandIdStr) : null;
        String sizeStr = request.getParameter("size");
        Integer size = (sizeStr != null && !sizeStr.isEmpty()) ? Integer.parseInt(sizeStr) : null;
        request.setAttribute("size", size);

        /**
         * thực hiện gọi xuống service để lấy danh sách sản phẩm theo filter
         */
        List<ProductCard> products = productCardService.getProductCardsByTypeAndFilter(
                productTypeId, page, color, gender, brandId, size);

        int totalPages = productCardService.getTotalPagesByTypeAndFilter(
                productTypeId, color, gender, brandId, size);

        /**
         * truyền dữ liệu lên jsp
         */
        request.setAttribute("products", products);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", page);

        /**
         * truyền lại các tham số filter để giữ trạng thái lọc trên giao diện
         */
        request.setAttribute("color", color);
        request.setAttribute("gender", gender);
        request.setAttribute("brandId", brandId);
        request.setAttribute("size", size);

        request.getRequestDispatcher("PageAllProductClothes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}