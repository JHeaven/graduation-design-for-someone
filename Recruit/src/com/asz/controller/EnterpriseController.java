package com.asz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Enterprise;
import com.asz.model.Resume;
import com.asz.service.IEnterpriseService;

@Controller
@RequestMapping("/enterprise")
public class EnterpriseController {

	@Resource
	IEnterpriseService enterpriseService;
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Enterprise en = enterpriseService.selectByPrimaryKey(id);
		mv.addObject("en",en);
		mv.setViewName("/sub/enterprise_update");
		return mv;
	}
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Enterprise en = enterpriseService.selectByPrimaryKey(id);
		mv.addObject("en",en);
		mv.setViewName("/sub/enterprise_select");
		return mv;
	}
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(Enterprise en) {
		
		ModelAndView mv = new ModelAndView();
		
		if (enterpriseService.updateByPrimaryKeySelective(en)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		
		mv.addObject("en",en);
		mv.setViewName("/sub/enterprise_update");
		return mv;
	}
	
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Enterprise> allEn = enterpriseService.all();
		mv.addObject("allEn",allEn);
		mv.setViewName("/sub/enterprise_all");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Enterprise re = new Enterprise();
		re.setId(id);
		if (enterpriseService.updateByPrimaryKey(re)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		List<Enterprise> allEn = enterpriseService.all();
		mv.addObject("allEn",allEn);
		mv.setViewName("/sub/enterprise_all");
		return mv;
	}
	
}
