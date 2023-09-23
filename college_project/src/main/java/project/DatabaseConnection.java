package project;

import java.security.SecureRandom;
import java.sql.*;
import java.util.Random;

public class DatabaseConnection {
	static Connection con;
		public static Connection getConnection() throws Exception {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?characterEncoding=latin1", "library",
					"securelib");
			return con;
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
		ResultSet rs = null;
		try {
			con = getConnection();
			rs = con.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static void insertUpdateFromSqlQuery(String SqlQueryString) {
		try {
			if (con == null) {
				getConnection();
			}
			con.createStatement().executeUpdate(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
