package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.AuthDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.Auth.PasswordUtils;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AccountService;

import java.io.IOException;

@WebServlet(name = "addUser", value = "/addUser")
public class addUser extends HttpServlet {
    private AccountService accountService = new AccountService();
    private AuthDao authDao = new AuthDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Account acc = new Account();
        acc.setRole(request.getParameter("accountRole"));
        //NAME
        String username = request.getParameter("username");
        if (!authDao.existsByUsername(username)) {
            acc.setUsername(username);
        } else {
            request.setAttribute("error", "Username duplicate");
            request.getRequestDispatcher("manageUser_AddUser.jsp").forward(request, response);
            return;
        }
        acc.setAccountName(request.getParameter("accountName"));
        acc.setPhoneNumber(request.getParameter("phoneNumber"));
        //MAIL
        String usermail = request.getParameter("accountEmail");
        if (!authDao.existsByEmail(usermail)) {
            acc.setAccountEmail(usermail);
        } else {
            request.setAttribute("error", "Email duplicate");
            request.getRequestDispatcher("manageUser_AddUser.jsp").forward(request, response);
            return;
        }
        //PASS
        String basePass = request.getParameter("password");
        String password = "";
        if (PasswordUtils.isStrongPassword(basePass)) {
            password = PasswordUtils.md5(basePass);
        } else {
            request.setAttribute("error", "Password is too weak..");
            request.getRequestDispatcher("manageUser_AddUser.jsp").forward(request, response);
            return;
        }
        acc.setPassword(password);
        acc.setAccountStatus(Integer.parseInt(request.getParameter("accountStatus")));
        // acc.setAvatarUrl(request.getParameter("avatarUrl")); // placeholder ok

        accountService.add(acc);

        response.sendRedirect("manageUser_AddUser.jsp");
    }
}