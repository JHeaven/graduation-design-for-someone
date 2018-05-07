package com.heaven.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Microblog;
import com.heaven.model.MicroblogReply;
import com.heaven.model.User;
import com.heaven.service.IMicroblogReplyService;
import com.heaven.service.IMicroblogService;

/**
 * 动态控制模块
 * @author HEAVEN
 *
 */
@RequestMapping("/microblog")
@Controller
public class MicroblogController {
	@Resource
	IMicroblogService microblogService = null;
	@Resource
	IMicroblogReplyService microblogReplyService = null;
	/**
	 * 首次展示动态
	 * @return
	 */
	@RequestMapping("/microblogSelect/{pageNo}")
	public ModelAndView microblogSelect(@PathVariable("pageNo")Integer pageNo){
		List<MicroblogReply> allMicReply = microblogReplyService.selectAll();
		
		List<Microblog> micLatest= microblogService.selectLatest(pageNo);
		//负载评论
		for (Iterator iterator = micLatest.iterator(); iterator.hasNext();) {
			Microblog microblog = (Microblog) iterator.next();
			microblog.setThisReply(new ArrayList<MicroblogReply>());
			for (Iterator iterator1 = allMicReply.iterator(); iterator1.hasNext();) {
				MicroblogReply microblogReply = (MicroblogReply) iterator1.next();
				if (microblog.getId() == microblogReply.getTwitterId()) {
					microblog.getThisReply().add(microblogReply);
				}
			}
			
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("micLatest",micLatest);
		mv.addObject("thistime",new Date());
		mv.setViewName("page/microblogSelect");
		return mv;
	}
	
	
	/**
	 * 下拉动态
	 * @return
	 */
	@RequestMapping("/microblogSelectNext/{pageNo}")
	public ModelAndView microblogSelectNext(@PathVariable("pageNo")Integer pageNo){
		List<MicroblogReply> allMicReply = microblogReplyService.selectAll();
		
		List<Microblog> micLatest= microblogService.selectLatest(pageNo);
		//负载评论
		for (Iterator iterator = micLatest.iterator(); iterator.hasNext();) {
			Microblog microblog = (Microblog) iterator.next();
			microblog.setThisReply(new ArrayList<MicroblogReply>());
			for (Iterator iterator1 = allMicReply.iterator(); iterator1.hasNext();) {
				MicroblogReply microblogReply = (MicroblogReply) iterator1.next();
				if (microblog.getId() == microblogReply.getTwitterId()) {
					microblog.getThisReply().add(microblogReply);
				}
			}
			
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("micLatest",micLatest);
		mv.addObject("thistime",new Date());
		mv.setViewName("page/microblogSelectNextpage");
		return mv;
	}
	
	/**
	 * 发表
	 * @param dongtai
	 * @return
	 */
	@RequestMapping("/microblogInsert")
	public String microblogInsert(@RequestParam("sample_wysiwyg")String dongtai,HttpSession session){
		User user = (User) session.getAttribute("usersession");
		Microblog mic = new Microblog();
		mic.setContent(dongtai);
		mic.setOutTime(new Date());
		mic.setUserId(user.getId());
		mic.setClickCount(1);
		mic.setGoodCount(0);
		mic.setHiddenName(0);
		mic.setIsdelete(0);
		mic.setState(0);
		mic.setPic("null");
		System.out.println(mic.toString());
		if (microblogService.insert(mic)>0) {
			
		}
		return "redirect:/microblog/microblogSelect/1";
	}
	
	
	/**
	 * 匿名发表
	 * @param dongtai
	 * @return
	 */
	@RequestMapping("/microblogInsertnm")
	public ModelAndView microblogInsertnm(@RequestParam("sample_wysiwyg")String dongtai,HttpSession session){
		User user = (User) session.getAttribute("usersession");
		Microblog mic = new Microblog();
		mic.setContent(dongtai);
		mic.setOutTime(new Date());
		mic.setUserId(user.getId());
		mic.setClickCount(1);
		mic.setGoodCount(0);
		mic.setHiddenName(1);
		mic.setIsdelete(0);
		mic.setState(0);
		mic.setPic("null");
		System.out.println(mic.toString());
		if (microblogService.insert(mic)>0) {
			
		}
		List<Microblog> micLatest= microblogService.selectLatest(1);
		ModelAndView mv = new ModelAndView();
		mv.addObject("micLatest",micLatest);
		mv.setViewName("page/microblogSelect");
		return mv;
	}
	
	
	/**
	 * 点赞
	 * @param micId
	 * @return
	 */
	@RequestMapping("/microblogGoodCountInsert/{micId}")
	@ResponseBody
	public String microblogGoodCountInsert(@PathVariable("micId")Integer micId){
		if (microblogService.dianzan(micId)>0) {
			return "success";
		}else{
			return "failure";
		}
	}
	
	/**  
	 * 展示我的动态
	 * @return
	 */
	@RequestMapping("/microblogSelectOfMy")
	public ModelAndView microblogSelectOfMy(HttpSession session){
		User user = (User) session.getAttribute("usersession");
		List<Microblog> micOfMy= microblogService.selectOfMy(user.getId());
		ModelAndView mv = new ModelAndView();
		mv.addObject("micOfMy",micOfMy);
		mv.setViewName("page/microblogSelectOfMy");
		return mv;
	}
	
	/**
	 * top10
	 * @return
	 */
	@RequestMapping("/microblogSelectOfPop")
	public ModelAndView microblogSelectOfPop(){
		List<Microblog> micPop= microblogService.selectPop10();
		ModelAndView mv = new ModelAndView();
		mv.addObject("micPop",micPop);
		mv.setViewName("page/microblogSelectOfPop");
		return mv;
	}
	
	/**
	 * 删除
	 * @param micId
	 * @return
	 */
	@RequestMapping("/microblogDel/{micId}")
	@ResponseBody
	public String microblogDel(@PathVariable("micId")Integer micId){
		Microblog mic = new Microblog();
		mic.setId(micId);
		mic.setIsdelete(1);
		if (microblogService.updateByPrimaryKeySelective(mic)>0) {
			return "success";
		}else{
			return "failure";
		}
		
	}
	
}
