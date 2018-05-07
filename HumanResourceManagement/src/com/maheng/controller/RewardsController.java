package com.maheng.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maheng.model.DutyLog;
import com.maheng.model.Rewards;
import com.maheng.model.Staff;
import com.maheng.service.IRewardsService;
import com.maheng.service.IStaffService;

@Controller
@RequestMapping("/rewards")
public class RewardsController {

	@Resource
	IStaffService staffService = null;
	@Resource
	IRewardsService rewardsService = null;

	@RequestMapping("/rewardsSelect")
	public ModelAndView index() {
		List<Staff> allStaff = staffService.selectAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/rewards_select");
		return mv;
	}

	@RequestMapping("/goToRewards/{id}")
	public ModelAndView goToRewards(@PathVariable("id") Integer id) {
		Staff staff = staffService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("staff", staff);
		mv.setViewName("/page/rewards_doRe");
		return mv;
	}

	@RequestMapping("/doRewards")
	public ModelAndView doRewards(Rewards reward) {
		System.out.println("rewards = " + reward);
		List<Staff> allStaff = staffService.selectAll();
		reward.setDate(new Date());
		ModelAndView mv = new ModelAndView();
		if (rewardsService.insertSelective(reward) > 0) {
			mv.addObject("message1", "奖惩成功！");
		} else {
			mv.addObject("message1", "奖惩失败！");
		}
		mv.addObject("allStaff", allStaff);
		mv.setViewName("/page/rewards_select");
		return mv;
	}
	
	
	@RequestMapping("/rewardsAll")
	public ModelAndView dutyAll() {
		List<Rewards> allRewards = rewardsService.selectById(null);
		ModelAndView mv = new ModelAndView();
		mv.addObject("allRewards", allRewards);
		mv.setViewName("/page/rewards_all");
		return mv;
	}
	
	
	@RequestMapping("/cancel/{id}")
	public ModelAndView cancel(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (rewardsService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message1","撤销成功！");
		}
		List<Rewards> allRewards = rewardsService.selectById(null);
		mv.addObject("allRewards", allRewards);
		mv.setViewName("/page/rewards_all");
		return mv;
	}
}
