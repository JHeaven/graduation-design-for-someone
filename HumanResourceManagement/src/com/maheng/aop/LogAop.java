package com.maheng.aop;

import java.util.Date;

import javax.annotation.Resource;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.maheng.model.Log;
import com.maheng.service.ILogService;


@Component
@Aspect
public class LogAop {

	@Resource
	ILogService logService = null;
	
	
	@Before("execution(* com.maheng.service.impl..*(..)) && !execution( * com.maheng.service.impl.LogServiceImpl.*(..))")
	public void beforeLog(JoinPoint jp){
		String logcon = "[" + new Date()+"]´¥·¢:"+jp.getTarget();
		Log log = new Log();
		log.setLogContent(logcon);
		log.setLogDate(new Date());
		log.setUserId(1);
		logService.insert(log);
	}
}
