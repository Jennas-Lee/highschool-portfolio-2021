<%@ page import="DBPKG.Util" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String section = Util.getParamNN(request.getParameter("section"));
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>매장별 커피 판매관리</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<h1>매장별 커피 판매관리 ver 1.0</h1>
	</header>
	<nav>
		<ul>
			<li><a href="index.jsp?section=c_insert">판매등록</a></li>
			<li><a href="index.jsp?section=c_select">판매현황</a></li>
			<li><a href="index.jsp?section=c_select_by_shop">매장별판매액</a></li>
			<li><a href="index.jsp?section=c_select_by_product">상품별판매액</a></li>
			<li><a href="index.jsp?section=c_index">홈으로</a></li>
		</ul>	
	</nav>
	<section>
		<% switch(section) {
			case "c_insert": %>
		<jsp:include page="c_insert.jsp"/>
		<% break; 
			case "c_select": %>
		<jsp:include page="c_select.jsp"/>
		<% break; 
			case "c_select_by_product": %>
		<jsp:include page="c_select_by_product.jsp"/>
		<% break; 
			case "c_select_by_shop": %>
		<jsp:include page="c_select_by_shop.jsp"/>
		<% break; 
			default: %>
		<jsp:include page="c_index.jsp"/>
		<% break; } %>
	</section>
	<footer>
		Copyright @ 2018 All right reserved Hanyang High School
	</footer>
</body>
</html>