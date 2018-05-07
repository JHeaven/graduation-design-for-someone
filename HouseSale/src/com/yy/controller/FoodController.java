package com.yy.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.yy.model.Food;
import com.yy.model.News;
import com.yy.service.IFoodService;
import com.yy.service.INewsService;

@Controller
@RequestMapping("/food")
public class FoodController {
	@Resource
	IFoodService foodService = null;
	
	
	@RequestMapping("/goToAdd")
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/food_Add");
		return mv;
	}
	
	@RequestMapping("/addNew")
	public ModelAndView addNew(Food food) {
		food.setDeleted(0);
		food.setUpTime(new Date());
		ModelAndView mv = new ModelAndView();
		if (foodService.insertSelective(food)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
		}
		mv.setViewName("/sub/food_Add");
		return mv;
	}
	
	
	@RequestMapping("/newsShow")
	public ModelAndView newsShow() {
		ModelAndView mv = new ModelAndView();
		List<Food> allNews = foodService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/food_show");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView newsShow(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (foodService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
		}
		List<Food> allNews = foodService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/food_show");
		return mv;
	}
	
	

	@RequestMapping("/show")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView();
		List<Food> allNews = foodService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/food_show_f");
		return mv;
	}
	
}
