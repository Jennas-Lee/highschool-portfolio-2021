<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.Util" %>
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
	String query = Util.getParamNN(request.getParameter("query"));
	String option = Util.getParamNN(request.getParameter("option"));
	
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
				"tbl_product_01 ";
		
		if(option.equals("pcode")) {
			sql += "WHERE pcode LIKE '%" + query + "%'";
		} else if(option.equals("name")) {
			sql += "WHERE name LIKE '%" + query + "%'";
		} else if(option.equals("cost")) {
			sql += "WHERE cost = " + query;
		}
		
		ResultSet rs = stmt.executeQuery(sql);
	%>
	<h1><a href="searchpage.jsp">상품검색</a></h1>
	<form action="searchpage.jsp" method="GET">
		<select name="option">
			<option value="pcode">상품코드</option>
			<option value="name">상품명</option>
			<option value="cost">금액</option>
		</select>
		<input type="text" name="query">
		<button type="submit">검색</button>
	</form>
	<table border=1>
		<tr>
			<td>상품코드</td>
			<td>상품명</td>
			<td>금액</td>
			<td>삭제</td>
		</tr>
	<%
	while(rs.next()) {
	%>
		<tr>
			<td><%= rs.getString("pcode") %></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getInt("cost") %></td>
			<td>
				<a href="delete.jsp?pcode=<%= rs.getString("pcode") %>"><button>삭제</button></a>
			</td>
		</tr>
	<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	</table>
</body>
</html>