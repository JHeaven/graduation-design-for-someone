package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.service.IClassService;
import com.gyq.model.Class;
import com.gyq.model.Course;

/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/class")
public class ClassController {
	@Resource
	IClassService classService;
	
	@RequestMapping("/goadd")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/class_add");
		return mv;
	}
	
	

	@RequestMapping("/doadd")
	public ModelAndView doadd(Class cl) {
		cl.setDeleted(0);
		ModelAndView mv = new ModelAndView();
		if (classService.insertSelective(cl)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		mv.setViewName("/sub/course_add");
		return mv;
	}
	
	
	
	@RequestMapping("/go/{id}")
	public ModelAndView go(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Class cl = classService.selectByPrimaryKey(id);
		mv.addObject("co",cl);
		mv.setViewName("/sub/class_update");
		return mv;
	}

	@RequestMapping("/dogo")
	public ModelAndView dogo(Class co) {
		ModelAndView mv = new ModelAndView();
		if (classService.updateByPrimaryKeySelective(co)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Class> allCl = classService.selectall();
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/class_all");
		return mv;
	}
	
	
	
	@RequestMapping("/showall")
	public ModelAndView showall() {
		List<Class> allCl = classService.selectall();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/class_all");
		return mv;
	}
	
	
	

	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		
		ModelAndView mv = new ModelAndView();
		if (classService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Class> allCl = classService.selectall();
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/class_all");
		return mv;
	}
	
	
	
}
