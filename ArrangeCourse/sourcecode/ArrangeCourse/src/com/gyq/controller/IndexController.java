package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.constance.Constance;
import com.gyq.model.User;
import com.gyq.model.Class;
import com.gyq.model.CourseList;
import com.gyq.model.Teacher;
import com.gyq.service.IClassService;
import com.gyq.service.ICourseListService;
import com.gyq.service.ITeacherService;
import com.gyq.service.IUserService;
import com.gyq.utils.MD5;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
public class IndexController {

	@Resource
	IUserService userService = null;
	@Resource
	IClassService classService;
	@Resource
	ITeacherService teacherService;
	@Resource
	ICourseListService courseListService;
	
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
			mv.addObject("message", "欢迎登陆！");
			mv.setViewName("/index");
		}else{
			mv.addObject("message", "用户名不存在或者密码错误，请重试！");
			mv.setViewName("/login");
		}
		
		return mv;
	}

	@RequestMapping("/reg")
	public ModelAndView reg(User user) {
		ModelAndView mv = new ModelAndView();
		User temp = new User();
		temp.setLoginName(user.getLoginName());
		temp.setLoginPass(null);
		temp = userService.login(temp);
		if (temp != null) {
			mv.addObject("message", "用户名重复！");
		}else{
			user.setIsdetele(0);
			user.setName("请完善个人信息");
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
			
			if (userService.insertSelective(user)>0) {
				mv.addObject("message", "注册成功！");
			}else{
				mv.addObject("message", "注册失败！");
			}
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

	@RequestMapping("/index_right")
	public ModelAndView index_right() {
		ModelAndView mv = new ModelAndView();
		List<Class> allClass = classService.selectall();
		List<Teacher> allTea = teacherService.selectall();
		List<CourseList> allList = courseListService.selectall();
		mv.addObject("classNum",allClass.size());
		mv.addObject("teaNum",allTea.size());
		mv.addObject("listNum",allList.size());
		mv.setViewName("/sub/index_right");
		return mv;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
}
