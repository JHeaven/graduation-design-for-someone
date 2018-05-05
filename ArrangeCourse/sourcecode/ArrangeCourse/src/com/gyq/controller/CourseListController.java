package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Class;
import com.gyq.model.Course;
import com.gyq.model.CourseList;
import com.gyq.model.Teacher;
import com.gyq.service.IClassService;
import com.gyq.service.ICourseListService;
import com.gyq.service.ICourseService;
import com.gyq.service.ITeacherService;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/list")
public class CourseListController {
	
	@Resource
	IClassService classService;
	@Resource
	ICourseService courseService;
	@Resource
	ITeacherService teacherService;
	@Resource
	ICourseListService courseListService;
	
	@RequestMapping("/first")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Class> allCl = classService.selectall();
		List<Course> allCo = courseService.selectall();
		List<Teacher> allTea = teacherService.selectall();
		mv.addObject("allTea",allTea);
		mv.addObject("allCo",allCo);
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/list_first");
		return mv;
	}
	
	
	
	@RequestMapping("/dofirst")
	public ModelAndView dofirst(CourseList col) {
		ModelAndView mv = new ModelAndView();
		col.setDeleted(0);
		col.setClassName(classService.selectByPrimaryKey(col.getClassId()).getName());
		col.setNum(classService.selectByPrimaryKey(col.getClassId()).getNum());
		col.setcName(courseService.selectByPrimaryKey(col.getcId()).getName());
		col.setcType(courseService.selectByPrimaryKey(col.getcId()).getType());
		col.settName(teacherService.selectByPrimaryKey(Integer.parseInt(col.gettId())).getName());
		
		System.out.println("catch:"+col);
		if (courseListService.insertSelective(col)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"綁定班級課程成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"綁定班級課程失败！\");");
		}
		
		List<Class> allCl = classService.selectall();
		List<Course> allCo = courseService.selectall();
		List<Teacher> allTea = teacherService.selectall();
		mv.addObject("allTea",allTea);
		mv.addObject("allCo",allCo);
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/list_first");
		return mv;
	}
	
	
	
	
	@RequestMapping("/showall")
	public ModelAndView showall() {
		ModelAndView mv = new ModelAndView();
		List<CourseList> allList = courseListService.selectall();
		mv.addObject("allList",allList);
		mv.setViewName("/sub/list_all");
		return mv;
	}
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		if (courseListService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"删除成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"删除失败！\");");
		}
		List<CourseList> allList = courseListService.selectall();
		mv.addObject("allList",allList);
		mv.setViewName("/sub/list_all");
		return mv;
	}
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		CourseList list = courseListService.selectByPrimaryKey(id);
		List<Class> allCl = classService.selectall();
		List<Course> allCo = courseService.selectall();
		List<Teacher> allTea = teacherService.selectall();
		mv.addObject("allTea",allTea);
		mv.addObject("allCo",allCo);
		mv.addObject("allCl",allCl);
		mv.addObject("list",list);
		mv.setViewName("/sub/list_update");
		return mv;
	}
	
	
	
	
	
	@RequestMapping("/doupdate")
	public ModelAndView doupdate(CourseList col) {
		ModelAndView mv = new ModelAndView();
		col.setDeleted(0);
		col.setClassName(classService.selectByPrimaryKey(col.getClassId()).getName());
		col.setNum(classService.selectByPrimaryKey(col.getClassId()).getNum());
		col.setcName(courseService.selectByPrimaryKey(col.getcId()).getName());
		col.setcType(courseService.selectByPrimaryKey(col.getcId()).getType());
		col.settName(teacherService.selectByPrimaryKey(Integer.parseInt(col.gettId())).getName());
		
		System.out.println("catch:"+col);
		if (courseListService.updateByPrimaryKeySelective(col)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"修改成功！\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"修改失败！\");");
		}
		
		List<CourseList> allList = courseListService.selectall();
		mv.addObject("allList",allList);
		mv.setViewName("/sub/list_all");
		return mv;
	}
	
	
	
}
