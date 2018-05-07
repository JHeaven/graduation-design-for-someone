package com.mebx.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mebx.model.News;
import com.mebx.service.INewsService;

@Controller
@RequestMapping("/new")
public class NewsController {
	@Resource
	INewsService newsService;
	
	@RequestMapping("/add")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/new_add");
		return mv;
	}
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectall();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	
	
	@RequestMapping("/show")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView();
		List<News> allNews = newsService.selectall();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_show");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (newsService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<News> allNews = newsService.selectall();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	
	@RequestMapping("/reset/{id}")
	public ModelAndView reset(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		News n = newsService.selectByPrimaryKey(id);
		mv.addObject("n",n);
		mv.setViewName("/sub/new_update");
		return mv;
	}
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(News n) {
		ModelAndView mv = new ModelAndView();
		if (newsService.updateByPrimaryKeySelective(n)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		List<News> allNews = newsService.selectall();
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(News n) {
		ModelAndView mv = new ModelAndView();
		n.setCreatTime(new Date());
		n.setDeleted(0);
		if (newsService.insertSelective(n)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		mv.setViewName("/sub/new_add");
		return mv;
	}
	
	
	public String stripHtml(String content) { 
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
