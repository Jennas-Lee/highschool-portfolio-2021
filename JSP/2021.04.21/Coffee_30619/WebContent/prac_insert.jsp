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
	<form name="form1" action="action2.jsp" method="POST">
		<input type="hidden" name="task" value="insert">
		<table border="1">
			<tr>
				<td>상품코드</td>
				<td><input type="text" name="pcode" value=""></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="name" value=""></td>
			</tr>
			<tr>
				<td>금액</td>
				<td><input type="text" name="cost" value=""></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">
					<input type="reset" value="다시쓰기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>