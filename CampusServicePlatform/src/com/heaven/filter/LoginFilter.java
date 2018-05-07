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
import javax.servlet.http.HttpSession;

import com.heaven.dao.UserMapper;

/**
 * 主要目的：过滤字符编码；其次，做一些应用逻辑判断等. Filter跟web应用一起启动 当web应用重新启动或销毁时，Filter也被销毁
 * 
 * @author HEAVEN
 * 
 */
public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("MyFilter has shuted down...");

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain chain) throws IOException, ServletException {
		// 强制类型转换
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		HttpSession session = request.getSession();
		UserMapper admin = (UserMapper) session.getAttribute("loginuserinfo");
		String uri = request.getRequestURI();

		System.out.println(uri);
		if (!uri.endsWith("/login")) {
			System.out.println("非法访问！");
			response.sendRedirect("login");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("MyFilter has rised up...");

	}

}
