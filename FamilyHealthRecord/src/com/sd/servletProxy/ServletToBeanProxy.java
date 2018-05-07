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

	private String targetBean;// 当前客户端请求的Servlet名字
	private Servlet proxy;// 代理Servlet
	private String uri;// 用户访问的uri
	private WebApplicationContext wac;// ApplicationContext实例
	private HttpServletRequest hsr;
	private String[] section;
	private String methodName;

	@Override
	public void init() throws ServletException {
		super.init();
		wac = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext()); // 初始化Spring容器
	}

	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		this.hsr = (HttpServletRequest) arg0;
		this.targetBean = getServletName();
		this.uri = hsr.getRequestURI();
		methodName = "myTurn";
		if (this.uri.contains("-")) {
			// 解析uri
			this.uri = this.uri.substring(this.uri.lastIndexOf("/") + 1, this.uri.lastIndexOf(".do"));
			this.section = this.uri.split("-");
			this.section[0] += "Servlet";
			methodName = section[1];
			this.targetBean = section[0];
		}
		arg0.setAttribute("method", methodName);
		System.err.println("******[Servlet Proxy] [" + new Date() + "] Proxy Servlet Name:[" + this.targetBean
				+ "] Hand Method[" + methodName + "]");
		this.proxy = (Servlet) wac.getBean(targetBean);// 调用ServletBean

		proxy.init(getServletConfig());// 调用初始化方法将ServletConfig传给Bean
		proxy.service(arg0, arg1);// 在service方法中调用bean的service方法，servlet会根据客户的请求去调用相应的请求方法（Get/Post）
	}

}
