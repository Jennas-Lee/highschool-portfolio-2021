package DBPKG;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Util {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
  		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
    	return con;
    }
	
	public static String getParamNN(String param) {
		if(param == null) {
			return "";
		} else {
			return param;
		}
	}
}
