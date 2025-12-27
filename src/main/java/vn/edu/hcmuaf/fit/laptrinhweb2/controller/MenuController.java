package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.MenuDAO; // Class DAO bạn đã tạo
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu; // Class Model bạn đã tạo

import java.io.IOException;
import java.util.List;

@WebServlet(name = "MenuController", value = "/menu")
public class MenuController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MenuDAO dao = new MenuDAO();
        List<Menu> list = dao.getAll();
        request.setAttribute("listMenu", list);
        request.getRequestDispatcher("menu.jsp").forward(request, response);
    }
}