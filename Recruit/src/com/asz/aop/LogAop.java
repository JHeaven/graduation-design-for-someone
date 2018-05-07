package com.asz.aop;

import java.util.Date;

import javax.annotation.Resource;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import com.asz.model.Log;
import com.asz.service.ILogService;


@Component
@Aspect
public class LogAop {

	@Resource
	ILogService logService = null;
	
	
	@Before("execution(* com.asz.service.impl..*(..)) && !execution( * com.asz.service.impl.LogServiceImpl.*(..))")
	public void beforeLog(JoinPoint jp){
		String logcon = "[" + new Date()+"]����:"+jp.getTarget();
		Log log = new Log();
		log.setLogContent(logcon);
		log.setLogDate(new Date());
		log.setUserId(1);
		logService.insert(log);
	}
}
