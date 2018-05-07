package com.maheng.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.model.Check;
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
@RequestMapping("/staff")
public class StaffController {

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
	
	
	@RequestMapping("/showmine/{id}")
	public ModelAndView showmine(@PathVariable("id") Integer id) {
		List<DutyLog> allDutyLog = dutyService.selectById(id);
		List<Rewards> allRewards = rewardsService.selectById(id);
		List<DepLog>  allDepLog = depService.selectById(id);
		Staff staff = staffService.selectByPrimaryKey(id);
		Check check = checkService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.addObject("check", check);
		mv.addObject("allDutyLog", allDutyLog);
		mv.addObject("allRewards", allRewards);
		mv.addObject("allDepLog", allDepLog);
		mv.setViewName("/page/staff_mine");
		return mv;
	}

	@RequestMapping("/changePhoto/{id}")
	public ModelAndView changePhoto(@PathVariable("id") Integer id) {
		Staff staff = staffService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.setViewName("/page/staff_photo");
		return mv;
	}

	@RequestMapping("/updatePhoto/{id}")
	public ModelAndView updatePhoto(@PathVariable("id") Integer id,
			@RequestParam("newPhoto") String newPhoto) {
		System.out.println("==========" + newPhoto);
		Staff staff = new Staff();
		staff.setId(id);
		staff.setPhoto(newPhoto);
		staffService.updateByPrimaryKeySelective(staff);
		staff = staffService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.setViewName("/page/staff_photo");
		return mv;
	}

	@RequestMapping("/goToAddStaff")
	public ModelAndView goToAddStaff() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/page/staff_new");
		return mv;
	}

	@RequestMapping("/addStaff")
	public ModelAndView addStaff(@RequestParam("mmmmmtext") String mmmmmtext) {
		System.out.println("mmmmmtext=" + mmmmmtext);
		String[] str = mmmmmtext.split(",");
		int all = str.length;
		int ok = 0;
		int exist = 0;
		for (int i = 0; i < str.length; i++) {
			if (staffService.oversfz(str[i]) == null) {
				System.out.println("not exist！");
				Staff staff = new Staff();
				staff.setIdentification(str[i]);
				staff.setBasicSalary(0);
				staff.setLevelSite(1);
				staff.setName("请尽快完善信息");
				staff.setEnterdptDate(new Date());
				if (staffService.insertSelective(staff) > 0) {
					ok++;
				}
			} else {
				exist++;
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("message1", "共捕获身份证" + all + "个，其中成功新增" + ok + "个，已存在"
				+ exist + "个，失败" + (all - ok - exist) + "个！");
		mv.setViewName("/page/staff_new");
		return mv;
	}

	@RequestMapping("/staffManager")
	public ModelAndView staffManager() {
		List<Staff> allStaff = staffService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/staff_manager");
		return mv;
	}

	@RequestMapping("/goToUpdate/{id}")
	public ModelAndView goToUpdate(@PathVariable("id") Integer id) {
		Staff staff = staffService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.setViewName("/page/staff_update");
		return mv;
	}

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id") Integer id) {

		ModelAndView mv = new ModelAndView();
		if (staffService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message1", "刪除成功！");
		}
		List<Staff> allStaff = staffService.selectAll();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/staff_manager");
		return mv;
	}

	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(Staff staff, HttpServletRequest req) {
		System.out.println(staff);
		if (!"******".equals(staff.getLoginPass())) {
			staff.setLoginPass(MD5.encryption(staff.getLoginPass()));
		} else {
			staff.setLoginPass(null);
		}
		if (staffService.updateByPrimaryKeySelective(staff) > 0) {
			req.setAttribute("message1", "更新成功！");
		} else {
			req.setAttribute("message1", "更新失敗！");
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.setViewName("/page/staff_update");
		return mv;
	}

	// At the time of initialization,convert the type "String" to type "date"
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd"), true));
	}

}
