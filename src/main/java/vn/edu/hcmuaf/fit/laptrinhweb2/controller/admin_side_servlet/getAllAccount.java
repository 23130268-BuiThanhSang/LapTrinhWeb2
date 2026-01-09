package vn.edu.hcmuaf.fit.laptrinhweb2.controller.admin_side_servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.DTO.AccountAdminView;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AccountAdminService;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AccountService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "getAllAccount", value = "/getAllAccount")
public class getAllAccount extends HttpServlet {
    private final AccountAdminService accountService = new AccountAdminService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<AccountAdminView> accounts = accountService.getAll();

        request.setAttribute("accounts", accounts);

        request.getRequestDispatcher("manageUser.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}