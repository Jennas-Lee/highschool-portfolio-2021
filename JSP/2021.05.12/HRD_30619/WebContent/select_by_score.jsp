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
<style>
li:nth-child(3) a {
	text-decoration: underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>학생성적 조회</h2>
		<table border="1">
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학년</th>
				<th>반</th>
				<th>번호</th>
				<th>성별</th>
				<th>국어</th>
				<th>수학</th>
				<th>영어</th>
				<th>역사</th>
				<th>합계</th>
				<th>평균</th>
				<th>순위</th>
			</tr>
			<%
				Connection conn = null;
				Statement stmt = null;
				String callback = "";
				
				try {
					conn = Util.getConnection();
					stmt = conn.createStatement();
					String sql = "SELECT a.id, a.name, a.gender, substr(a.id, 1, 1) grade, substr(a.id, 2, 2) class, substr(a.id, 4, 4) num, b.korean, b.math, b.english, b.history, b.korean + b.math + b.english + b.history score_sum, (b.korean + b.math + b.english + b.history)/4 score_avg FROM member_tbl a INNER JOIN score_tbl b ON a.id = b.id ORDER BY (b.korean + b.math + b.english + b.history) ASC";
					
					ResultSet rs = stmt.executeQuery(sql);
					int i = 0;
					
					while(rs.next()) {
						i++;
						%>
						<tr>
							<td><%= rs.getString("id") %></td>
							<td><%= rs.getString("name") %></td>
							<td><%= rs.getString("grade") %></td>
							<td><%= rs.getString("class") %></td>
							<td><%= rs.getString("num") %></td>
							<td><%= rs.getString("gender") %></td>
							<td><%= rs.getInt("korean") %></td>
							<td><%= rs.getInt("math") %></td>
							<td><%= rs.getInt("english") %></td>
							<td><%= rs.getInt("history") %></td>
							<td><%= rs.getInt("score_sum") %></td>
							<td><%= rs.getInt("score_avg") %></td>
							<td><%= i %></td>
						</tr>
						<%
					}
				} catch(Exception e) {
					e.printStackTrace();
				}
			%>
			<tr>
				<td colspan="6"></td>
				<td>국어 총합</td>
				<td>수학 총합</td>
				<td>영어 총합</td>
				<td>역사 총합</td>
				<td>총합</td>
				<td>총평균</td>
				<td>------</td>
			</tr>
			<tr>
				<td colspan="6"></td>
				<%
					try {
						String sql = "SELECT SUM(korean) sum_korean, SUM(math) sum_math, SUM(english) sum_english, SUM(history) sum_history, SUM(korean) + SUM(math) + SUM(english) + SUM(history) sum_all, (SUM(korean) + SUM(math) + SUM(english) + SUM(history))/COUNT(*) avg_all FROM score_tbl";
						ResultSet rs = stmt.executeQuery(sql);
						rs.next();
						%>
							<td><%= rs.getInt("sum_korean") %></td>
							<td><%= rs.getInt("sum_math") %></td>
							<td><%= rs.getInt("sum_english") %></td>
							<td><%= rs.getInt("sum_history") %></td>
							<td><%= rs.getDouble("sum_all") %></td>
							<td><%= rs.getDouble("avg_all") %></td>
						<%
					} catch(Exception e) {
						e.printStackTrace();
					}
				%>
				<td>------</td>
			</tr>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>