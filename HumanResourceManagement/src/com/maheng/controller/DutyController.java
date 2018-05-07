package com.maheng.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.model.Duty;
import com.maheng.model.DutyLog;
import com.maheng.model.Staff;
import com.maheng.service.IDutyService;
import com.maheng.service.IStaffService;

@Controller
@RequestMapping("/duty")
public class DutyController {

	@Resource
	IStaffService staffService;
	@Resource
	IDutyService dutyService = null;

	@RequestMapping("/dutySelect")
	public ModelAndView index() {
		List<Staff> allStaff = staffService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/duty_select");
		return mv;
	}

	@RequestMapping("/selectDuty/{id}")
	public ModelAndView selectDuty(@PathVariable("id") Integer id) {
		Staff staff = staffService.selectByPrimaryKey(id);
		List<Duty> allDuty = dutyService.getDutyList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.addObject("allDuty", allDuty);
		mv.setViewName("/page/duty_do");
		return mv;
	}

	@RequestMapping("/doSelect/{staffId}/{dutyId}")
	public ModelAndView doSelect(@PathVariable("staffId") Integer staffId,
			@PathVariable("dutyId") Integer dutyId) {
		Duty duty = dutyService.selectDutyNameByPrimaryKey(dutyId);
		Staff staff = staffService.selectByPrimaryKey(staffId);
		// log
		DutyLog log = new DutyLog();
		log.setDate(new Date());
		log.setNow(duty.getName());
		log.setOriginal(staff.getDutyName());
		log.setStaffId(staffId);
		int i = dutyService.insertSelective(log);
		// staff
		staff.setDutyId(dutyId + "");
		staff.setDutyName(duty.getName());
		i += staffService.updateByPrimaryKeySelective(staff);

		ModelAndView mv = new ModelAndView();
		List<Staff> allStaff = staffService.selectAll();
		mv.addObject("allStaff", allStaff);
		if (i == 2) {
			mv.addObject("message1","职称评定成功！");
		}else{
			mv.addObject("message1","职称评定失败！");
		}
		mv.setViewName("/page/duty_select");
		return mv;
	}
	
	
	@RequestMapping("/dutyAll")
	public ModelAndView dutyAll() {
		List<DutyLog> allDutyLog = dutyService.selectById(null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("allDutyLog", allDutyLog);
		mv.setViewName("/page/duty_all");
		return mv;
	}

}
