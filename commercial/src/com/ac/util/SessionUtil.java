package com.ac.util;

import javax.servlet.http.HttpSession;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class SessionUtil {
	
	public static void login(String userName) {
		getSession().setAttribute("SessionUser", userName);
	}
	
	public static void loginstatis(String loginstatis) {
		getSession().setAttribute("loginstatis", loginstatis);
	}
	
	public static void logout() {
		getSession().removeAttribute("SessionUser");
		getSession().invalidate();
	}
	
	public static String getLoginUser() {
		String userName = (String) getSession().getAttribute("SessionUser");
		return userName;
	}
	
	public static String getLoginstatis() {
		String loginstatis = (String) getSession().getAttribute("loginstatis");
		return loginstatis;
	}
	
	public static HttpSession getSession() {
		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
		return attr.getRequest().getSession();
	}
}
