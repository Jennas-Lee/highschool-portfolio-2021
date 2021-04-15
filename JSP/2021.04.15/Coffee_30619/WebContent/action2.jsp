<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String pcode = Util.getParamNN(request.getParameter("pcode"));
	String name= Util.getParamNN(request.getParameter("name"));
	String cost = Util.getParamNN(request.getParameter("cost"));
	
	Connection conn = null;
	Statement stmt = null;
	String callback = "";
	
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		
		String sql =
			"INSERT INTO tbl_product_01 VALUES ('" +
			pcode + "', '" +
			name + "', " +
			cost + ")";
		
		stmt.executeUpdate(sql);
		callback = "prac.jsp";
	} catch(Exception e) {
		e.printStackTrace();
	}
	response.sendRedirect(callback);
%>