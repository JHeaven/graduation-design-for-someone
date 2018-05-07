package com.mebx.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mebx.constance.Constance;
import com.mebx.model.User;
import com.mebx.service.IUserService;
import com.mebx.utils.MD5;


@Controller
public class IndexController {

	@Resource
	IUserService userService;
	
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("loginName") String loginName, @RequestParam("loginPass") String loginPass,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setLoginName(loginName);
		user.setLoginPass(MD5.encryption(loginPass));
		user = userService.login(user);
		if (user!=null) {
			session.setAttribute(Constance.userLoginFlag, user);
			mv.addObject("message", "»¶Ó­µÇÂ½£¡");
			if (user.getSite().equals("¹ÜÀíÔ±")) {
				mv.setViewName("/admin");
			}else{
				mv.setViewName("/index");
			}
		}else{
			mv.addObject("message", "µÇÂ½Ê§°Ü£¡");
			mv.setViewName("/login");
		}
		
		return mv;
	}

	@RequestMapping("/reg")
	public ModelAndView reg(User user) {
		user.setDeleted(0);
		user.setCreateTime(new Date());
		user.setScore(0);
		user.setSite("ÓÃ»§");
		user.setLoginPass(MD5.encryption(user.getLoginPass()));
		ModelAndView mv = new ModelAndView();
		if (userService.insertSelective(user)>0) {
			mv.addObject("message", "¡¾×¢²á³É¹¦£¡¡¿");
		}else{
			mv.addObject("message", "¡¾×¢²áÊ§°Ü£¡¡¿");
		}
		mv.setViewName("/reg");
		return mv;
	}

	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin");
		return mv;
	}

	@RequestMapping("/index_right")
	public ModelAndView index_right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_right");
		return mv;
	}
	
	
	@RequestMapping("/admin_right")
	public ModelAndView admin_right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_admin");
		return mv;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
}
