<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chọn màu nền</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: ${sessionScope.color};">
<div class="container mt-5">
    <h2>Chọn màu nền</h2>
    <form action="ColorServlet" method="post">
        <select name="color" class="form-select mb-3">
            <option value="white">Trắng</option>
            <option value="red">Đỏ</option>
            <option value="blue">Xanh dương</option>
            <option value="green">Xanh lá</option>
        </select>
        <button class="btn btn-primary">Áp dụng</button>
    </form>

    <c:if test="${not empty sessionScope.color}">
        <div class="alert alert-success mt-3">
            Màu nền đã đổi thành: ${sessionScope.color}
        </div>
    </c:if>
</div>
</body>
</html>
