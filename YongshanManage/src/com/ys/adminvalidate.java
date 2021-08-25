package com.ys;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class adminvalidate
 */
@WebServlet("/adminvalidate")
public class adminvalidate implements Filter {
	private static final long serialVersionUID = 1L;
	public void destroy() {
		
	}
	public void doFilter(ServletRequest request, ServletResponse response,FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String referer = req.getHeader("referer");
        String url=req.getRequestURI().toString();
        Object currentmember=req.getSession().getAttribute("currentuser");
        if(currentmember == null||currentmember == ""||currentmember.equals("")){
        	if(!url.contains("login"))
        	{
        		String path = "/YongshanManage/admin/login.jsp";
    	        res.sendRedirect(path);
        	}
        	else
        	{
        		chain.doFilter(req, res);
        	}
        }else{
        	chain.doFilter(req, res);
        }
    }
	public void init(FilterConfig arg0) throws ServletException {
	}
}
