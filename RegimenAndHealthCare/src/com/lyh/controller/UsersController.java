package com.lyh.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.model.Users;
import com.lyh.service.IUserService;
import com.lyh.utils.MD5;

@Controller
@RequestMapping("/user")
public class UsersController {
	@Resource
	IUserService userService = null;
	
	@RequestMapping("/myPrf/{id}")
	public ModelAndView index(@PathVariable("id")Integer id) {
		Users user = userService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("/sub/user_my");
		return mv;
	}
	
	
	@RequestMapping("/updateMy")
	public ModelAndView updateMy(Users user) {
		ModelAndView mv = new ModelAndView();
		if ("******".equals(user.getLoginPass())) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		mv.addObject("user",user);
		mv.setViewName("/sub/user_my");
		return mv;
	}
	
}
