package com.xjd.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.model.News;
import com.xjd.service.INewsService;

@Controller
@RequestMapping("/new")
public class NewsController {
	@Resource
	INewsService newsService = null;
	
	
	@RequestMapping("/add")
	public ModelAndView goToAdd() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/new_add");
		return mv;
	}
	
	@RequestMapping("/addNew")
	public ModelAndView addNew(News news) {
		news.setDeleted(0);
		news.setUpTime(new Date());
		ModelAndView mv = new ModelAndView();
		if (newsService.insertSelective(news)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		mv.setViewName("/sub/new_add");
		return mv;
	}
	
	
	@RequestMapping("/newsShow")
	public ModelAndView newsShow() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectAll();
		for (News news : allNews) {
			news.setContent(stripHtml(news.getContent()));
			if (news.getContent().length()>300) {
				news.setContent(news.getContent().substring(0,300));
			}
		}
		
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView newsShow(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (newsService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.toastrInfo(\"操作失败！\");");
		}
		List<News> allNews = newsService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	

	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		News news = newsService.selectByPrimaryKey(id);
		mv.addObject("n",news);
		mv.setViewName("/sub/new_select");
		return mv;
	}
	
	
	
	
	@RequestMapping("/shownew")
	public ModelAndView shownew() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectAll();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_show_f");
		return mv;
	}
	
	public static String stripHtml(String content) { 
		// <p>段落替换为换行 
		content = content.replaceAll("<p .*?>", "\r\n"); 
		// <br><br/>替换为换行 
		content = content.replaceAll("<br\\s*/?>", "\r\n"); 
		// 去掉其它的<>之间的东西 
		content = content.replaceAll("\\<.*?>", ""); 
		// 还原HTML 
		// content = HTMLDecoder.decode(content); 
		return content; 
		}
}
