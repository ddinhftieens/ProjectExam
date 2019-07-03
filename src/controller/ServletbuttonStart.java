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

@WebServlet(name = "ServletbuttonStart",urlPatterns = "/template/home")
public class ServletbuttonStart extends HttpServlet {
    private List<QA_answerquestion> listQA = new ArrayList<>();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/template/exam.jsp");
        dispatcher.forward(request, response);
        listQA = questionanswerDAO.readQA();
        System.out.println(listQA.get(1));
    }

}
