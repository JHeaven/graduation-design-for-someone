package com.asz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.News;
import com.asz.service.INewsService;

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
		for (News news : allNews) {
			news.setContent(stripHtml(news.getContent()));
			if (news.getContent().length()>30) {
				news.setContent(news.getContent().substring(0,30));
			}
		}
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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ�\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ��\");");
		}
		List<News> allNews = newsService.selectall();
		for (News news : allNews) {
			news.setContent(stripHtml(news.getContent()));
			if (news.getContent().length()>30) {
				news.setContent(news.getContent().substring(0,30));
			}
		}
		mv.addObject("allNews",allNews);
		mv.setViewName("/sub/new_all");
		return mv;
	}
	
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		News n = newsService.selectByPrimaryKey(id);
		mv.addObject("n",n);
		mv.setViewName("/sub/new_select");
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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ�\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ��\");");
		}
		
		List<News> allNews = newsService.selectall();
		for (News news : allNews) {
			news.setContent(stripHtml(news.getContent()));
			if (news.getContent().length()>30) {
				news.setContent(news.getContent().substring(0,30));
			}
		}
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
			mv.addObject("message", "window.parent.frames.upText(\"�����ɹ�\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"����ʧ��\");");
		}
		mv.setViewName("/sub/new_add");
		return mv;
	}
	
	
	public String stripHtml(String content) { 
		// <p>�����滻Ϊ���� 
		content = content.replaceAll("<p .*?>", "\r\n"); 
		// <br><br/>�滻Ϊ���� 
		content = content.replaceAll("<br\\s*/?>", "\r\n"); 
		// ȥ��������<>֮��Ķ��� 
		content = content.replaceAll("\\<.*?>", ""); 
		// ��ԭHTML 
		// content = HTMLDecoder.decode(content); 
		return content; 
		}
}
