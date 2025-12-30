package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.MenuDAO;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", value = "/Home")
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}