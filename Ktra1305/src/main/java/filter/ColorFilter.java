package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class ColorFilter implements Filter {
    private final List<String> validColors = Arrays.asList("white", "red", "blue", "green");

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        String color = request.getParameter("color");
        if (color != null && !validColors.contains(color)) {
            ((HttpServletResponse) response).sendRedirect("Ktra.jsp");
        } else {
            chain.doFilter(request, response);
        }
    }
}
