package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.PasswordUtils;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.AuthDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;

import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/Register")
public class RegisterController extends HttpServlet {

    private AuthDao authDao = new AuthDao();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("reg_username");
        String email    = request.getParameter("reg_email");
        String phone    = request.getParameter("reg_phone");
        String pass     = request.getParameter("reg_pass");
        String confirm  = request.getParameter("reg_confirm");

        System.out.println("RegisterController called");
        System.out.println("username=" + username + ", email=" + email);

        // validate cơ bản
        if (username == null || username.isEmpty()
                || email == null || email.isEmpty()
                || pass == null || pass.isEmpty()
                || confirm == null || confirm.isEmpty()) {

            request.setAttribute("regError", "Vui lòng nhập đầy đủ thông tin.");
            //Không xóa các trường đã nhập
            request.setAttribute("activePage", "register");
            request.setAttribute("reg_username", username);
            request.setAttribute("reg_email", email);
            request.setAttribute("reg_phone", phone);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (!pass.equals(confirm)) {
            request.setAttribute("regError", "Mật khẩu xác nhận không khớp.");
            //Chỉ xóa phần mật khẩu
            request.setAttribute("activePage", "register");
            request.setAttribute("reg_username", username);
            request.setAttribute("reg_email", email);
            request.setAttribute("reg_phone", phone);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (!PasswordUtils.isStrongPassword(pass)) {
            request.setAttribute("regError",
                    "Mật khẩu phải chứa 1 chữ hoa, thường, số và ký tự đặc biệt.");
            request.setAttribute("activePage", "register");
            request.setAttribute("reg_username", username);
            request.setAttribute("reg_email", email);
            request.setAttribute("reg_phone", phone);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (authDao.existsByUsername(username)) {
            request.setAttribute("regError", "Tên tài khoản đã tồn tại.");
            request.setAttribute("activePage", "register");
            request.setAttribute("reg_username", username);
            request.setAttribute("reg_email", email);
            request.setAttribute("reg_phone", phone);
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // mã hóa MD5 rồi lưu DB
        String hashed = PasswordUtils.md5(pass);

        Account acc = new Account();
        acc.setUsername(username);
        acc.setPassword(hashed);
        acc.setAccountEmail(email);
        acc.setPhoneNumber(phone);
        acc.setAccountStatus(1); // active

        System.out.println("Insert account: " + acc.getUsername());

        authDao.insert(acc);

        request.setAttribute("success", "Đăng ký thành công, hãy đăng nhập.");
        request.setAttribute("activePage", "register");

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
