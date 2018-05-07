package com.lm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lm.constance.Constance;
import com.lm.model.Staff;
import com.lm.service.IStaffService;
import com.lm.utils.MD5;


@Controller
public class IndexController {

	@Resource
	IStaffService staffService = null;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("loginName") String username, @RequestParam("loginPass") String password,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Staff user = new Staff();
		user.setLoginName(username);
		user.setLoginPass(MD5.encryption(password));
		user = staffService.login(user);
		if (user != null) {
			mv.addObject("message", "������ȷ");
			session.setAttribute(Constance.userLoginFlag,user);
			mv.setViewName("/index");
		} else {
			mv.addObject("message", "�û������������");
			mv.setViewName("/login");
		}

		return mv;
	}

	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		return mv;
	}
	
	
	
	@RequestMapping("/right")
	public ModelAndView right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_right");
		return mv;
	}
	
	/*

	@RequestMapping("/reg")
	public ModelAndView reg(Users user) {
		ModelAndView mv = new ModelAndView();
		user.setLoginPass(MD5.encryption(user.getLoginPass()));
		user.setAddress("�벹������");
		user.setAreas("�벹������");
		user.setDeleted(0);
		user.setMoney(0.0);
		user.setName("�벹������");
		user.setPhone("88888888888");
		user.setSex("��");
		user.setStatus(1);
		
		Users userTemp = null;
		userTemp = userService.login(new Users(user.getLoginName()));
		if (userTemp != null) {
			mv.addObject("message", "�û����ظ��������������û���");
		} else {
			if (userService.insertSelective(user) > 0) {
				mv.addObject("message", "ע��ɹ���");
			} else {
				mv.addObject("message", "ע��ʧ�ܣ������ԣ�");
			}
		}

		mv.setViewName("/login");
		return mv;
	}
*/
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
	
	
	

	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin");
		return mv;
	}
	
	
	@RequestMapping("/adminright")
	public ModelAndView adminright() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_adminright");
		return mv;
	}

}
