package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionDAO {

    private static Connection connection = null;

    public static Connection getConnection(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            connection= DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=ExamProject", "sa", "Tjeens");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
