package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import model.*;

public class registerDAO {

    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;

    public static boolean check_register(String user, String phone, String IDcard){
        boolean status = false;
        connection = connectionDAO.getConnection();
        try {
            preparedStatement = connection.prepareStatement("select * from IF_people where UserName = ? or Phone = ? or IDcard = ?");
            preparedStatement.setString(1,user);
            preparedStatement.setString(2,phone);
            preparedStatement.setString(3,IDcard);
            ResultSet resultSet = preparedStatement.executeQuery();
            status = resultSet.next();
            preparedStatement.close();
            resultSet.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }

    public static void add_customer(String fristname, String lastname, String sex, String dateofbird, String address, String phone, String job, String IDcard, String username, String password, int checkuser){
        connection = connectionDAO.getConnection();
        try {
            preparedStatement = connection.prepareStatement("insert into IF_people values (?,?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setString(1,fristname);
            preparedStatement.setString(2,lastname);
            preparedStatement.setString(3,sex);
            preparedStatement.setString(4,dateofbird);
            preparedStatement.setString(5,address);
            preparedStatement.setString(6,phone);
            preparedStatement.setString(7,job);
            preparedStatement.setString(8,IDcard);
            preparedStatement.setString(9,username);
            preparedStatement.setString(10,password);
            preparedStatement.setInt(11,checkuser);
            preparedStatement.execute();
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        connection = connectionDAO.getConnection();
        try {
            preparedStatement = connection.prepareStatement("select * from IF_people");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                System.out.println(resultSet.getString(1) + resultSet.getString(2) +resultSet.getString(3) +resultSet.getString(4) +resultSet.getString(5) +resultSet.getString(6) +resultSet.getString(7) +resultSet.getString(8) +resultSet.getString(9) +resultSet.getString(10) +resultSet.getString(11));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
