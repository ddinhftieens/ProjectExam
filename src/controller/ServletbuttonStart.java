package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import DAO.*;
import model.*;

@WebServlet(name = "ServletbuttonStart",urlPatterns = "/template/selectClass")
public class ServletbuttonStart extends HttpServlet {
    private List<QA_answerquestion> listQA = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String subject = request.getParameter("subject");
        String course = request.getParameter("class");
        List<String> listS = new ArrayList<>();
        listS.add(course);
        if(subject.equals("math")){
            listS.add("Toán");
        }
        else if(subject.equals("physical")){
            listS.add("Vật lý");
        }
        else if(subject.equals("chemistry")){
            listS.add("Hóa học");
        }
        else if(subject.equals("biological")){
            listS.add("Sinh học");
        }
        else if(subject.equals("history")){
            listS.add("Lịch sử");
        }
        else if(subject.equals("geography")){
            listS.add("Địa lý");
        }
        else {
            listS.add("Tiếng anh");
        }
        listQA = questionanswerDAO.readQA(course,subject);
        System.out.println(listQA.get(0));
        request.setAttribute("listS",listS);
        request.setAttribute("listQA",listQA);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/template/exam.jsp");
        requestDispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/template/selectClass.jsp");
        dispatcher.forward(request, response);
    }
}
