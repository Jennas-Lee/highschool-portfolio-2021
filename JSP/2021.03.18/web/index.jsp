<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-03-18
  Time: 오전 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="DBPKG.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String section = Util.getParamNN(request.getParameter("section"));
%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>응용프로그래밍</title>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <section>
        <h1>

            <span><%= section %></span> 서브페이지
        </h1>
        <%
            switch(section) {
                case "ai":
        %>
            <jsp:include page="sub1.jsp"></jsp:include>
        <%
                    break;
                case "get":
        %>
            <jsp:include page="sub2.jsp"></jsp:include>
        <%
                    break;
                default:
                    break;
            }
        %>
    </section>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
