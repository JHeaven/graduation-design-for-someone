package com.maheng.filter;

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


/**
 * ��ҪĿ�ģ������ַ����룻��Σ���һЩӦ���߼��жϵ�. Filter��webӦ��һ������ ��webӦ����������������ʱ��FilterҲ������
 * 
 * @author HEAVEN
 * 
 */
public class MyFilter implements Filter {

	@Override
	public void destroy() {
		System.out.println("MyFilter has shuted down...");

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain chain) throws IOException, ServletException {
		// ǿ������ת��
		HttpServletRequest request = (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		HttpSession session = request.getSession();
		String uri = request.getRequestURI();

		System.out.println(uri);
		/*if (!uri.endsWith("login.jsp") || !uri.equals("/OfficeAutomation/")) {
			if (null == user) {
				System.out.println("�Ƿ����ʣ�");
				response.sendRedirect("login.jsp");
			} 
		}*/
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("MyFilter has rised up...");

	}

}