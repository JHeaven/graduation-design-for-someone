package com.xjd.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.model.Users;
import com.xjd.service.IUserService;
import com.xjd.utils.MD5;

@Controller
@RequestMapping("/user")
public class UsersController {
	@Resource
	IUserService userService = null;
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Users> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	@RequestMapping("/myPrf/{id}")
	public ModelAndView index(@PathVariable("id")Integer id) {
		Users user = userService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("/sub/user_my");
		return mv;
	}
	
	

	@RequestMapping("/reset/{id}")
	public ModelAndView reset(@PathVariable("id")Integer id) {
		Users user = userService.selectByPrimaryKey(id);
		user.setLoginPass(MD5.encryption("888888"));
		if (userService.updateByPrimaryKeySelective(user)>0) {
			
		}
		ModelAndView mv = new ModelAndView();
		List<Users> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		if (userService.deleteByPrimaryKey(id)>0) {
			
		}
		ModelAndView mv = new ModelAndView();
		List<Users> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
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
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		mv.addObject("user",user);
		mv.setViewName("/sub/user_my");
		return mv;
	}
	
}
