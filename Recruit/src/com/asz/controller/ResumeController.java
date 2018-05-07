package com.asz.controller;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Resume;
import com.asz.model.User;
import com.asz.service.IResumeService;

@Controller
@RequestMapping("/re")
public class ResumeController {
	
	@Resource
	IResumeService resumeService;
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Resume re = resumeService.selectByPrimaryKey(id);
		mv.addObject("re",re);
		mv.setViewName("/sub/resume_update");
		return mv;
	}
	
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Resume re = resumeService.selectByPrimaryKey(id);
		mv.addObject("re",re);
		mv.setViewName("/sub/resume_select");
		return mv;
	}
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(Resume re) {
		
		ModelAndView mv = new ModelAndView();
		
		String content = re.getIdea();
		int firstIndex = content.indexOf("<img src=\"");
		if (firstIndex < 0) {
			re.setPhoto(null);
		} else {
			firstIndex += 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			re.setPhoto(content);
		}
		
		
		if (resumeService.updateByPrimaryKeySelective(re)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		
		mv.addObject("re",re);
		mv.setViewName("/sub/resume_update");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Resume> allRe = resumeService.all();
		mv.addObject("allRe",allRe);
		mv.setViewName("/sub/resume_all");
		return mv;
	}
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		Resume re = new Resume();
		re.setId(id);
		if (resumeService.updateByPrimaryKey(re)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		
		List<Resume> allRe = resumeService.all();
		mv.addObject("allRe",allRe);
		mv.setViewName("/sub/resume_all");
		return mv;
	}
	
}
