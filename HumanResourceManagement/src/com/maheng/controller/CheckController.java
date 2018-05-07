package com.maheng.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.model.Check;
import com.maheng.model.Staff;
import com.maheng.service.ICheckService;
import com.maheng.service.IStaffService;

@Controller
@RequestMapping("/check")
public class CheckController {

	@Resource
	ICheckService checkService = null;
	@Resource
	IStaffService staffService = null;

	@RequestMapping("/addToCheck/{id}")
	public ModelAndView addToCheck(@PathVariable("id") Integer id,
			HttpServletRequest req) {
		Check check = null;
		check = checkService.selectByPrimaryKey(id);
		if (check == null) {
			System.out.println("can");
			check = new Check();
			check.setId(id);
			check.setStaffId(id);
			check.setStartDate(new Date());
			check.setGoutongSc(0);
			check.setJishuSc(0);
			check.setPinzhiSc(0);
			check.setProcess(0);
			check.setShijianSc(0);
			check.setXinliSc(0);
			check.setZhixingSc(0);
			check.setZhiyeSc(0);
			if (checkService.insertSelective(check) > 0) {
				Staff staff = new Staff();
				staff.setId(id);
				staff.setInpostType("正在培训");
				staffService.updateByPrimaryKeySelective(staff);
				req.setAttribute("message1", "培訓成功！");
			} else {
				req.setAttribute("message1", "培訓失敗！");
			}
		} else {
			System.out.println("can not!");
			req.setAttribute("message1", "該員工已接受過培訓！");
		}
		ModelAndView mv = new ModelAndView();
		List<Staff> allStaff = staffService.selectAll();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/staff_manager");
		return mv;
	}

	@RequestMapping("/checkManager")
	public ModelAndView checkManager() {
		List<Check> allCheck = checkService.selectAllofIng();
		for (Check check : allCheck) {
			try {
				check.setMaxSc(check.getGoutongSc() + check.getJishuSc()
						+ check.getPinzhiSc() + check.getShijianSc()
						+ check.getXinliSc() + check.getZhixingSc()
						+ check.getZhiyeSc());
			} catch (Exception e) {
				check.setMaxSc(0);
			}
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCheck", allCheck);
		mv.setViewName("/page/check_manager");
		return mv;
	}

	@RequestMapping("/checkOfMine/{id}")
	public ModelAndView checkOfMine(@PathVariable("id") Integer id) {
		Check check = checkService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		if (check == null) {
			mv.addObject("message1", "未培训！");
			mv.setViewName("/tips_outside");
		} else {
			mv.addObject("check", check);
			mv.setViewName("/page/check_mine");
		}

		return mv;
	}

	@RequestMapping("/finish/{id}")
	public ModelAndView finish(@PathVariable("id") Integer id) {
		Check check = checkService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		if (check == null) {
			mv.addObject("message1", "未培训！");
			mv.setViewName("/tips_outside");
		} else {
			mv.addObject("check", check);
			mv.setViewName("/page/check_finish");
		}

		return mv;
	}

	@RequestMapping("/doFinish")
	public ModelAndView doFinish(Check check) {
		System.out.println("check = "+check);
		ModelAndView mv = new ModelAndView();
		if (check.getProcess() == 100) {
			check.setEndDate(new Date());
			Staff staff = new Staff();
			staff.setId(check.getId());
			staff.setInpostType("培训结束、等待入职");
			staffService.updateByPrimaryKeySelective(staff);
		}
		if (checkService.updateByPrimaryKeySelective(check)>0) {
			mv.addObject("message1", "数据覆盖成功");
		}else{
			mv.addObject("message1", "数据覆盖失败");
		}
		mv.addObject("check", check);
		mv.setViewName("/page/check_finish");
		return mv;
	}
}
