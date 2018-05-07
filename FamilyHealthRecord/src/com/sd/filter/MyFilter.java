package com.sd.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.sd.constance.Cons;
import com.sd.model.User;

public class MyFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("******["+new Date()+"] MyFilter hands up......");
		HttpSession session = ((HttpServletRequest)arg0).getSession();
		String uri = ((HttpServletRequest)arg0).getRequestURI();
		System.out.println(uri);
		User user = (User) session.getAttribute(Cons.LoginFlage);
		if (user!=null || uri.endsWith("/index-login.do")|| uri.endsWith("/index-reg.do")) {
			chain.doFilter(arg0, arg1);
		}else{
			arg0.getRequestDispatcher("login.jsp").forward(arg0,arg1);
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
