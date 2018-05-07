package com.lm.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lm.model.MenuWithBLOBs;
import com.lm.service.IMenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {

	@Resource
	IMenuService menuService = null;

	@RequestMapping("/go")
	public ModelAndView go() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/menu_add");
		return mv;
	}
	
	@RequestMapping("/doAdd")
	public ModelAndView doAdd(MenuWithBLOBs menu) {
		
		ModelAndView mv = new ModelAndView();

		String content = menu.getContent();
		int firstIndex = content.indexOf("<img src=\"");
		if (firstIndex < 0) {
			menu.setPhoto(null);
		}else{
			firstIndex += 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" data-filename=\"");
			content = content.substring(0, nextIndex);
			menu.setPhoto(content);
		}
		menu.setPs("无");
		menu.setDeleted(0);
		if (menuService.insertSelective(menu)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		mv.setViewName("/sub/menu_add");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<MenuWithBLOBs> allMenu = menuService.all();
		mv.addObject("allMenu", allMenu);
		mv.setViewName("/sub/menu_all");
		return mv;
	}
	
	@RequestMapping("/doUpdate")
	public ModelAndView doUpdate(MenuWithBLOBs menu) {
		ModelAndView mv = new ModelAndView();
		
		if (menuService.updateByPrimaryKeySelective(menu)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<MenuWithBLOBs> allMenu = menuService.all();
		mv.addObject("allMenu", allMenu);
		mv.setViewName("/sub/menu_all");
		return mv;
	}
	
	
	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		MenuWithBLOBs menu = menuService.selectByPrimaryKey(id);
		mv.addObject("menu",menu);
		mv.setViewName("/sub/menu_update");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (menuService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		
		List<MenuWithBLOBs> allMenu = menuService.all();
		mv.addObject("allMenu", allMenu);
		mv.setViewName("/sub/menu_all");
		return mv;
	}
	
	
}
