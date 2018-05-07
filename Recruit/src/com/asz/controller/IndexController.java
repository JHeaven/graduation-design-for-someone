package com.asz.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.asz.constance.Constance;
import com.asz.model.Enterprise;
import com.asz.model.Resume;
import com.asz.model.User;
import com.asz.service.IEnterpriseService;
import com.asz.service.IResumeService;
import com.asz.service.IUserService;
import com.asz.util.MD5;



@Controller
public class IndexController {

	@Resource
	IUserService userService;
	@Resource
	IEnterpriseService enterpriseService;
	@Resource
	IResumeService resumeService;
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam("loginName") String loginName, @RequestParam("loginPass") String loginPass,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		User user = new User();
		user.setLoginName(loginName);
		user.setLoginPass(MD5.encryption(loginPass));
		
		user = userService.login(user);
		
		
		if (user!=null) {
			session.setAttribute(Constance.userLoginFlag, user);
			mv.addObject("message", "»¶Ó­µÇÂ½£¡");
			if (user.getSite() == 0) {
				mv.setViewName("/admin");
			}else{
				mv.setViewName("/index");
			}
			
			user.setLastLogin(new Date());
			userService.updateByPrimaryKeySelective(user);
			
			
			
		}else{
			mv.addObject("message", "µÇÂ½Ê§°Ü£¡");
			mv.setViewName("/login");
		}
		
		return mv;
	}

	@RequestMapping("/reg")
	public ModelAndView reg(User user) {
		user.setCreateTime(new Date());
		user.setLastLogin(new Date());
		user.setIsdetele(0);
		user.setLoginPass(MD5.encryption(user.getLoginPass()));
		ModelAndView mv = new ModelAndView();

		if (userService.login(user) == null) {
			int flag = userService.insertSelective(user);
			user = userService.login(user);
			user.setEnterpriseId(user.getId());
			user.setResumeId(user.getId());
			flag = flag+userService.updateByPrimaryKeySelective(user);
			Enterprise en = new Enterprise();
			en.setId(user.getId());
			flag = flag+enterpriseService.insertSelective(en);
			Resume re = new Resume();
			re.setId(user.getId());
			flag = flag+resumeService.insertSelective(re);
			
			if (flag == 4) {
				mv.addObject("message", "¡¾×¢²á³É¹¦£¡¡¿");
			}else{
				mv.addObject("message", "¡¾×¢²áÊ§°Ü£¡¡¿");
			}
		}else{
			mv.addObject("message", "¡¾×¢²áÊ§°Ü£¡ÓÃ»§ÃûÒÑ´æÔÚ£¡¡¿");
		}
		
		
		mv.setViewName("/reg");
		return mv;
	}

	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin");
		return mv;
	}

	@RequestMapping("/index_right")
	public ModelAndView index_right() {
		ModelAndView mv = new ModelAndView();
		List<User> allUser = userService.all();
		int userNum=0,enNum = 0;
		for (User user : allUser) {
			if (user.getSite() == 1) {
				userNum++;
			}
			if (user.getSite() == 2) {
				enNum++;
			}
		}
		mv.addObject("userNum",userNum);
		mv.addObject("enNum",enNum);
		mv.setViewName("/sub/index_r");
		return mv;
	}
	
	
	@RequestMapping("/admin_right")
	public ModelAndView admin_right() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/index_admin");
		return mv;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.setAttribute(Constance.userLoginFlag, null);
		return "redirect:/";
	}
}
