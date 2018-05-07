package com.asz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Enterprise;
import com.asz.model.Position;
import com.asz.service.IEnterpriseService;
import com.asz.service.IPositionService;

@Controller
@RequestMapping("/position")
public class PositionController {

	@Resource
	IPositionService positionService;
	@Resource
	IEnterpriseService enterpriseService;

	@RequestMapping("/add/{id}")
	public ModelAndView index(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Enterprise en = enterpriseService.selectByPrimaryKey(id);
		mv.addObject("en",en);
		mv.setViewName("/sub/position_add");
		return mv;
	}
	
	
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Position po = positionService.selectByPrimaryKey(id);
		mv.addObject("po",po);
		mv.setViewName("/sub/position_update");
		return mv;
	}
	

	@RequestMapping("/doadd")
	public ModelAndView doadd(Position po) {
		ModelAndView mv = new ModelAndView();
		po.setDeleted(0);
		if (positionService.insertSelective(po)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		mv.setViewName("/sub/position_add");
		return mv;
	}
	
	
	
	
	
	@RequestMapping("/show/{id}")
	public ModelAndView show(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		List<Position> allPo = positionService.selectByEnter(id);
		mv.addObject("allPo",allPo);
		mv.setViewName("/sub/position_show");
		return mv;
	}
	
	

	
	@RequestMapping("/showall")
	public ModelAndView showall() {
		ModelAndView mv = new ModelAndView();
		List<Position> allPo = positionService.selectByEnter(null);
		for (Position position : allPo) {
			position.setEnterName(enterpriseService.selectByPrimaryKey(position.getUserId()).getName());
		}
		mv.addObject("allPo",allPo);
		mv.setViewName("/sub/position_showall");
		return mv;
	}
	
	

	
	@RequestMapping("/search")
	public ModelAndView search(Position po) {
		ModelAndView mv = new ModelAndView();
		List<Position> allPo = positionService.selectMohu(po.getTitle());
		for (Position position : allPo) {
			position.setEnterName(enterpriseService.selectByPrimaryKey(position.getUserId()).getName());
		}
		mv.addObject("allPo",allPo);
		mv.addObject("po",po);
		mv.setViewName("/sub/position_showall_s");
		return mv;
	}
	

	

	@RequestMapping("/doupdate")
	public ModelAndView doupdate(Position po) {
		ModelAndView mv = new ModelAndView();

		if (positionService.updateByPrimaryKeySelective(po)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		List<Position> allPo = positionService.selectByEnter(po.getUserId());
		mv.addObject("allPo",allPo);
		mv.setViewName("/sub/position_show");
		return mv;
	}
	
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(Position po) {
		
		ModelAndView mv = new ModelAndView();
		
		po.setDeleted(0);
		
		if (positionService.insertSelective(po)>0) {
			mv.addObject("message","window.parent.frames.upText(\"操作成功\");");
		}else{
			mv.addObject("message","window.parent.frames.upText(\"操作失敗\");");
		}
		
		Enterprise en = enterpriseService.selectByPrimaryKey(po.getUserId());
		mv.addObject("en",en);
		mv.setViewName("/sub/position_add");
		return mv;
	}
	
	
}
