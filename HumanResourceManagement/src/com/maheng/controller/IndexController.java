package com.maheng.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.constance.Constance;
import com.maheng.model.DepLog;
import com.maheng.model.DutyLog;
import com.maheng.model.Rewards;
import com.maheng.model.Staff;
import com.maheng.service.ICheckService;
import com.maheng.service.IDepService;
import com.maheng.service.IDutyService;
import com.maheng.service.IRewardsService;
import com.maheng.service.IStaffService;
import com.maheng.utils.MD5;

@Controller
public class IndexController {

	@Resource
	IStaffService staffService;
	@Resource
	ICheckService checkService = null;
	@Resource
	IDutyService dutyService = null;
	@Resource
	IRewardsService rewardsService = null;
	@Resource
	IDepService depService = null;
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("username") String username,
			@RequestParam("password") String password,HttpSession session) {
		Staff staff = new Staff();
		staff.setLoginName(username);
		staff.setLoginPass(MD5.encryption(password));
		System.out.println("【some one login】 = " + staff);
		ModelAndView mv = new ModelAndView();
		staff = staffService.login(staff);
		if (staff != null) {
			mv.addObject("message", "登陆成功！");
			session.setAttribute(Constance.userLoginFlag, staff);
			mv.setViewName("/index");
		} else {
			mv.addObject("message", "用户名、密码错误！");
			mv.setViewName("/login");
		}
		return mv;
	}

	
	@RequestMapping("/reg")
	public ModelAndView reg(@RequestParam("username") String username,
			@RequestParam("password") String password,@RequestParam("sfz") String sfz,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/login");
		if (staffService.oversfz(sfz)==null) {
			mv.addObject("message", "身份证信息不存在，请联系管理员！");
			return mv;
		}
		Staff staff = new Staff();
		staff.setLoginName(username);
		if (staffService.login(staff) != null) {
			mv.addObject("message", "用户名已存在，请更改用户名！");
			return mv;
		}
		staff = staffService.oversfz(sfz);
		staff.setLoginName(username);
		staff.setLoginPass(MD5.encryption(password));
		if (staffService.updateByPrimaryKeySelective(staff)>0) {
			mv.addObject("message", "注册成功！");
		}
		return mv;
	}
	
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.setViewName("/index");
		return mv;
	}
	
	
	@RequestMapping("/index_right")
	public ModelAndView index_right() {
		List<Staff> allStaff = staffService.top5();
		List<Staff> allStaffTemp = staffService.selectAll();
		List<DutyLog> allDutyLog = dutyService.selectById(null);
		List<Rewards> allRewards = rewardsService.selectById(null);
		List<DepLog>  allDepLog = depService.selectById(null);
		for (Staff staff : allStaffTemp) {
			
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "欢迎登陆！");
		mv.addObject("allStaff", allStaff);
		mv.addObject("staffNum", allStaffTemp.size());
		mv.addObject("dutyNum", allDutyLog.size());
		mv.addObject("reNum", allRewards.size());
		mv.addObject("depNum", allDepLog.size());
		mv.setViewName("/page/index_right");
		return mv;
	}
	
	
	
	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
}
