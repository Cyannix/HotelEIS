package configuration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rm_db", "root", "");
			return conn;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}
		catch ( SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}

