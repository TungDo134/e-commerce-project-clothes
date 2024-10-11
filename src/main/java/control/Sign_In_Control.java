package control;

import database.AccountDao;
import entity.Account;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "Sign_In_Control", value = "/Sign_In_Control")
public class Sign_In_Control extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("fullname");
        String password = request.getParameter("password");

        AccountDao accountDao = new AccountDao();
        Account account = accountDao.getAccountByUser_Pass(userName, password);

        if (account != null) {
            HttpSession session = request.getSession();

            session.setAttribute("acc", account);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("error", "Tên đăng nhập hoặc mật khẩu không đúng");
            request.getRequestDispatcher("sign_in.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}