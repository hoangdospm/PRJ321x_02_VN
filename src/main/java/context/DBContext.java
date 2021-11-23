package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
	
	private final String SERVER_NAME = "localhost";
	private final String DATABASE_NAME = "cPhoneWebApp";
	private final String PORT = "1433";
	private final String USER = "sa";
	private final String PASSWORD = "sa";
	
	public Connection getConnection() throws Exception {
		String url = "jdbc:sqlserver://" + SERVER_NAME + ":" + PORT + ";databaseName=" + DATABASE_NAME;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url, USER, PASSWORD);
	}
}
