//package vn.edu.hcmuaf.fit.laptrinhweb2.controller;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import vn.edu.hcmuaf.fit.laptrinhweb2.dao.MenuDAO; // Class DAO bạn đã tạo
//
//import vn.edu.hcmuaf.fit.laptrinhweb2.model.Menu.MainMenu;
//import vn.edu.hcmuaf.fit.laptrinhweb2.services.MenuService;
//
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "MenuController", value = "/menu")
//public class MenuController extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        MenuService menuService=new MenuService();
//        List<MainMenu> listMenu= menuService.getAllMenus();
//
//        request.setAttribute("listMenu", listMenu);
//
//        request.getRequestDispatcher("/Share/header.jsp").forward(request, response);
//    }
//}