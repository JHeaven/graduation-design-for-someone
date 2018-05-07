package com.mebx.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mebx.model.FilmWithBLOBs;
import com.mebx.model.ReviewWithBLOBs;
import com.mebx.model.User;
import com.mebx.service.IFilmService;
import com.mebx.service.IReviewService;
import com.mebx.service.IUserService;

@Controller
@RequestMapping("/re")
public class ReviewController {
	@Resource
	IFilmService filmService;
	@Resource
	IReviewService reviewService;
	@Resource
	IUserService userService;
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(ReviewWithBLOBs re) {
		ModelAndView mv = new ModelAndView();
		
		User user = userService.selectByPrimaryKey(re.getuId());
		user.setScore(user.getScore()+5);
		userService.updateByPrimaryKeySelective(user);
		
		FilmWithBLOBs fl =  filmService.selectByPrimaryKey(re.getfId());
		re.setCount(0);
		re.setDeleted(0);
		re.setfPhoto(fl.getHead());
		if (re.getScore()<0) {
			re.setScore(0);
		}
		if (re.getScore()>10) {
			re.setScore(10);
		}
		
		
		fl.setScore(Float.parseFloat(new java.text.DecimalFormat("#.0").format((re.getScore()+fl.getScore())/2.0f)));
		filmService.updateByPrimaryKeySelective(fl);
		if (reviewService.insertSelective(re)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		
		FilmWithBLOBs film = filmService.selectByPrimaryKey(re.getfId());
		List<ReviewWithBLOBs> allRe = reviewService.selectall(re.getfId());
		mv.addObject("film", film);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/film_select");
		return mv;
	}
	
	
	
	
	@RequestMapping("/click/{id}")
	public ModelAndView click(@PathVariable("id") Integer id) {
		ReviewWithBLOBs  re = reviewService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		re.setCount(re.getCount()+1);
		if (reviewService.updateByPrimaryKeySelective(re)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		FilmWithBLOBs film = filmService.selectByPrimaryKey(re.getfId());
		List<ReviewWithBLOBs> allRe = reviewService.selectall(re.getfId());
		mv.addObject("film", film);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/film_select");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id") Integer id) {
		ReviewWithBLOBs  re = reviewService.selectByPrimaryKey(id);
		ModelAndView mv = new ModelAndView();
		if (reviewService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		
		FilmWithBLOBs film = filmService.selectByPrimaryKey(re.getfId());
		List<ReviewWithBLOBs> allRe = reviewService.selectall(re.getfId());
		mv.addObject("film", film);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/film_select");
		return mv;
	}
	
	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<ReviewWithBLOBs> allRe = reviewService.selectall(null);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/review_all");
		return mv;
	}
	
	
	@RequestMapping("/hot")
	public ModelAndView hot() {
		ModelAndView mv = new ModelAndView();
		List<ReviewWithBLOBs> allRe = reviewService.selecthot();
		for (ReviewWithBLOBs reviewWithBLOBs : allRe) {
			if (reviewWithBLOBs.getContent().length()>100) {
				reviewWithBLOBs.setContent(reviewWithBLOBs.getContent().substring(0,100));
			}
		}
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/review_hot");
		return mv;
	}
	
	@RequestMapping("/deladmin/{id}")
	public ModelAndView deladmin(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		if (reviewService.deleteByPrimaryKey(id)>0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<ReviewWithBLOBs> allRe = reviewService.selectall(null);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/review_all");
		return mv;
	}
	
}
