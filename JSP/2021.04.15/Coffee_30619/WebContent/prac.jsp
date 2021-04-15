<%@page import="java.sql.*" %>
<%@page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	Connection conn = null;
	Statement stmt = null;
	String callback = "";
	try {
		conn = Util.getConnection();
		stmt = conn.createStatement();
		String sql = 
				"SELECT " +
				"pcode, " +
				"name, " +
				"cost " +
				"FROM " +
				"tbl_product_01";
		
		ResultSet rs = stmt.executeQuery(sql);
	%>
	<table border=1>
		<tr>
			<td>상품코드</td>
			<td>상품명</td>
			<td>금액</td>
		</tr>
	<%
	while(rs.next()) {
	%>
		<tr>
			<td><%= rs.getString("pcode") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getInt("cost") %></td>
		</tr>
	<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	</table>
	<a href="prac_insert.jsp"><button>메뉴등록</button></a>
</body>
</html>