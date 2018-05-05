package com.gyq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gyq.model.Class;
import com.gyq.model.ClassCourse;
import com.gyq.model.Section;
import com.gyq.service.IClassService;
import com.gyq.service.ISectionService;
/**
 * 
 * @author Jiang Yu Qin
 *
 */
@Controller
@RequestMapping("/kebiao")
public class KeBiaoController {
	@Resource
	IClassService classService;
	@Resource
	ISectionService sectionService;
	
	@RequestMapping("/go")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Class> allCl = classService.selectall();
		mv.addObject("allCl",allCl);
		mv.setViewName("/sub/kebiao");
		return mv;
	}
	
	
	@RequestMapping("/selectClass")
	public ModelAndView selectClass(@RequestParam("classId")Integer classId) {
		ModelAndView mv = new ModelAndView();
		Class selectedClass = classService.selectByPrimaryKey(classId);
		List<Section> allSec = sectionService.selectall();
		ClassCourse cc = new ClassCourse();
		for (Section section : allSec) {
			if (selectedClass.getName().equals(section.getLe1Class())) {
				cc.getX1s1().add(section);
			}
			if (selectedClass.getName().equals(section.getLe2Class())) {
				cc.getX1s2().add(section);
			}
			if (selectedClass.getName().equals(section.getLe3Class())) {
				cc.getX1x1().add(section);
			}
			if (selectedClass.getName().equals(section.getLe4Class())) {
				cc.getX1x2().add(section);
			}
			if (selectedClass.getName().equals(section.getLe5Class())) {
				cc.getX1w1().add(section);
			}
		}
		
		
		List<Class> allCl = classService.selectall();
		mv.addObject("allCl",allCl);
		mv.addObject("selectedClass",selectedClass);
		mv.addObject("cc",cc);
		mv.setViewName("/sub/kebiao");
		return mv;
	}
}
