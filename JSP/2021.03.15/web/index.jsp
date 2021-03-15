<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2021-03-11
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <title>로그인 폼</title>
</head>
<body>
    <div class="container">
        <form>
            <h3 class="mt-3 mb-3 text-center">회원가입</h3>
            <div class="mb-3">
                <input type="text" class="form-control" id="inputId" placeholder="아이디">
            </div>
            <div class="mb-3">
                <input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
            </div>
            <div class="mb-3">
                <input type="text" class="form-control" id="inputName" placeholder="이름">
            </div>
            <div class="mb-3 text-center">
                <div class="btn-group mx-auto" role="group" aria-label="Basic radio toggle button group">
                    <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                    <label class="btn btn-outline-primary" for="btnradio1">남자</label>
                    <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                    <label class="btn btn-outline-primary" for="btnradio2">여자</label>
                </div>
            </div>
            <div class="mb-3">
                <input type="email" class="form-control" id="inputEmail" placeholder="이메일">
            </div>
            <div class="mb-3 d-grid">
                <button type="submit" class="btn btn-primary">회원가입</button>
            </div>
        </form>
    </div>
</body>
</html>