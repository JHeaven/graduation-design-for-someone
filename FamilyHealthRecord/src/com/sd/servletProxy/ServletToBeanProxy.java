package com.sd.servletProxy;

import java.io.IOException;
import java.util.Date;

import javax.servlet.GenericServlet;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

@WebServlet(name = "indexServlet", value = { "*.do" })
public class ServletToBeanProxy extends GenericServlet {

	private String targetBean;// ��ǰ�ͻ��������Servlet����
	private Servlet proxy;// ����Servlet
	private String uri;// �û����ʵ�uri
	private WebApplicationContext wac;// ApplicationContextʵ��
	private HttpServletRequest hsr;
	private String[] section;
	private String methodName;

	@Override
	public void init() throws ServletException {
		super.init();
		wac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext()); // ��ʼ��Spring����
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		this.hsr = (HttpServletRequest) arg0;
		this.targetBean = getServletName();
		this.uri = hsr.getRequestURI();
		methodName = "myTurn";
		if (this.uri.contains("-")) {
			// ����uri
			this.uri = this.uri.substring(this.uri.lastIndexOf("/") + 1, this.uri.lastIndexOf(".do"));
			this.section = this.uri.split("-");
			this.section[0] += "Servlet";
			methodName = section[1];
			this.targetBean = section[0];
		}
		arg0.setAttribute("method", methodName);
		System.err.println("******[Servlet Proxy] [" + new Date() + "] Proxy Servlet Name:[" + this.targetBean
				+ "] Hand Method[" + methodName + "]");
		this.proxy = (Servlet) wac.getBean(targetBean);// ����ServletBean

		proxy.init(getServletConfig());// ���ó�ʼ��������ServletConfig����Bean
		proxy.service(arg0, arg1);// ��service�����е���bean��service������servlet����ݿͻ�������ȥ������Ӧ�����󷽷���Get/Post��
	}

}
