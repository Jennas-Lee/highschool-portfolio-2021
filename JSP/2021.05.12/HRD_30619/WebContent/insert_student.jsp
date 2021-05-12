<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = Util.getParamNN(request.getParameter("id"));
	String korean = Util.getParamNN(request.getParameter("korean"));
	String math = Util.getParamNN(request.getParameter("math"));
	String english = Util.getParamNN(request.getParameter("english"));
	String history = Util.getParamNN(request.getParameter("history"));
	
	Connection conn = null;
	Statement stmt = null;
	String callback = "";
	
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		
		String sql =
			"INSERT INTO score_tbl VALUES " +
			"('" + id + "', " + korean +", " + english + ", " + math + ", " + history + ")";
		stmt.executeUpdate(sql);
		callback = "insert.jsp";
	} catch(Exception e) {
		e.printStackTrace();
	}
	response.sendRedirect(callback);
%>