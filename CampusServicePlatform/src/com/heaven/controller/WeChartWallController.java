package com.heaven.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Wechartwall;
import com.heaven.service.IWechartwall;
/**
 * 微信墙消息接受
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/weichartwall")
public class WeChartWallController {
	
	@Resource
	IWechartwall wechartwall = null;
	
	/**
	 * 微信墙初始化
	 * @return
	 */
	
	@RequestMapping("/getFirstSite")
	public ModelAndView getFirstSite(){
		System.out.println("微信墙初始化");
		ModelAndView mv = new ModelAndView();
		List<Wechartwall> firstWall = wechartwall.selectByFirst();
		mv.addObject("firstWall",firstWall);
		mv.addObject("lastId",firstWall.get(0).getId());
		mv.setViewName("weChartWall");
		System.out.println("微信墙初始化结束");
		return mv;
	}
	
	
	/**
	 * 微信墙下一页
	 * @param lastID
	 * @return
	 */
	@RequestMapping("/getNextSite")
	@ResponseBody
	public List<Wechartwall> getNextSite(@RequestParam("lastID")int lastID){
		System.out.println("微信墙下一页");
		List<Wechartwall> firstWall = wechartwall.selectByNext(lastID);
		return firstWall;
	}
	
}
