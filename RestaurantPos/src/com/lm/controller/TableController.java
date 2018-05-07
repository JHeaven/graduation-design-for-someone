package com.lm.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lm.model.Table;
import com.lm.service.ITableService;

@Controller
@RequestMapping("/table")
public class TableController {

	
	@Resource
	ITableService tableService;
	
	@RequestMapping("/go")
	public ModelAndView go() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/table_add");
		return mv;
	}
	
	@RequestMapping("/doAdd")
	public ModelAndView go(Table table) {
		table.setPs("无");
		table.setDeleted(0);
		
		ModelAndView mv = new ModelAndView();
		if (tableService.insertSelective(table)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Table> allTable = tableService.all();
		mv.addObject("allTable",allTable);
		mv.setViewName("/sub/table_all");
		return mv;
	}
	
	

	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<Table> allTable = tableService.all();
		mv.addObject("allTable",allTable);
		mv.setViewName("/sub/table_all");
		return mv;
	}
	
	

	@RequestMapping("/update/{id}")
	public ModelAndView update(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		Table table = tableService.selectByPrimaryKey(id);
		mv.addObject("table",table);
		mv.setViewName("/sub/table_update");
		return mv;
	}
	
	

	@RequestMapping("/doupdate")
	public ModelAndView doupdate(Table table) {
		ModelAndView mv = new ModelAndView();
		if (tableService.updateByPrimaryKeySelective(table)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Table> allTable = tableService.all();
		mv.addObject("allTable",allTable);
		mv.setViewName("/sub/table_all");
		return mv;
	}
	

	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (tableService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.upText(\"操作成功！\");");
		}else{
			mv.addObject("message", "window.parent.frames.upText(\"操作失败！\");");
		}
		List<Table> allTable = tableService.all();
		mv.addObject("allTable",allTable);
		mv.setViewName("/sub/table_all");
		return mv;
	}
	
}
