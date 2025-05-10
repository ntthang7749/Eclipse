<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String message = null;

    if (username != null && password != null) {
        if ("admin".equals(username) && "123".equals(password)) {
            message = "Đăng nhập thành công!";
        } else {
            message = "Tên đăng nhập hoặc mật khẩu sai!";
        }
        request.setAttribute("message", message);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
          crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <h2 class="text-center mb-4">Form Đăng Nhập</h2>
        <form method="post" action="Bai2.jsp" class="mx-auto" style="max-width: 400px;">
            <div class="form-group">
                <label for="username">Tên đăng nhập</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Nhập tên đăng nhập">
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu">
            </div>
            <button type="submit" class="btn btn-primary btn-block">Đăng nhập</button>
        </form>

        <c:if test="${not empty message}">
            <div class="alert mt-4 ${message == 'Đăng nhập thành công!' ? 'alert-success' : 'alert-danger'} text-center">
                <c:out value="${message}"/>
            </div>
        </c:if>
    </div>
</body>
</html>
