package com.tsq.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tsq.model.BookType;
import com.tsq.model.Sign;
import com.tsq.service.IBookTypeService;
import com.tsq.service.ISignService;

@Controller
@RequestMapping("/sta")
public class StatisticsController {

	@Resource
	ISignService signService;
	
	@Resource
	IBookTypeService bookTypeService;
	
	@RequestMapping("/statistics")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Sign> allSign = signService.tj();
		List<BookType>  allType = bookTypeService.selectAll();
		mv.addObject("allType",allType);
		mv.addObject("allSign",allSign);
		mv.setViewName("/sub/statistic");
		return mv;
	}
}
