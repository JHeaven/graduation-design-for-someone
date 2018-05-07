package com.tsq.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.tsq.constance.Cons;
import com.tsq.model.QuestionWithBLOBs;
import com.tsq.model.Stu;
import com.tsq.service.IQuestionService;

@Controller
@RequestMapping("/que")
public class QuestionController {
	@Resource
	IQuestionService questionService;
	
	@RequestMapping("/addQue")
	public ModelAndView addQue() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/que_ask");
		return mv;
	}
	
	
	@RequestMapping("/doAddQue")
	public ModelAndView doAddQue(QuestionWithBLOBs que) {
		ModelAndView mv = new ModelAndView();
		que.setAskTime(new Date());
		if (questionService.insertSelective(que)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		mv.setViewName("/sub/que_ask");
		return mv;
	}
	
	
	
	@RequestMapping("/doQueUpdate")
	public ModelAndView doQueUpdate(QuestionWithBLOBs que,HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		que.setAskTime(new Date());
		if (questionService.updateByPrimaryKeySelective(que)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(stu.getId());
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all_my");
		return mv;
	}
	
	
	@RequestMapping("/myQue/{id}")
	public ModelAndView myQue(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(id);
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all_my");
		return mv;
	}
	
	
	
	
	@RequestMapping("/updateQue/{id}")
	public ModelAndView updateQue(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		QuestionWithBLOBs que = questionService.selectByPrimaryKey(id);
		mv.addObject("que",que);
		mv.setViewName("/sub/que_ask_update");
		return mv;
	}
	
	@RequestMapping("/delQue/{id}")
	public ModelAndView delQue(@PathVariable("id")Integer id,HttpSession session) {
		Stu stu = (Stu) session.getAttribute(Cons.USERFLAG);
		ModelAndView mv = new ModelAndView();
		if (questionService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(stu.getId());
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all_my");
		return mv;
	}
	
	

	@RequestMapping("/allQue")
	public ModelAndView allQue() {
		ModelAndView mv = new ModelAndView();
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(null);
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all");
		return mv;
	}
	
	
	@RequestMapping("/delQueAdmin/{id}")
	public ModelAndView delQueAdmin(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		if (questionService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(null);
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all");
		return mv;
	}
	
	
	@RequestMapping("/ansQue/{id}")
	public ModelAndView ansQue(@PathVariable("id")Integer id) {
		ModelAndView mv = new ModelAndView();
		QuestionWithBLOBs que = questionService.selectByPrimaryKey(id);
		mv.addObject("que",que);
		mv.setViewName("/sub/que_ans");
		return mv;
	}
	
	

	
	@RequestMapping("/doQueAns")
	public ModelAndView doQueAns(QuestionWithBLOBs que) {
		ModelAndView mv = new ModelAndView();
		que.setAnsTime(new Date());
		if (questionService.updateByPrimaryKeySelective(que)>0) {
			mv.addObject("message","window.parent.frames.notyText(\"操作成功 .\");");
		}else{
			mv.addObject("message","window.parent.frames.notyText(\"操作失败 .\");");
		}
		List<QuestionWithBLOBs> allQue = questionService.selectByUserId(null);
		mv.addObject("allQue",allQue);
		mv.setViewName("/sub/que_all");
		return mv;
	}
	
}
