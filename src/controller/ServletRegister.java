package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import DAO.*;

@WebServlet(name = "ServletRegister",urlPatterns = "/template/formregister")
public class ServletRegister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repeatpass");
        String fristname = request.getParameter("fristName");
        String lastname = request.getParameter("lastName");
        String sex = request.getParameter("sex");
        String date = request.getParameter("dateOfbird");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String job = request.getParameter("job");
        String IDcard = request.getParameter("IDcard");
        if(!registerDAO.check_register(user,phone,IDcard)&& pass.equals(repass)){
            registerDAO.add_customer(fristname,lastname,sex,date,address,phone,job,IDcard,user,pass,0);
            response.sendRedirect("/template/exam.jsp");
        }
        else{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/template/formregister.jsp");
            requestDispatcher.include(request,response);
//            requestDispatcher.forward(request,response); khong bi loi font
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/template/formregister.jsp");
        requestDispatcher.forward(request,response);
    }
}
