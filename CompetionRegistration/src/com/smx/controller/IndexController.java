package com.smx.controller;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.smx.constance.Cons;
import com.smx.model.Competion;
import com.smx.model.Stu;
import com.smx.service.IGameService;
import com.smx.service.IStuService;
import com.smx.utils.MD5;

@Controller
public class IndexController {
	
	@Resource
	IStuService stuService = null;
	@Resource
	IGameService gameService = null;
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password,HttpSession session){
		sysLoad();
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
			mv.setViewName("/login2");
		}
		
		
		
		return mv;
	}

	
	
	@RequestMapping("/index")
	public ModelAndView index() {
		sysLoad();
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "»¶Ó­µÇÂ½£¡");
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/right")
	public ModelAndView right() {
		sysLoad();
		List<Competion> allCom = gameService.allGame();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCom",allCom);
		mv.setViewName("/sub/index_right");
		return mv;
	}
	
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Cons.USERFLAG, null);
		return "redirect:/toLogin";
	}
	
	
	@RequestMapping("/share/{id}")
	public ModelAndView goToUpdateCompetion(@PathVariable("id")Integer id) {
		Competion com = gameService.selectGameById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("com",com);
		mv.setViewName("/share");
		return mv;
	}
	
	
	
	@RequestMapping("/toLogin")
	public ModelAndView toLogin() {
		sysLoad();
		List<Competion> allCom = gameService.allGame();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCom",allCom);
		mv.setViewName("/login2");
		return mv;
	}
	
	
	
	
	
	
	
	public int sysLoad(){
		Date now = new Date();
		List<Competion> allCom = gameService.allGame();
		for (Iterator iterator = allCom.iterator(); iterator.hasNext();) {
			Competion competion = (Competion) iterator.next();
			if (now.after(competion.getFromTime()) && now.before(competion.getToTime())) {
				competion.setStatus("¾ºÈü½øÐÐÖÐ");
			}
			if (now.after(competion.getToTime())) {
				competion.setStatus("¾ºÈü½áÊø");
			}
			if (gameService.updateGameSelective(competion)<=0) {
				System.out.println("===================================================");
				System.out.println("==================ERROR====LOADING=================");
				System.out.println("===================================================");
			}else{
				System.out.println("refresh......competion:"+competion.getName());
			}
		}
		return 1;
	}
	
}
