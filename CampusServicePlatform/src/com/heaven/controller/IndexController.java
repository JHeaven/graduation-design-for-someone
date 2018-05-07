package com.heaven.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.dao.UserMapper;
import com.heaven.model.User;
import com.heaven.utils.MD5;
import com.heaven.utils.SendmailUtil;
import com.heaven.utils.WeatherInstance;
import com.heaven.utils.Weatherinfo;

/**
 * ��½����ҳ
 * @author HEAVEN
 *
 */
@Controller
public class IndexController {

	@Resource
	UserMapper userMapper = null;

	/**
	 * ��½ҳ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView goToLogin() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "������Զ�����������ֺ���");
		mv.setViewName("login");
		return mv;
	}

	/**
	 * ע��ҳ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView goToRegiser() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		return mv;
	}

	/**
	 * ���������ҳ��
	 * 
	 * @return
	 */
	@RequestMapping("/forgetPassword")
	public ModelAndView goToForgetPass() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forgetPassword");
		return mv;
	}

	/**
	 * �������䣬������������ҵ���߼�
	 * 
	 * @param email
	 * @return
	 */
	@RequestMapping("/forgetPasswordReceiveEmail")
	@ResponseBody
	public String forgetPasswordReceiveEmail(
			@RequestParam("email") String email, HttpServletRequest request) {
		User user = userMapper.selectByEmail(email);
		System.out.println(user);
		String uri = "http://182.254.222.206/CampusServicePlatform/forgetPasswordReplay/"
				+ user.getId()
				+ "/"
				+ user.getLoginPass()
				+ "/"
				+ new Date().getTime();
		// �ַ��ʼ�
		SendmailUtil se = new SendmailUtil();
		se.doSendHtmlEmail("���¸�-��������", "����24Сʱ֮��ʹ�����ӣ�����ʧЧ<br> "+ uri, email);
		String success = "{\"submitted_data\": \"" + email
				+ "\",\"redirect_url\": \"login\"}";
		return success;
	}

	/**
	 * ��������������֤��ת
	 * @param userId
	 * @param md5pass
	 * @param time
	 * @return
	 */
	@RequestMapping("/forgetPasswordReplay/{userId}/{md5pass}/{time}")
	public ModelAndView forgetPasswordReplay(
			@PathVariable("userId") Integer userId,
			@PathVariable("md5pass") String md5pass,
			@PathVariable("time") long time) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setId(userId);
		user.setLoginPass(md5pass);
		user = userMapper.selectByIdAndPass(user);
		if (user!=null) {
			mv.setViewName("resetPassword");
		}else{
			System.out.println("�������ӷǷ�");
			mv.setViewName("noaccess");
		}
		if ((new Date().getTime() - time) > (24*3600*1000)) {
			System.out.println("�������ӳ�ʱ");
			mv.setViewName("noaccess");
		}
			
		System.out.println(userId + "==" + md5pass + "===" + time);
		
		mv.addObject("id", userId);
		
		return mv;
	}
	
	
	@RequestMapping("/forgetPasswordAction")
	@ResponseBody
	public String forgetPasswordAction(User user){
		
		user.setLoginPass(MD5.encryption(user.getLoginPass()));
		userMapper.updateByPrimaryKeySelective(user);
		
		String success = "{\"submitted_data\": \"" + "OK"
				+ "\",\"redirect_url\": \"login\"}";
		return success;
	}
	
	

	/**
	 * ��ҳ
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index")
	public ModelAndView goToIndex() throws Exception {
		ModelAndView mv = new ModelAndView();
		WeatherInstance weatherInstance = WeatherInstance.getInstance();
		List<Weatherinfo> weather = null;
		try {
			weather = weatherInstance.HttpURLConnection_GET("101190801");
		} catch (java.net.UnknownHostException e) {
			weather = new ArrayList<Weatherinfo>();
			Weatherinfo weatherinfo = new Weatherinfo();
			weatherinfo.setCity("������������");
			weatherinfo.setCityid("");
			weatherinfo.setIsRadar("");
			weatherinfo.setNjd("");
			weatherinfo.setQy("");
			weatherinfo.setRadar("");
			weatherinfo.setRain("");
			weatherinfo.setSD("");
			weatherinfo.setTemp("");
			weatherinfo.setTime("0");
			weatherinfo.setWD("");
			weatherinfo.setWS("");
			weatherinfo.setWSE("");
			weather.add(weatherinfo);
		}
		mv.addObject("weather", weather.get(0));
		mv.addObject("message", "���¸� - ��ӭ����");
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping("/")
	public String goToToIndex() {
		return "redirect:/index";
	}

}