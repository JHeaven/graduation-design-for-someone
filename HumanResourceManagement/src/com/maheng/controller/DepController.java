package com.maheng.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.model.DepLog;
import com.maheng.model.Department;
import com.maheng.model.Duty;
import com.maheng.model.DutyLog;
import com.maheng.model.Staff;
import com.maheng.service.IDepService;
import com.maheng.service.IRewardsService;
import com.maheng.service.IStaffService;

@Controller
@RequestMapping("/dep")
public class DepController {

	@Resource
	IStaffService staffService;
	@Resource
	IDepService depService = null;
	
	@RequestMapping("/depSelect")
	public ModelAndView index() {
		List<Staff> allStaff = staffService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/dep_select");
		return mv;
	}
	
	@RequestMapping("/selectDep/{id}")
	public ModelAndView selectDep(@PathVariable("id") Integer id) {
		Staff staff = staffService.selectByPrimaryKey(id);
		List<Department> allDep = depService.selectAllDepartment();
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.addObject("allDep", allDep);
		mv.setViewName("/page/dep_do");
		return mv;
	}
	
	@RequestMapping("/doSelect/{staffId}/{depId}")
	public ModelAndView doSelect(@PathVariable("staffId") Integer staffId,
			@PathVariable("depId") Integer depId) {
		Department dep = depService.selectDepNameByPrimaryKey(depId);
		Staff staff = staffService.selectByPrimaryKey(staffId);
		//log
		DepLog log = new DepLog();
		log.setDate(new Date());
		log.setNow(dep.getName());
		log.setOriginal(staff.getHiredDepartment());
		log.setStaffId(staffId);
		int i = depService.insertSelective(log);
		
		//staff
		staff.setHiredDepartment(dep.getName());
		i += staffService.updateByPrimaryKeySelective(staff);
		
		ModelAndView mv = new ModelAndView();
		List<Staff> allStaff = staffService.selectAll();
		mv.addObject("allStaff", allStaff);
		if (i == 2) {
			mv.addObject("message1","部門调动成功！");
		}else{
			mv.addObject("message1","部门调动失败！");
		}
		mv.setViewName("/page/dep_select");
		return mv;
		
	}
	
	@RequestMapping("/depAll")
	public ModelAndView dutyAll() {
		List<DepLog>  allDepLog = depService.selectById(null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("allDutyLog", allDepLog);
		mv.setViewName("/page/dep_all");
		return mv;
	}

}
