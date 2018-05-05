package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Course;
import com.gyq.service.ICourseService;

/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/course")
public class CourseController {
	
	
	@Resource
	ICourseService courseService;
	
	@RequestMapping("/goadd")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/course_add");
		return mv;
	}
	
	@RequestMapping("/go/{id}")
	public ModelAndView go(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Course course = courseService.selectByPrimaryKey(id);
		mv.addObject("co",course);
		mv.setViewName("/sub/course_update");
		return mv;
	}
	
	
	@RequestMapping("/dogo")
	public ModelAndView dogo(Course co) {
		ModelAndView mv = new ModelAndView();
		if (courseService.updateByPrimaryKeySelective(co)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Course> allCo = courseService.selectall();
		mv.addObject("allCo",allCo);
		mv.setViewName("/sub/course_all");
		return mv;
	}
	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(Course co) {
		co.setDeleted(0);
		ModelAndView mv = new ModelAndView();
		if (courseService.insertSelective(co)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		mv.setViewName("/sub/course_add");
		return mv;
	}
	
	
	@RequestMapping("/showall")
	public ModelAndView showall() {
		List<Course> allCo = courseService.selectall();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allCo",allCo);
		mv.setViewName("/sub/course_all");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		
		
		ModelAndView mv = new ModelAndView();
		if (courseService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Course> allCo = courseService.selectall();
		mv.addObject("allCo",allCo);
		mv.setViewName("/sub/course_all");
		return mv;
	}
	
	
}
