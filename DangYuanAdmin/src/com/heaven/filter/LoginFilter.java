package com.heaven.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) req;
		HttpServletResponse httpResponse = (HttpServletResponse) res;
		String isLogin = (String) httpRequest.getSession().getAttribute("adminlogin");
		System.out.println(httpRequest.getRequestURI());
		if ("/DangYuanAdmin/MainPage.jsp".equals(httpRequest.getRequestURI())) {
			if (!"adminloginsuccess".equals(isLogin)) {
				httpResponse.sendRedirect("index.jsp");
				System.out.println("非法访问！");
			}
		}
		System.out.println("正常访问后台！");
		chain.doFilter(req, res);
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	
}
