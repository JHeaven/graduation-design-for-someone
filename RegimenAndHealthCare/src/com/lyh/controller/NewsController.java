package com.lyh.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lyh.model.News;
import com.lyh.service.INewsService;

@Controller
@RequestMapping("/new")
public class NewsController {
	@Resource
	INewsService newsService = null;
	
	
	@RequestMapping("/goToAdd")
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/new_Add");
		return mv;
	}
	
	@RequestMapping("/addNew")
	public ModelAndView addNew(News news) {
		news.setDeleted(0);
		news.setUpTime(new Date());
		ModelAndView mv = new ModelAndView();
		if (newsService.insertSelective(news)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
		}
		mv.setViewName("/sub/new_Add");
		return mv;
	}
	
	
	@RequestMapping("/newsShow")
	public ModelAndView newsShow() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_show");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView newsShow(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (newsService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ���\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ�ܣ�\");");
		}
		List<News> allNews = newsService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_show");
		return mv;
	}
	
	
	
	@RequestMapping("/show")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_show_f");
		return mv;
	}
	
	
}
