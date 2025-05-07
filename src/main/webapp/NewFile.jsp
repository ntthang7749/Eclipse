<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bài tập Java Web</title>
</head>
<body>
    <h2>Bài tập</h2>

    <!-- Bài 1: Giải phương trình bậc 2 -->
    <form method="post">
        <h3>1. Giải phương trình bậc 2: ax² + bx + c = 0</h3>
        a: <input type="text" name="a" /> <br>
        b: <input type="text" name="b" /> <br>
        c: <input type="text" name="c" /> <br>
        <input type="submit" name="solve" value="Giải phương trình" />
    </form>

    <!-- Bài 2: Kiểm tra tam giác -->
    <form method="post">
        <h3>2. Kiểm tra 3 số có là cạnh của tam giác</h3>
        a: <input type="text" name="a2" /> <br>
        b: <input type="text" name="b2" /> <br>
        c: <input type="text" name="c2" /> <br>
        <input type="submit" name="checkTriangle" value="Kiểm tra tam giác" />
    </form>

    <%
        // Bài 1: Giải phương trình bậc 2
        if(request.getParameter("solve") != null){
            try {
                double a = Double.parseDouble(request.getParameter("a"));
                double b = Double.parseDouble(request.getParameter("b"));
                double c = Double.parseDouble(request.getParameter("c"));

                out.println("<h4>Kết quả giải phương trình:</h4>");
                if(a == 0){
                    if(b == 0){
                        out.println("Phương trình vô nghiệm hoặc vô số nghiệm.");
                    } else {
                        out.println("Phương trình có nghiệm: x = " + (-c / b));
                    }
                } else {
                    double delta = b*b - 4*a*c;
                    if(delta < 0){
                        out.println("Phương trình vô nghiệm.");
                    } else if(delta == 0){
                        out.println("Phương trình có nghiệm kép: x = " + (-b / (2*a)));
                    } else {
                        double x1 = (-b + Math.sqrt(delta)) / (2*a);
                        double x2 = (-b - Math.sqrt(delta)) / (2*a);
                        out.println("Phương trình có 2 nghiệm phân biệt: x1 = " + x1 + ", x2 = " + x2);
                    }
                }
            } catch(Exception e){
                out.println("Vui lòng nhập đúng số.");
            }
        }

        // Bài 2: Kiểm tra tam giác
        if(request.getParameter("checkTriangle") != null){
            try {
                int a2 = Integer.parseInt(request.getParameter("a2"));
                int b2 = Integer.parseInt(request.getParameter("b2"));
                int c2 = Integer.parseInt(request.getParameter("c2"));

                out.println("<h4>Kết quả kiểm tra tam giác:</h4>");
                if(a2 + b2 > c2 && a2 + c2 > b2 && b2 + c2 > a2){
                    out.println("Ba số này là độ dài 3 cạnh của một tam giác.");
                } else {
                    out.println("Ba số này KHÔNG phải là độ dài 3 cạnh của một tam giác.");
                }
            } catch(Exception e){
                out.println("Vui lòng nhập đúng số nguyên.");
            }
        }
    %>

</body>
</html>
