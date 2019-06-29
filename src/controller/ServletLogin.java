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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(checkloginDAO.validate(username,password)){
            response.sendRedirect("/template/welcomtopage.jsp");
        }
        else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/template/formlogin.jsp");
            requestDispatcher.include(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/template/formlogin.jsp");
        dispatcher.forward(request, response);
    }
}
