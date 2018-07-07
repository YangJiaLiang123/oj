package com.etc.filter;

import java.io.IOException;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
  
public class LoginFilter implements Filter {  
    public static final String logout_page = "/admin/login.jsp";  
    public void destroy(){}  
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)throws ServletException, IOException {  
        HttpServletRequest request = (HttpServletRequest)servletRequest;  
        HttpServletResponse response = (HttpServletResponse)servletResponse;  
        String currentURL = request.getRequestURI();  
        String ctxPath = request.getContextPath();  
        String targetURL = currentURL.substring(ctxPath.length());  
        HttpSession session = request.getSession(false);  
        if(!("/admin/login.jsp".equals(targetURL))){  
            System.out.println("1"+targetURL+"ctxPath:"+ctxPath+"currentURL:"+currentURL);  
            if(session == null || session.getAttribute("adminname") == null){  
                response.sendRedirect(logout_page);  
                return;  
            }else{  
                filterChain.doFilter(request, response);  
                return;  
            }  
        }else{  
            filterChain.doFilter(request, response);  
            return;  
        }  
          
    }  
    public void init(FilterConfig filterConfig)throws ServletException{}  
  
}  