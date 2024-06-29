package filmes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	
	private static String jdbcURL = "jdbc:mysql://localhost:3306/filmes?useSSL=false";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "";
    private static String jdbcDriver = "com.mysql.cj.jdbc.Driver";
    
    private Database() {
    	
    }
    
    public static Connection getConnection() throws SQLException{
    	Connection connection = null;
        connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        
        return connection;
    }

}
