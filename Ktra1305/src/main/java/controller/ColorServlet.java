package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class ColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String color = request.getParameter("color");
        HttpSession session = request.getSession();
        session.setAttribute("color", color);
        response.sendRedirect("Ktra.jsp");
    }
}
