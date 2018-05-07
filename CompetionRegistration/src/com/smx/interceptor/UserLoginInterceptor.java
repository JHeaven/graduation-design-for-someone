package com.smx.interceptor;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.smx.model.Competion;
import com.smx.service.IGameService;

public class UserLoginInterceptor implements HandlerInterceptor {

	private final String USERSESSION = "userLoginFlag";

	@Resource
	IGameService gameService = null;
	
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object arg2) throws Exception {
		Object sessionObj = request.getSession().getAttribute(USERSESSION);
		if (sessionObj != null) {
			return true;
		}
		response.sendRedirect("/CompetionRegistration/toLogin");
		return false;
	}

	
}
