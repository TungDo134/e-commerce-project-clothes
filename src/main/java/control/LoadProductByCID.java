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

@WebServlet(name = "LoadProductByCID", value = "/product-load-byCID")
public class LoadProductByCID extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        ProductDao productDao = new ProductDao();
        List<Product> list = productDao.getProductByCateID(cid);
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listC = categoryDao.getAll();

        request.setAttribute("listC", listC);
        request.setAttribute("listP", list);
//        request.getRequestDispatcher("shop.jsp").forward(request, response);
        request.getRequestDispatcher("shop-product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}