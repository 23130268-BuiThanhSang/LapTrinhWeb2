package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.AuthDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.PasswordUtils;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AccountService;

import java.io.IOException;

@WebServlet(name = "updateAccount", value = "/updateAccount")
public class updateAccount extends HttpServlet {
    private AccountService accountService = new AccountService();
    private AuthDao authDao = new AuthDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Account acc = new Account();
        acc.setId(id);
        //NAME
        String username = request.getParameter("username");
        String base_username = request.getParameter("base_username");
        System.out.println(base_username);
        if (username.equals(base_username) || !authDao.existsByUsername(username)) {
            acc.setUsername(username);
        } else {
            request.setAttribute("error", "Username duplicate");
            request.getRequestDispatcher("manageUser_UserDetail.jsp").forward(request, response);
            return;
        }
        acc.setAccountName(request.getParameter("accountName"));
        acc.setPhoneNumber(request.getParameter("phoneNumber"));
        //MAIL
        String usermail = request.getParameter("accountEmail");
        String base_mail = request.getParameter("base_mail");
        System.out.println(base_mail);
        if (usermail.equals(base_mail) || !authDao.existsByEmail(usermail)) {
            acc.setAccountEmail(usermail);
        } else {
            request.setAttribute("error", "Email duplicate");
            request.getRequestDispatcher("manageUser_UserDetail.jsp").forward(request, response);
            return;
        }
        acc.setAccountStatus(Integer.parseInt(request.getParameter("accountStatus")));
        String basePass = request.getParameter("password");
        Boolean skipPass = true;
        if (basePass != "") {
            skipPass = false;
            String password = "";
            if (PasswordUtils.isStrongPassword(basePass)) {
                password = PasswordUtils.md5(basePass);
            } else {
                request.setAttribute("error", "Password is too weak..");
                request.getRequestDispatcher("manageUser_UserDetail.jsp").forward(request, response);
                return;
            }
            acc.setPassword(password);
        }
       // acc.setAvatarUrl(request.getParameter("avatarUrl")); // placeholder ok

        accountService.update(acc,skipPass);

        response.sendRedirect("getAccountDetail?id=" + id);
    }
}