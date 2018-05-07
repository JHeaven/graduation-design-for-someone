package com.lm.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lm.model.Staff;
import com.lm.service.IStaffService;
import com.lm.utils.MD5;

@Controller
@RequestMapping("/staff")
public class StaffController {
	
	
	@Resource
	IStaffService staffService;

	@RequestMapping("/myProfle/{id}")
	public ModelAndView myProfle(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Staff staff = staffService.selectByPrimaryKey(id);
		mv.addObject("staff",staff);
		mv.setViewName("/sub/staff_my");
		return mv;
	}
	
	
	@RequestMapping("/updateMy")
	public ModelAndView updateMy(Staff user) {
		ModelAndView mv = new ModelAndView();
		if ("******".equals(user.getLoginPass())) {
			user.setLoginPass(null);
		}else{
			user.setLoginPass(MD5.encryption(user.getLoginPass()));
		}
		if (staffService.updateByPrimaryKeySelective(user)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		mv.addObject("staff",user);
		mv.setViewName("/sub/staff_my");
		return mv;
	}
	

	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Staff> allStaff = staffService.all();
		mv.addObject("allStaff",allStaff);
		mv.setViewName("/sub/staff_all");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (staffService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Staff> allStaff = staffService.all();
		mv.addObject("allStaff",allStaff);
		mv.setViewName("/sub/staff_all");
		return mv;
	}
	
	

	
	@RequestMapping("/go")
	public ModelAndView go() {
		ModelAndView mv = new ModelAndView();
		List<Staff> allStaff = staffService.all();
		mv.addObject("allStaff",allStaff);
		mv.setViewName("/sub/staff_add");
		return mv;
	}
	
	
	@RequestMapping("/doAdd")
	public ModelAndView go(Staff staff) {
		staff.setEnterTime(new Date());
		staff.setPs("无");
		staff.setDeleted(0);
		staff.setLoginPass(MD5.encryption(staff.getLoginPass()));
		ModelAndView mv = new ModelAndView();
		if (staffService.insertSelective(staff)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Staff> allStaff = staffService.all();
		mv.addObject("allStaff",allStaff);
		mv.setViewName("/sub/staff_all");
		return mv;
	}
	
}
