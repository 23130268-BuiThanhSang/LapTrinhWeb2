package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.MenuDAO;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Account;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;
import vn.edu.hcmuaf.fit.laptrinhweb2.services.AuthService;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginController", value = "/Login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String pass = request.getParameter("pass");
        AuthService as = new AuthService();

        if("chuongtran".equals(username) && "chuong235".equals(pass)){
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("error", "tên tài khoản hoặc mật khẩu không khớp!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}