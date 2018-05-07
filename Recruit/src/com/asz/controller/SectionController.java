package com.asz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Enterprise;
import com.asz.model.Position;
import com.asz.model.Section;
import com.asz.service.IEnterpriseService;
import com.asz.service.IPositionService;
import com.asz.service.ISectionService;
import com.asz.service.IUserService;

@Controller
@RequestMapping("/section")
public class SectionController {
	@Resource
	ISectionService sectionService;
	@Resource
	IEnterpriseService enterpriseService;
	@Resource
	IUserService userService;
	@Resource
	IPositionService positionService;
	
	@RequestMapping("/add/{id}/{userId}")
	public ModelAndView update(@PathVariable("id")Integer id,@PathVariable("userId")Integer userId) {
		ModelAndView mv = new ModelAndView();
		Section section = new Section();
		section.setUserId(userId);
		section.setEnterId(id);
		section.setCreateTime(new Date());
		section.setDeleted(0);
		section.setEnterName(enterpriseService.selectByPrimaryKey(positionService.selectByPrimaryKey(id).getUserId()).getName());
		section.setUserName(userService.selectByPrimaryKey(userId).getLoginName());
		section.setPs(enterpriseService.selectByPrimaryKey(positionService.selectByPrimaryKey(id).getUserId()).getId()+"");
		
		if (sectionService.insertSelective(section)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		List<Position> allPo = positionService.selectByEnter(null);
		for (Position position : allPo) {
			position.setEnterName(enterpriseService.selectByPrimaryKey(position.getUserId()).getName());
		}
		mv.addObject("allPo",allPo);
		mv.setViewName("/sub/position_showall");
		return mv;
	}
	
	
	@RequestMapping("/my/{id}")
	public ModelAndView my(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		List<Section> allSec = sectionService.selectByUser(id);
		for (Section section : allSec) {
			section.setPosition(positionService.selectByPrimaryKey(section.getEnterId()).getTitle());
		}
		mv.addObject("allSec",allSec);
		mv.setViewName("/sub/section_my");
		return mv;
	}
	
	
	
	@RequestMapping("/showOfEn/{id}")
	public ModelAndView showOfEn(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		List<Section> allSec = sectionService.selectByEn(id+"");
		
		for (Section section : allSec) {
			section.setPosition(positionService.selectByPrimaryKey(section.getEnterId()).getTitle());
		}
		mv.addObject("allSec",allSec);
		mv.setViewName("/sub/section_En");
		return mv;
	}
	
	
	
	@RequestMapping("/go/{id}")
	public ModelAndView go(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		Section section1 = sectionService.selectByPrimaryKey(id);
		section1.setDeleted(1);//go
		
		if (sectionService.updateByPrimaryKeySelective(section1)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		

		
		
		List<Section> allSec = sectionService.selectByEn(section1.getPs());
		
		for (Section section : allSec) {
			section.setPosition(positionService.selectByPrimaryKey(section.getEnterId()).getTitle());
		}
		mv.addObject("allSec",allSec);
		mv.setViewName("/sub/section_En");
		return mv;
	}
	
	
	@RequestMapping("/pass/{id}")
	public ModelAndView pass(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		
		Section section1 = sectionService.selectByPrimaryKey(id);
		section1.setDeleted(2);//pass
		
		if (sectionService.updateByPrimaryKeySelective(section1)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		
		
		List<Section> allSec = sectionService.selectByEn(section1.getPs());
		
		for (Section section : allSec) {
			section.setPosition(positionService.selectByPrimaryKey(section.getEnterId()).getTitle());
		}
		mv.addObject("allSec",allSec);
		mv.setViewName("/sub/section_En");
		return mv;
	}
	
	
	
	@RequestMapping("/del/{id}/{userId}")
	public ModelAndView del(@PathVariable("id")Integer id,@PathVariable("userId")Integer userId) {
		ModelAndView mv = new ModelAndView();
		
		if (sectionService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		List<Section> allSec = sectionService.selectByUser(userId);
		for (Section section : allSec) {
			section.setPosition(positionService.selectByPrimaryKey(section.getEnterId()).getTitle());
		}
		mv.addObject("allSec",allSec);
		mv.setViewName("/sub/section_my");
		return mv;
	}
	
	
	
	
}
