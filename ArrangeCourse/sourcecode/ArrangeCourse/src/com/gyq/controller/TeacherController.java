package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Course;
import com.gyq.model.Teacher;
import com.gyq.service.ITeacherService;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/tea")
public class TeacherController {
	
	@Resource
	ITeacherService teacherService;
	
	
	@RequestMapping("/goadd")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/teacher_add");
		return mv;
	}
	
	

	@RequestMapping("/go/{id}")
	public ModelAndView go(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Teacher teacher = teacherService.selectByPrimaryKey(id);
		mv.addObject("co",teacher);
		mv.setViewName("/sub/teacher_update");
		return mv;
	}
	
	@RequestMapping("/dogo")
	public ModelAndView dogo(Teacher co) {
		ModelAndView mv = new ModelAndView();
		if (teacherService.updateByPrimaryKeySelective(co)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Teacher> allTea = teacherService.selectall();
		mv.addObject("allTea",allTea);
		mv.setViewName("/sub/teacher_all");
		return mv;
	}
	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(Teacher tea) {
		tea.setDeleted(0);
		ModelAndView mv = new ModelAndView();
		if (teacherService.insertSelective(tea)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		mv.setViewName("/sub/teacher_add");
		return mv;
	}
	
	

	@RequestMapping("/showall")
	public ModelAndView showall() {
		List<Teacher> allTea = teacherService.selectall();
		ModelAndView mv = new ModelAndView();
		mv.addObject("allTea",allTea);
		mv.setViewName("/sub/teacher_all");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (teacherService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失败！\");");
		}
		List<Teacher> allTea = teacherService.selectall();
		mv.addObject("allTea",allTea);
		mv.setViewName("/sub/teacher_all");
		return mv;
	}


}
