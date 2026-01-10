package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AccountService;

import java.io.IOException;

@WebServlet(name = "updateAccount", value = "/updateAccount")
public class updateAccount extends HttpServlet {
    private AccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        Account acc = new Account();
        acc.setId(id);
        acc.setUsername(request.getParameter("username"));
        acc.setAccountName(request.getParameter("accountName"));
        acc.setPhoneNumber(request.getParameter("phoneNumber"));
        acc.setAccountEmail(request.getParameter("accountEmail"));
        acc.setAccountStatus(Integer.parseInt(request.getParameter("accountStatus")));
       // acc.setAvatarUrl(request.getParameter("avatarUrl")); // placeholder ok

        accountService.update(acc);

        response.sendRedirect("getAccountDetail?id=" + id);
    }
}