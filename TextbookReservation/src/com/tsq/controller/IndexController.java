package com.tsq.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.tsq.constance.Cons;
import com.tsq.model.Stu;
import com.tsq.service.IStuService;
import com.tsq.utils.MD5;

@Controller
public class IndexController {
	
	@Resource
	IStuService stuService = null;
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session){
		Stu stu = new Stu();
		stu.setLoginName(username);
		stu.setLoginPass(MD5.encryption(password));
		stu = stuService.login(stu);
		ModelAndView mv = new ModelAndView();
		if (stu !=null) {
			System.out.println("Some one login = "+stu);
			mv.addObject("message", "»¶Ó­µÇÂ½£¡");
			session.setAttribute(Cons.USERFLAG, stu);
			mv.setViewName("/index");
		}else{
			System.out.println("no");
			mv.setViewName("/login");
		}
		
		
		
		return mv;
	}

	
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "»¶Ó­µÇÂ½£¡");
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/right")
	public ModelAndView right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_right");
		return mv;
	}
	
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Cons.USERFLAG, null);
		return "redirect:/";
	}
	
	
}
