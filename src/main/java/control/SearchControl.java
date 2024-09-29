package control;

import database.CategoryDao;
import database.ProductDao;
import entity.Category;
import entity.Product;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchControl", value = "/search-control")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txt = request.getParameter("txt");
        System.out.println(txt);
        ProductDao productDao = new ProductDao();
        List<Product> listP = productDao.searchProductByName(txt);
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listC = categoryDao.getAll();


        request.setAttribute("listP", listP);
        request.setAttribute("listC", listC);
        request.setAttribute("search_Value", txt);
//        request.getRequestDispatcher("shop.jsp").forward(request, response);
        request.getRequestDispatcher("shop-product.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}