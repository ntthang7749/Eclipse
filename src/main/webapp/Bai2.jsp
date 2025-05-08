<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách sinh viên</title>
<!-- Nhúng Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous">
<style>
    .custom-table {
        border: 2px solid #007bff; /* Màu viền */
        background-color: #f8f9fa; /* Màu nền */
        color: #212529; /* Màu chữ */
    }
    .custom-table th {
        background-color: #007bff; /* Màu nền tiêu đề */
        color: white; /* Màu chữ tiêu đề */
    }
    .custom-table td {
        border: 1px solid #007bff; /* Màu viền của từng ô */
    }
</style>
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center text-uppercase">Danh sách sinh viên</h2>
    <table class="table custom-table">
        <thead>
            <tr>
                <th>STT</th>
                <th>Mã SV</th>
                <th>Họ và tên</th>
                <th>Quê quán</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>SV001</td>
                <td>Nguyễn Văn A</td>
                <td>Hà Nội</td>
            </tr>
            <tr>
                <td>2</td>
                <td>SV002</td>
                <td>Trần Thị B</td>
                <td>Hồ Chí Minh</td>
            </tr>
        </tbody>
    </table>
</div>

</body>
</html>