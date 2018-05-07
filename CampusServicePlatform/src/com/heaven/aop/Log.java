package com.heaven.aop;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.heaven.constants.Constants;
import com.heaven.dao.UserLogMapper;
import com.heaven.dao.UserMapper;
import com.heaven.model.User;
import com.heaven.model.UserLog;

/**
 * �û���־�Լ����ֻ���
 * 
 * @author HEAVEN
 * 
 */
@Component
@Aspect
public class Log {

	@Resource
	UserLogMapper userLogMapper = null;
	@Resource
	UserMapper userMapper = null;

	@Pointcut("execution( * com.heaven.service.impl..*(..)) && !execution( * com.heaven.service.impl.WechartwallImpl.*(..))")
	public void myMethod() {
	}

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");

	/**
	 * ǰ��֪ͨ
	 * 
	 * @param point
	 */
	@Before("myMethod()")
	public void CommonLog(JoinPoint point) {
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		User user = null;
		try {
			user = (User) session.getAttribute(Constants.USERNAME);
		} catch (ClassCastException e) {
			System.out.println("ClassCastException Exception called !");
		}
		UserLog log = null;
		if (user != null) {
			log = new UserLog();
			log.setIsdelete(0);
			log.setMethod(request.getRemoteAddr() + ":"
					+ point.getSignature().getName());
			log.setParameter(point.getArgs().toString());
			log.setTouchTime(new Date());
			log.setUserId(user.getId());
			// System.out.println("["+sdf.format(new
			// Date())+"]��"+request.getRemoteAddr()+":"+user.getLoginName()+":"+point.getTarget());
			// ���ּӳ�
			scoreRand(point.getSignature().getName(), user);
		} else {
			log = new UserLog();
			log.setIsdelete(0);
			log.setMethod(request.getRemoteAddr() + ":"
					+ point.getSignature().getName());
			log.setParameter(point.getArgs().toString());
			log.setTouchTime(new Date());
			log.setUserId(0);
			// System.out.println("["+sdf.format(new
			// Date())+"]��"+request.getRemoteAddr()+"���˳��Ե�½"+":"+point.getTarget());
		}
		userLogMapper.insert(log);
	}

	/**
	 * ��̳���ּӳ�
	 * 
	 * @param Method
	 * @param user
	 */
	public void scoreRand(String Method, User user) {
		if ("insert".equals(Method)) {
			user.setScore(user.getScore() + 20);
			userMapper.updateScoreRand(user);
			// System.out.println("д���������20��");
		} else {
			int rand = (int) (Math.random() * 5);
			user.setScore(user.getScore() + rand);
			// System.out.println("����ӷ�"+rand);
			userMapper.updateScoreRand(user);
		}
	}

}
