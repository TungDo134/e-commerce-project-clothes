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

@WebServlet(name = "DetailControl", value = "/detail-control")
public class DetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        ProductDao productDao = new ProductDao();
        Product product = productDao.getProductByID(pid);
        List<Product> listP = productDao.getAll();

        request.setAttribute("listP", listP);
        request.setAttribute("detail", product);
//        request.getRequestDispatcher("shop.jsp").forward(request, response);
        request.getRequestDispatcher("detail-product.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}