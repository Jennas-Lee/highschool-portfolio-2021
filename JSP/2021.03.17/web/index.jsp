<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-03-17
  Time: 오후 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %><html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>GET 실습</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <%
        request.setCharacterEncoding("UTF-8");
        String sec = request.getParameter("sec");
    %>
    <section><%= sec %></section>
</body>
</html>
