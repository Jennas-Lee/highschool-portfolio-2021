package DBPKG;


import java.sql.*;

public class Util {
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
  		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","11111");
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
