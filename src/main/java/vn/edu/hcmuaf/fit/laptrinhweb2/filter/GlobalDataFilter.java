package vn.edu.hcmuaf.fit.laptrinhweb2.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.MenuDAO;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;

import java.io.IOException;
import java.util.List;

// urlPatterns = "/*" nghĩa là request nào cũng phải đi qua đây
@WebFilter(filterName = "GlobalDataFilter", urlPatterns = "/*")
public class GlobalDataFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {
        // Hàm này chạy 1 lần khi server khởi động (thường để trống)
    }

    public void destroy() {
        // Hàm này chạy khi server tắt
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String path = httpRequest.getRequestURI();

        // --- TỐI ƯU HIỆU NĂNG ---
        // Nếu request là file tĩnh (ảnh, css, js...) thì CHO QUA LUÔN, không cần check DB làm gì cho nặng
        if (path.endsWith(".css") || path.endsWith(".js") || path.endsWith(".png") || path.endsWith(".jpg") || path.endsWith(".jpeg")) {
            chain.doFilter(request, response);
            return;
        }

        // --- XỬ LÝ LOGIC MENU ---
        HttpSession session = httpRequest.getSession();

        // Kiểm tra: Nếu trong Session chưa có biến "listMenu" -> Thì mới đi lấy
        if (session.getAttribute("listMenu") == null) {
            try {
                MenuDAO menuDao = new MenuDAO();
                List<MainMenu> listMenu = menuDao.getAllMenus();

                // Lưu vào Session (Dữ liệu sống xuyên suốt cho đến khi tắt trình duyệt)
                session.setAttribute("listMenu", listMenu);

                System.out.println("GlobalDataFilter: Đã load Menu vào Session thành công!");
            } catch (Exception e) {
                e.printStackTrace(); // In lỗi nếu DB trục trặc
            }
        }

        // --- CHO PHÉP ĐI TIẾP ---
        // Lệnh này cực quan trọng: Cho request đi tiếp đến Controller hoặc JSP đích
        chain.doFilter(request, response);
    }
}