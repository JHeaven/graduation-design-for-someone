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
 * ΢��ǽ��Ϣ����
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/weichartwall")
public class WeChartWallController {
	
	@Resource
	IWechartwall wechartwall = null;
	
	/**
	 * ΢��ǽ��ʼ��
	 * @return
	 */
	
	@RequestMapping("/getFirstSite")
	public ModelAndView getFirstSite(){
		System.out.println("΢��ǽ��ʼ��");
		ModelAndView mv = new ModelAndView();
		List<Wechartwall> firstWall = wechartwall.selectByFirst();
		mv.addObject("firstWall",firstWall);
		mv.addObject("lastId",firstWall.get(0).getId());
		mv.setViewName("weChartWall");
		System.out.println("΢��ǽ��ʼ������");
		return mv;
	}
	
	
	/**
	 * ΢��ǽ��һҳ
	 * @param lastID
	 * @return
	 */
	@RequestMapping("/getNextSite")
	@ResponseBody
	public List<Wechartwall> getNextSite(@RequestParam("lastID")int lastID){
		System.out.println("΢��ǽ��һҳ");
		List<Wechartwall> firstWall = wechartwall.selectByNext(lastID);
		return firstWall;
	}
	
}
