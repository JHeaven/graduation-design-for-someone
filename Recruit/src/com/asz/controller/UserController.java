package com.asz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.User;
import com.asz.service.IUserService;
import com.asz.util.MD5;


@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	IUserService userService;
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(id);
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<User> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (userService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		List<User> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	@RequestMapping("/reset/{id}")
	public ModelAndView reset(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(id);
		user.setLoginPass(MD5.encryption("121111"));
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		List<User> allUser = userService.all();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	
	
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(User user) {
		user.setCreateTime(new Date());
		if (user.getLoginPass().equals("******")) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		ModelAndView mv = new ModelAndView();
		
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update");
		return mv;
	}
	
	
	
	
}
