package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.enum_macro.GroupType;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.ProductGroupService;

import java.io.IOException;

@WebServlet(name = "servlet_addProductGroup", value = "/servlet_addProductGroup")
public class addProductGroup extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        try {
            String groupTypeRaw = request.getParameter("group_type");
            String groupName = request.getParameter("group_name");
            String thumbnailUrl = request.getParameter("thumbnail_url");
            String imageUrl = request.getParameter("image_url");
            String displayOrderRaw = request.getParameter("display_order");

            if (groupTypeRaw == null || groupName == null || groupName.trim().isEmpty()) {
                response.sendRedirect("manage-product.jsp?error=missing_data");
                return;
            }

            int displayOrder = 1;
            if (displayOrderRaw != null && !displayOrderRaw.isEmpty()) {
                displayOrder = Integer.parseInt(displayOrderRaw);
            }
            GroupType groupType;
            switch (groupTypeRaw) {
                case "thuong_hieu":
                    groupType = GroupType.BRAND;
                    break;
                case "bo_suu_tap":
                    groupType = GroupType.COLLECTION;
                    break;
                case "mon_the_thao":
                    groupType = GroupType.SPORT;
                    break;
                default:
                    response.sendRedirect("manage-product.jsp?error=invalid_group_type");
                    return;
            }

            ProductGroupService service = new ProductGroupService();
            service.addGroup(groupType, groupName, thumbnailUrl, imageUrl, displayOrder);

            response.sendRedirect("ManageProduct.jsp?success=add_group");

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("ManageProduct.jsp?error=server_error");
        }
    }
}
