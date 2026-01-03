package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Banner;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.BannerService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "getAllBanner", value = "/getAllBanner")
public class getAllBanner extends HttpServlet {
    private final BannerService bannerService = new BannerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Banner> banners = bannerService.getAllBanners();
        request.setAttribute("banners", banners);
        request.getRequestDispatcher("manageUI.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}