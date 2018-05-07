package com.mebx.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mebx.model.User;
import com.mebx.service.IUserService;
import com.mebx.utils.MD5;

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
	
	@RequestMapping("/update2/{id}")
	public ModelAndView update2(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(id);
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update2");
		return mv;
	}
	
	@RequestMapping("/reset/{id}")
	public ModelAndView reset(@PathVariable("id")Integer id) {
		User user = userService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		user.setLoginPass("797f69b345f300bafd556733f3035585");
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message","window.parent.frames.noteUp(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<User> allUser = userService.selectall();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (userService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.noteUp(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<User> allUser = userService.selectall();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<User> allUser = userService.selectall();
		mv.addObject("allUser",allUser);
		mv.setViewName("/sub/user_all");
		return mv;
	}
	
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(User user) {
		user.setCreateTime(new Date());
		user.setDeleted(0);
		user.setScore(0);
		if (user.getLoginPass().equals("******")) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		ModelAndView mv = new ModelAndView();
		
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message","window.parent.frames.noteUp(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update");
		return mv;
	}
	
	
	@RequestMapping("/doUpdate2")
	public ModelAndView doUpdate2(User user) {
		user.setCreateTime(new Date());
		user.setDeleted(0);
		user.setScore(0);
		if (user.getLoginPass().equals("******")) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		ModelAndView mv = new ModelAndView();
		
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message","window.parent.frames.noteUp(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update2");
		return mv;
	}
	
	
	
}
