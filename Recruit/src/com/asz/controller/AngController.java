package com.asz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Ang;
import com.asz.model.News;
import com.asz.service.IAngService;

@Controller
@RequestMapping("/ang")
public class AngController {
	
	@Resource
	IAngService angService;
	
	@RequestMapping("/add")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/ang_add");
		return mv;
	}
	
	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(Ang n) {
		ModelAndView mv = new ModelAndView();
		n.setDeleted(0);
		if (angService.insertSelective(n)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.upText(\"操作失敗\");");
		}
		mv.setViewName("/sub/ang_add");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Ang> allAng = angService.selectall();
		for (Ang ang : allAng) {
			ang.setContent(stripHtml(ang.getContent()));
			if (ang.getContent().length()>30) {
				ang.setContent(ang.getContent().substring(0,30));
			}
		}
		mv.addObject("allAng",allAng);
		mv.setViewName("/sub/ang_all");
		return mv;
	}
	
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Ang ang = angService.selectByPrimaryKey(id);
		mv.addObject("n",ang);
		mv.setViewName("/sub/ang_select");
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
