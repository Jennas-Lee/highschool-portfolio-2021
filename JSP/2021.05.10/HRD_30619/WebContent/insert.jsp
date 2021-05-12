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
		<h2>학생 성적 등록</h2>
		<form action="insert_student.jsp" method="POST">
			<table id="insert-form">
				<tr>
					<th>학번</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>국어</th>
					<td><input type="text" name="korean"></td>
				</tr>
				<tr>
					<th>수학</th>
					<td><input type="text" name="math"></td>
				</tr>
				<tr>
					<th>영어</th>
					<td><input type="text" name="english"></td>
				</tr>
				<tr>
					<th>역사</th>
					<td><input type="text" name="history"></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="등록"></th>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>