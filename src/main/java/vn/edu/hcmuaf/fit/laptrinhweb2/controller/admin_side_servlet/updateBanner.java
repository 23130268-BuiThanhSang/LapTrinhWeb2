package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Banner;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.BannerService;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ImageService;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "updateBanner", value = "/updateBanner")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,
        maxFileSize = 5 * 1024 * 1024,
        maxRequestSize = 10 * 1024 * 1024
)
public class updateBanner extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));

        BannerService bannerService = new BannerService();
        ImageService imageService = new ImageService();
        if ("update".equals(action)) {

            String targetUrl = request.getParameter("targetUrl");
            int displayOrder = Integer.parseInt(request.getParameter("displayOrder"));
            boolean isActive = request.getParameter("isActive") != null;

            Banner oldBanner = bannerService.getById(id);

            String imageUrl = oldBanner.getImageUrl();

            Part imagePart = request.getPart("newBannerImage");
            if (imagePart != null && imagePart.getSize() > 0) {
                imageUrl = imageService.uploadImage(null, imagePart);
            }

            Banner banner = new Banner();
            banner.setId(id);
            banner.setTargetUrl(targetUrl);
            banner.setDisplayOrder(displayOrder);
            banner.setActive(isActive);
            banner.setImageUrl(imageUrl);
            bannerService.update(banner);
            response.sendRedirect("page_bannerDetail?id=" + id);
            return;
        }


        if ("delete".equals(action)) {
            bannerService.delete(id);
            response.sendRedirect("getAllBanner");
        }
    }

}