package com.asz.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.logging.log4j.core.config.plugins.validation.constraints.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.asz.model.Log;
import com.asz.service.ILogService;

@Controller
@RequestMapping("/log")
public class LogController {
	@Resource
	ILogService logService;
	@RequestMapping("/all")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		List<Log> allLog = logService.all();
		mv.addObject("allLog",allLog);
		mv.setViewName("/sub/log_show");
		return mv;
	}
	
}
