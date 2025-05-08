<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng ký tài khoản</title>
<!-- Nhúng Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center text-uppercase">Đăng ký tài khoản</h2>
    <form action="register.jsp" method="post" class="p-4 border rounded bg-light">
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Mật khẩu</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label">Địa chỉ</label>
            <input type="text" class="form-control" id="address" name="address" required>
        </div>
        <div class="mb-3">
            <label for="address2" class="form-label">Địa chỉ 2</label>
            <input type="text" class="form-control" id="address2" name="address2">
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="city" class="form-label">Thành phố</label>
                <input type="text" class="form-control" id="city" name="city" required>
            </div>
            <div class="col-md-4 mb-3">
                <label for="state" class="form-label">Tỉnh/Thành</label>
                <select class="form-select" id="state" name="state">
                    <option selected>Chọn...</option>
                    <option value="HN">Hà Nội</option>
                    <option value="HCM">Hồ Chí Minh</option>
                    <option value="DN">Đà Nẵng</option>
                    <option value="HP">Hải Phòng</option>
                </select>
            </div>
            <div class="col-md-2 mb-3">
                <label for="zip" class="form-label">Mã ZIP</label>
                <input type="text" class="form-control" id="zip" name="zip" required>
            </div>
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="checkmeout">
            <label class="form-check-label" for="checkmeout">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary w-100">Sign in</button>
    </form>
</div>

</body>
</html>