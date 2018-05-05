package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.User;
import com.gyq.service.IUserService;
import com.gyq.utils.MD5;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Resource
	IUserService userService = null;

	@RequestMapping("/goToUpdate/{id}")
	public ModelAndView index(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		User user = userService.selectByPrimaryKey(id);
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update");
		return mv;
	}
	
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(User user) {
		if (user.getLoginPass().equals("******")) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		ModelAndView mv = new ModelAndView();
		if (userService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		mv.addObject("user",user);
		mv.setViewName("/sub/user_update");
		return mv;
	}
}
