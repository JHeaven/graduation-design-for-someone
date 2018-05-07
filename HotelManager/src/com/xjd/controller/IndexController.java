package com.xjd.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.constance.Constance;
import com.xjd.model.News;
import com.xjd.model.Order;
import com.xjd.model.RoomWithBLOBs;
import com.xjd.model.Users;
import com.xjd.service.INewsService;
import com.xjd.service.IOrderService;
import com.xjd.service.IRoomService;
import com.xjd.service.IUserService;
import com.xjd.utils.MD5;

@Controller
public class IndexController {

	@Resource
	IUserService userService;
	@Resource
	IOrderService orderService;
	@Resource
	IRoomService roomService;
	@Resource
	INewsService newsService = null;

	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Users user = new Users();
		user.setLoginName(username);
		user.setLoginPass(MD5.encryption(password));
		user = userService.login(user);
		if (user != null) {
			mv.addObject("message", "密码正确");
			session.setAttribute(Constance.userLoginFlag,user);
			if (user.getLoginName().equals("admin")) {
				mv.setViewName("/admin");
			}else{
				mv.setViewName("/index");
			}
		} else {
			mv.addObject("message", "密码错误");
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
	
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin");
		return mv;
	}
	
	
	@RequestMapping("/right")
	public ModelAndView right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_right");
		return mv;
	}
	
	@RequestMapping("/adminright")
	public ModelAndView adminright() {
		ModelAndView mv = new ModelAndView();
		List<Users> allUser = userService.all();
		List<Order> allOrder = orderService.all();
		List<RoomWithBLOBs> allRoom = roomService.all();
		List<News> allNews = newsService.selectAll();
		
		mv.addObject("allUser",allUser.size());
		mv.addObject("allOrder",allOrder.size());
		mv.addObject("allRoom",allRoom.size());
		mv.addObject("allNews",allNews.size());
		
		
		mv.setViewName("/sub/admin_right");
		return mv;
	}

	@RequestMapping("/reg")
	public ModelAndView reg(Users user) {
		ModelAndView mv = new ModelAndView();
		user.setLoginPass(MD5.encryption(user.getLoginPass()));
		user.setAddress("请补充完整");
		user.setAreas("请补充完整");
		user.setDeleted(0);
		user.setMoney(0.0);
		user.setName("请补充完整");
		user.setPhone("88888888888");
		user.setSex("男");
		user.setStatus(1);
		
		Users userTemp = null;
		userTemp = userService.login(new Users(user.getLoginName()));
		if (userTemp != null) {
			mv.addObject("message", "用户名重复，请重新设置用户名");
		} else {
			if (userService.insertSelective(user) > 0) {
				mv.addObject("message", "注册成功！");
			} else {
				mv.addObject("message", "注册失败！请重试！");
			}
		}

		mv.setViewName("/reg");
		return mv;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
}
