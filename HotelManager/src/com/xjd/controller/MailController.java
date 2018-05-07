package com.xjd.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xjd.model.EMail;
import com.xjd.model.Users;
import com.xjd.service.IUserService;
import com.xjd.utils.SendmailUtil;

@Controller
@RequestMapping("/mail")
public class MailController {
	
	@Resource
	IUserService userService = null;
	
	
	@RequestMapping("/goto")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/email_send");
		return mv;
	}
	
	

	@RequestMapping("/do")
	public ModelAndView doit(EMail mail) {
		ModelAndView mv = new ModelAndView();
		SendmailUtil se = new SendmailUtil();
		List<Users> allUser = userService.all();
		int i = 0;
		for (Users users : allUser) {
			if (null != users.getEmail() && !"".equals(users.getEmail())) {
				se.doSendHtmlEmail(mail.getTitle(), mail.getContent(), users.getEmail());
				i++;
			}
		}
		mv.addObject("message", "window.parent.frames.toastrInfo(\"成功群发 "+i+" 封邮件！\");");
		mv.setViewName("/sub/email_send");
		return mv;
	}
	
}
