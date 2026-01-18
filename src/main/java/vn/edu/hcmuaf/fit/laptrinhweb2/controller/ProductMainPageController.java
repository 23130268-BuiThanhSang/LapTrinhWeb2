package vn.edu.hcmuaf.fit.laptrinhweb2.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.hcmuaf.fit.laptrinhweb2.dao.ProductDao;
import vn.edu.hcmuaf.fit.laptrinhweb2.model.Product;

import java.io.IOException;

@WebServlet("/ProductMainPage")
public class ProductMainPageController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // test cứng id = 1
        int id = 1;

        ProductDao dao = new ProductDao();
        Product product = dao.getProductMap(id);

        request.setAttribute("product", product);

        request.getRequestDispatcher("/ProductMainPage.jsp")
                .forward(request, response);
    }
}

