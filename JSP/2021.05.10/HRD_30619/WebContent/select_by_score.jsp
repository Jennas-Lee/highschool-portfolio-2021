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
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>------</td>
			</tr>
		</table>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>