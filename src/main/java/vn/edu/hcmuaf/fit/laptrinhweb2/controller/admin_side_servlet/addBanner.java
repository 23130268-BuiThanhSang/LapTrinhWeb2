package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Banner;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.BannerService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "addBanner", value = "/addBanner")
public class addBanner extends HttpServlet {
    private final BannerService bannerService = new BannerService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        Banner banner = new Banner();
        banner.setTargetUrl(request.getParameter("target_url"));
        banner.setImageUrl(request.getParameter("image_url"));
        banner.setDisplayOrder(
                Integer.parseInt(request.getParameter("display_order"))
        );
        banner.setActive(
                "1".equals(request.getParameter("is_active"))
        );

        bannerService.addBanner(banner);

        // PRG pattern
        response.sendRedirect(request.getContextPath() + "/admin/banners");
    }
}