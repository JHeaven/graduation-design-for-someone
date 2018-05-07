package com.heaven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("/hello")
	public String hello(Model model){
		String name = "I am Your King ! 我是你的王！";
        model.addAttribute("name", name);
		return "hello";
	}
}
