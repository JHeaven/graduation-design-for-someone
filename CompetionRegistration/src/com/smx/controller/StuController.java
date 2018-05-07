package com.smx.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.smx.model.Department;
import com.smx.model.Major;
import com.smx.model.Stu;
import com.smx.service.IStuService;
import com.smx.utils.MD5;

@Controller
@RequestMapping("/stu")
public class StuController {

	@Resource
	IStuService stuService = null;
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		Stu stu = stuService.selectByPrimaryKey(id);
		List<Department> allDep = stuService.selectAllDep();
		List<Major> allMajor = stuService.selectAllMajor();
		ModelAndView mv = new ModelAndView();
		mv.addObject("stu",stu);
		mv.addObject("allDep",allDep);
		mv.addObject("allMajor",allMajor);
		mv.setViewName("/sub/stu_select");
		return mv;
	}
	
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(Stu stu,HttpSession session) {
		List<Department> allDep = stuService.selectAllDep();
		List<Major> allMajor = stuService.selectAllMajor();
		if (!stu.getLoginPass().equals("******")) {
			stu.setLoginPass(MD5.encryption(stu.getLoginPass()));
		}else{
			stu.setLoginPass(null);
		}
		ModelAndView mv = new ModelAndView();
		System.out.println("catch stu = "+stu);
		if (stuService.updateByPrimaryKeySelective(stu)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"修改成功！\");");
			session.setAttribute("stu", stu);
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"修改失败！\");");
		}
		mv.addObject("allDep",allDep);
		mv.addObject("allMajor",allMajor);
		mv.setViewName("/sub/stu_select");
		return mv;
	}
	
	
	
	@RequestMapping("/showAllStu")
	public ModelAndView showAllStu() {
		List<Stu> allStu = stuService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allStu",allStu);
		mv.setViewName("/sub/stu_selectAll");
		return mv;
	}
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (stuService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.notyText(\"删除成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.notyText(\"删除失败！\");");
		}
		
		List<Stu> allStu = stuService.selectAll();
		mv.addObject("allStu",allStu);
		mv.setViewName("/sub/stu_selectAll");
		return mv;
		
	}
	
	
	@RequestMapping("/reg")
	public ModelAndView reg(Stu stu) {
		System.out.println("reg "+stu);
		ModelAndView mv = new ModelAndView();
		if (stuService.login(stu)==null) {
			stu.setAddress("请补充住址");
			stu.setBirth(new Date());
			stu.setClassRoom("请补充教室信息");
			stu.setDepartmentId(0);
			stu.setEntranceTime(new Date());
			stu.setIdNum("00000000000000000");
			stu.setMajorId(0);
			stu.setName("请完善个人信息");
			stu.setPhone("88888888888");
			stu.setSex("男");
			stu.setLoginPass(MD5.encryption(stu.getLoginPass()));
			stuService.insertSelective(stu);
			mv.addObject("message","恭喜注册成功！");
		}else{
			mv.addObject("message","抱歉，用户名已存在！");
		}
		mv.setViewName("/reg");
		return mv;
	}
	
	
	
	
	
	// At the time of initialization,convert the type "String" to type "date"
		@InitBinder
		public void initBinder(ServletRequestDataBinder binder) {
			binder.registerCustomEditor(Date.class, new CustomDateEditor(
					new SimpleDateFormat("yyyy-MM-dd"), true));
		}
}
