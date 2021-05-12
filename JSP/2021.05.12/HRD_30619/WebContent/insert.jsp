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
li:nth-child(2) a {
	text-decoration: underline;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section>
		<h2>학생 성적 등록</h2>
		<form action="insert_student.jsp" method="POST" onsubmit="return check();">
			<table id="insert-form">
				<tr>
					<th>학번</th>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<th>국어</th>
					<td><input type="number" name="korean" id="korean"></td>
				</tr>
				<tr>
					<th>수학</th>
					<td><input type="text" name="math" id="math"></td>
				</tr>
				<tr>
					<th>영어</th>
					<td><input type="text" name="english" id="english"></td>
				</tr>
				<tr>
					<th>역사</th>
					<td><input type="text" name="history" id="history"></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="등록"></th>
				</tr>
			</table>
		</form>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
		const check = () => {
			var id = document.getElementById('id').value;
			var korean = document.getElementById('korean').value;
			var math = document.getElementById('math').value;
			var english = document.getElementById('english').value;
			var history = document.getElementById('history').value;
			
			if(id.length!=5 || isNaN(id)) {
				alert("올바른 학번을 입력하십시오.");
				return false;
			} else if(korean.length>0 || isNaN(korean) || korean<0 || korean>100) {
				alert("올바른 국어 점수를 입력하십시오.");
				return false;
			} else if(isNaN(math)) {
				alert("올바른 수학 점수를 입력하십시오.");
				return false;
			} else if(isNaN(english)) {
				alert("올바른 영어 점수를 입력하십시오.");
				return false;
			} else if(isNaN(history)) {
				alert("올바른 역사 점수를 입력하십시오.");
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>