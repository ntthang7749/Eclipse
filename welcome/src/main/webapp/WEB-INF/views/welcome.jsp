<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <title>Trang chào mừng</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        /* Background nhẹ nhàng toàn trang */
        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        /* Tiêu đề */
        .welcome-card h2 {
            font-weight: 700;
            color: #333;
            margin-bottom: 20px;
        }
        
        /* Thời gian */
        .welcome-card p {
            font-size: 1.1rem;
            color: #666;
            margin-bottom: 30px;
        }
        
        }
        .btn-welcome:hover {
            background-color: #357ABD;
            color: #fff;
            box-shadow: 0 5px 15px rgba(53, 122, 189, 0.4);
        }
    </style>
</head>
<body>
    <div class="welcome-card">
        <h2><c:out value="${welcome.message}" /></h2>
        <p>Thời gian hiện tại: <c:out value="${welcome.time}" /></p>
        
    </div>

    <!-- Bootstrap JS bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

