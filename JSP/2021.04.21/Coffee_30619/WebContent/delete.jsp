<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String pcode = Util.getParamNN(request.getParameter("pcode"));
	
	Connection conn = null;
	Statement stmt = null;
	String callback = "";
	
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		
		String sql =
			"DELETE FROM tbl_product_01 WHERE pcode='" + pcode +"'";
		
		stmt.executeUpdate(sql);
		callback = "prac.jsp";
	} catch(Exception e) {
		e.printStackTrace();
	}
	response.sendRedirect(callback);
%>