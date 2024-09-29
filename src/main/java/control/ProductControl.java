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

@WebServlet(name = "ProductControl", value = "/product")
public class ProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        loadAllProduct_Category(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    public void loadAllProduct_Category(HttpServletRequest request, HttpServletResponse response) {
        ProductDao productDao = new ProductDao();
        List<Product> listP = productDao.getAll();
        CategoryDao categoryDao = new CategoryDao();
        List<Category> listC = categoryDao.getAll();


        request.setAttribute("listP", listP);
        request.setAttribute("listC", listC);
        try {
            request.getRequestDispatcher("shop-product.jsp").forward(request, response);


        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }



}