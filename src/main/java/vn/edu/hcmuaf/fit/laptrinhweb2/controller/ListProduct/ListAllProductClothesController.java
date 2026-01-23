package vn.edu.hcmuaf.fit.laptrinhweb2.controller.ListProduct;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.ProductCard;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.ProductGroup;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductCardService;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductGroupService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListAllProductClothesController", value = "/ListProductClothes")
public class ListAllProductClothesController extends HttpServlet {
    ProductCardService productCardService = new ProductCardService();
    ProductGroupService productGroupService = new ProductGroupService();

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
         * thực hiện lấy tham số từ ô search
         */
        String keyword = request.getParameter("keyword");
        if (keyword != null) {
            keyword = keyword.trim();
        }

        /**
         * thực hiện gọi xuống service để lấy danh sách sản phẩm theo filter va search
         */
        List<ProductCard> products = productCardService.getProductCardsByTypeFilterAndSearch( productTypeId, page, keyword, color, gender, brandId, size);

        int totalPages = productCardService.getTotalPagesByTypeFilterAndSearch( productTypeId, keyword, color, gender, brandId, size);

        /**
         * truyền dữ liệu lên jsp
         */
        request.setAttribute("products", products);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", page);

        /**
         * truyền lại các tham số filter để giữ trạng thái lọc trên giao diện và search
         */
        request.setAttribute("keyword", keyword);
        request.setAttribute("color", color);
        request.setAttribute("gender", gender);
        request.setAttribute("brandId", brandId);
        request.setAttribute("size", size);
        /**
         * lấy danh sách brand để hiển thị trên filter
         */
        List<ProductGroup> brands = productGroupService.getGroups(GroupType.BRAND);
        request.setAttribute("brands", brands);
        request.getRequestDispatcher("PageAllProductClothes.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}