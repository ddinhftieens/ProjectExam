package DAO;

import java.sql.*;

public class loginDAO {

    private static Connection connection = null;
    private static PreparedStatement preparedStatement = null;

    public static boolean check_login(String user, String pass){

        boolean status = false;
        connection = connectionDAO.getConnection();
        try {
            preparedStatement = connection.prepareStatement("select * from IF_people where UserName = ? and PassWord = ? and CheckUser = 1");
            preparedStatement.setString(1,user);
            preparedStatement.setString(2,pass);
            ResultSet rs = preparedStatement.executeQuery();
            status=rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return status;
    }
}
