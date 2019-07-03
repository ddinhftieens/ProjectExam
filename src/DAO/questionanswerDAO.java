package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.*;

public class questionanswerDAO {

    private static Connection connection = null;
    private static List<QA_answerquestion> listQA = new  ArrayList();

    public static List<QA_answerquestion> readQA(){
        connection = connectionDAO.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from class1_math");
            while (resultSet.next()){
                listQA.add(new QA_answerquestion(resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listQA;
    }
//    public static void main(String[] args) {
//        connection = connectionDAO.getConnection();
//        try {
//            Statement statement = connection.createStatement();
//            ResultSet resultSet = statement.executeQuery("select * from class1_math");
//            while (resultSet.next()){
//                listQA.add(new QA_answerquestion(resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),resultSet.getString(5),resultSet.getString(6),resultSet.getString(7)));
//                System.out.println(resultSet.getInt(1)+ resultSet.getString(2)+resultSet.getString(3)+resultSet.getString(4)+resultSet.getString(5)+resultSet.getString(6)+resultSet.getString(7));
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        for(QA_answerquestion i : listQA){
//            System.out.println(i);
//        }
//    }
}
