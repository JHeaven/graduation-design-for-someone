package com.ac.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class EntityReflect<T> {
	
	private static Logger logger = LogManager.getLogger(EntityReflect.class);
	
	public static Object getObjectProperty(Object obj, String property) {
		if(property == null || property.trim().equals(""))
			return "";
		String method = "get";
		String ch = property.charAt(0) + "";
		property = property.replaceFirst(ch, ch.toUpperCase());
		return invokeGetMethod(obj, method + property);
	}
	
	private static Object invokeGetMethod(Object obj, String methodName) {
		Object retObj = null;
		try {
			Method method = obj.getClass().getDeclaredMethod(methodName, new Class[]{});
			retObj = method.invoke(obj, new Object[]{});
		} catch (Exception e) {
			Class<?> superClass = obj.getClass().getSuperclass();
			if (superClass == null) {
				return null;
			}
			
			try {
				Method method = superClass.getDeclaredMethod(methodName, new Class[]{});
				retObj = method.invoke(obj, new Object[]{});
			} catch (Exception e1) {
				return null;
			}
		}
		return retObj;
	}
	
	public static Object invokeMethod(Object obj, String methodName) throws Exception {
		try {
			Object retObj = null;
			Method method = null;
			method = obj.getClass().getDeclaredMethod(methodName, new Class[]{});
			if(method != null)
				retObj = method.invoke(obj, new Object[]{});
			return retObj;
		}
		catch (Exception e) {
			throw e;
		}
	}
	
	public static Object invokeMethod(Object obj, String methodName, Object...params) {
		if(params == null || params.length == 0) {
			try {
				return invokeMethod(obj, methodName);
			}
			catch (Exception e) {
				logger.error(e.getMessage(), e);
			}
		}
		Object retObj = null;
		Class<?>[] paramClass = new Class[params.length] ;
		for(int i = 0; i < params.length; i++) {
			paramClass[i] = params[i].getClass();
		}
		
		Method method = null;
		try {
			try {
				method = obj.getClass().getMethod(methodName, paramClass);
			} catch (NoSuchMethodException e) {
				logger.error(e.getMessage(), e);
				Class<?>[] objectClass = new Class[1] ;
				objectClass[0] = new Object().getClass();
				method = obj.getClass().getMethod(methodName, objectClass);
			}
			if(method != null) {
				retObj = method.invoke(obj, params);
			}
		}
		catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		
		return retObj;
	}
	
	public static Object invokeSetMethod(Object obj, String methodName, Object[] params) {
		Object retObj = null;
		Class<?>[] paramClass = null;
		if (params != null && params.length > 0)
			paramClass = new Class[params.length];

		if(params != null && params.length > 0) {
			for (int i = 0; i < params.length; i++) {
				paramClass[i] = params[i].getClass();
			}
		}
		try {
			Method method = obj.getClass().getDeclaredMethod(methodName, (Class[]) paramClass);
			retObj = method.invoke(obj, params);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		
		return retObj;
	}
	
	public static<T> T createObjectFromRequest(HttpServletRequest request, Class<T> c) {
		try {
			T obj = c.newInstance();
			mappingMapToObject(request, obj);
			return obj;
		} catch (InstantiationException e) {
			logger.error(e.getMessage(), e);
		} catch (IllegalAccessException e) {
			logger.error(e.getMessage(), e);
		}
		
		return null;
	}
	
	private static<T> void getClassMethodMap(Class<T> cls, Map<String, Method> objMethodMap) {
		if(objMethodMap == null)
			objMethodMap = new HashMap<String, Method>();
		
		Method[] methods = cls.getDeclaredMethods();
		for(Method m : methods) 
			objMethodMap.put(m.getName(), m);
		
		if(cls.getSuperclass() != null) {
			getClassMethodMap(cls.getSuperclass(), objMethodMap);
		}
	}
	
	/**
	 * 将request对象中的值放入到实体中<br>
	 * 如果request既不是RequestEncodingPostWrapper也不是RequestEncodingWrapper，则说明是Ajax请求<b>
	 * 用此方法时，用ajax提交的form不能用get方式，否则form中的中文会有乱码
	 * @param request
	 * @param object
	 */
	private static void mappingMapToObject(HttpServletRequest request, Object object) {
		try {
			@SuppressWarnings("rawtypes")
			Iterator itor = request.getParameterMap().keySet().iterator();
			
			Map<String, Method> objMethodMap = new HashMap<String, Method>();
			getClassMethodMap(object.getClass(), objMethodMap);
			
			while(itor.hasNext()) {
				try {
					String keyName = (String) itor.next();
					String paraValue = request.getParameter(keyName);
					
					if(request.getMethod().equalsIgnoreCase("GET")) {
						try {
							paraValue = java.net.URLDecoder.decode(paraValue,"UTF-8");
						}
						catch (Exception e) {
							logger.error(e.getMessage(), e);
						}
					}
					
					String fc = keyName.charAt(0) + "";
					keyName = keyName.replaceFirst(fc, fc.toUpperCase());
					String methodName = "set" + keyName;

					Method mthod = objMethodMap.get(methodName);
					Class<?>[] parasClass = mthod.getParameterTypes();
					Class<?> pc = parasClass[0];
					Object[] vaObjs = new Object[1];
					
					if(pc.getName().equals(Date.class.getName())) {//如果是时间类型，则进行格式化
						SimpleDateFormat df;
						if(paraValue.contains(" "))
							df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
						else if(paraValue.length() > 7) {
							df = new SimpleDateFormat("yyyy-MM-dd");
						}
						else {
							df = new SimpleDateFormat("yyyy-MM");
						}
						
						vaObjs[0] = df.parse(paraValue);
					}
					else {
						Constructor<?> cunstructor = pc.getConstructor(paraValue.getClass());					
						vaObjs[0] = cunstructor.newInstance(paraValue);
					}
					mthod.invoke(object, vaObjs);
				}
				catch (Exception e) {
				}
			}
		}
		catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}
 }
