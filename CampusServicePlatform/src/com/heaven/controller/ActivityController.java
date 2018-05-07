package com.heaven.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Activity;
import com.heaven.model.User;
import com.heaven.service.IActivityService;

/**
 * 活动控制核心
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm");
	@Resource
	IActivityService activityService = null;
	
	/**
	 * 展示活动
	 * @return
	 */
	@RequestMapping("/activitySelect")
	public ModelAndView activitySelect(){
		//随机颜色
		String [] colors = {"plum","brown","green","primary","orange","pink","purple","cyan","blue","aqua","red"};
		Random ra =new Random();
		//构建视图
		ModelAndView mv = new ModelAndView();
		List<Activity> allAct = activityService.selectAll();
		Iterator<Activity> it = allAct.iterator();
		while(it.hasNext()){
			it.next().setColorActivity(colors[ra.nextInt(11)]);
		}
		mv.addObject("allAct",allAct);
		mv.setViewName("page/activitySelect");
		return mv;
	}
	
	/**
	 * 跳转活动增加界面
	 * @return
	 */
	@RequestMapping("/goToActivityInsert")
	public ModelAndView goToactivityInsert(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("page/activityInsert");
		return mv;
	}
	
	/**
	 * 活动增加
	 * @param formto
	 * @param activity
	 * @param session
	 * @return
	 */
	@RequestMapping("/activityInsert")
	@ResponseBody
	public String activityInsert(@RequestParam("formto") String formto,Activity activity,HttpSession session){
		String success="success";
		String form = formto.substring(0,16);
		String to = formto.substring(20);
		User user = (User) session.getAttribute("usersession");
		activity.setAuthorId(user.getId());
		//解析起始和结束时间
		try {
			activity.setBeginTime(sdf.parse(form));
			activity.setEndTime(sdf.parse(to));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		activity.setOutTime(new Date());
		activity.setClickCount(0);
		activity.setIsdelete(0);
		activity.setPic("NULL");
		//插入数据库
		if (activityService.insert(activity)<=0) {
			success="failure";
		}
		return success;
	}
	
	
	
}
