package tk.curexia.filters;

import tk.curexia.constant.Constants;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "UriFilter",urlPatterns = "/temp")
public class UriFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        HttpSession session = request.getSession(false);

        String uri = request.getRequestURI();
        if(uri.equalsIgnoreCase("/") ||
            uri.equalsIgnoreCase("/login") ||
            uri.equalsIgnoreCase("/error") ||
            uri.equalsIgnoreCase("/logout")){
            chain.doFilter(req,resp);
        }else{
            String emp = "";  // Filler (for now)
            boolean res = Constants.checkUri(uri,emp);

            if(res ||
                uri.equalsIgnoreCase("/home") ||
                uri.equalsIgnoreCase("/settings")){
                 chain.doFilter(req,resp);
            }else{
                response.sendRedirect("/error");
            }
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
