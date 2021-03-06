<%@ page import="java.sql.*" %>
<%@ page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 성적 조회 프로그램 ver 1.0</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>학생 조회</h2>
		<table border="1">
			<tr>
				<td>학번</td>
				<td>이름</td>
				<td>학년</td>
				<td>반</td>
				<td>번호</td>
				<td>성별</td>
			</tr>
			<%
				Connection conn = null;
				Statement stmt = null;
				String callback = "";
				
				try {
					conn = Util.getConnection();
					stmt = conn.createStatement();
					String sql = "SELECT * FROM member_tbl";
					
					ResultSet rs = stmt.executeQuery(sql);
					
					while(rs.next()) {
						%>
						<tr>
							<td><%= rs.getString("id") %></td>
							<td><%= rs.getString("name") %></td>
							<td>학년</td>
							<td>반</td>
							<td>번호</td>
							<td><%= rs.getString("gender") %></td>
						</tr>
						<%
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			%>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>