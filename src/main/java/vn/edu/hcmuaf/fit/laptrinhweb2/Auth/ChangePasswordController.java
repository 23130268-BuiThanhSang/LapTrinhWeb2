package vn.edu.hcmuaf.fit.laptrinhweb2.Auth;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.PasswordUtils;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.io.IOException;
@WebServlet(name = "ChangePasswordController", value = "/ChangePassword")
public class ChangePasswordController extends HttpServlet {

    private AuthDao authDao = new AuthDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("cp_username");
        String email    = request.getParameter("cp_email");
        String newPass  = request.getParameter("cp_pass");
        String confirm  = request.getParameter("cp_confirm");

        // 1. Kiểm tra rỗng
        if (username == null || username.isEmpty()
                || email == null || email.isEmpty()
                || newPass == null || newPass.isEmpty()
                || confirm == null || confirm.isEmpty()) {

            request.setAttribute("cpError", "Vui lòng nhập đầy đủ thông tin.");
            request.setAttribute("activePage", "forgot");
            request.setAttribute("cp_username", username);
            request.setAttribute("cp_email", email);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // 2. Kiểm tra mật khẩu mới = xác nhận
        if (!newPass.equals(confirm)) {
            request.setAttribute("cpError", "Mật khẩu xác nhận không khớp.");
            request.setAttribute("activePage", "forgot");
            // GIỮ username, email
            request.setAttribute("cp_username", username);
            request.setAttribute("cp_email", email);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // 3. Kiểm tra độ mạnh mật khẩu
        if (!PasswordUtils.isStrongPassword(newPass)) {
            request.setAttribute("cpError",
                    "Mật khẩu phải chứa 1 chữ hoa, thường, số và ký tự đặc biệt.");
            request.setAttribute("activePage", "forgot");
            request.setAttribute("cp_username", username);
            request.setAttribute("cp_email", email);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // 4. Kiểm tra username + email có tồn tại và khớp nhau không
        Account acc = authDao.getUserByUsernameAndEmail(username, email);
        if (acc == null) {
            request.setAttribute("cpError", "Tên tài khoản hoặc email không đúng.");
            request.setAttribute("activePage", "forgot");
            request.setAttribute("cp_username", username);
            request.setAttribute("cp_email", email);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // 5. Mã hóa MD5 và update DB
        String hashed = PasswordUtils.md5(newPass);
        authDao.updatePasswordByUsernameAndEmail(username, email, hashed);

        // 6. Ở LẠI TRANG ĐỔI MẬT KHẨU, báo thành công
        request.setAttribute("cpSuccess", "Đổi mật khẩu thành công, hãy đăng nhập bằng mật khẩu mới.");
        request.setAttribute("activePage", "forgot");
        request.setAttribute("cp_username", username);
        request.setAttribute("cp_email", email);
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
