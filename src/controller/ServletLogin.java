package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAO.*;

@WebServlet(name = "ServletLogin", urlPatterns = "/template/formlogin")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(loginDAO.check_login(username,password)){
            response.sendRedirect("/template/home");
        }
        else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/template/formlogin.jsp");
            requestDispatcher.include(request,response);
//            requestDispatcher.forward(request,response); khong bi loi font
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/template/formlogin.jsp");
        dispatcher.forward(request, response);
    }
}
