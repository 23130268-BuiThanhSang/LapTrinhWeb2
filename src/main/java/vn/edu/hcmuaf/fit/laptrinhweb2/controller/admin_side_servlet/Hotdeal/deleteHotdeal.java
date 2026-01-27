package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet.Hotdeal;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.HotDealService;

import java.io.IOException;

@WebServlet(name = "deleteHotdeal", value = "/deleteHotdeal")
public class deleteHotdeal extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        HotDealService hotDealService = new HotDealService();
        if (idParam != null) {
            try {
                int id = Integer.parseInt(idParam);
                hotDealService.deleteHotDeal(id);
            } catch (NumberFormatException ignored) {
            }
        }

        response.sendRedirect(request.getContextPath() + "/page_manageHotdeal");
    }
}