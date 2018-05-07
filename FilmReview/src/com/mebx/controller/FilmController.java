package com.mebx.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mebx.model.FilmWithBLOBs;
import com.mebx.model.ReviewWithBLOBs;
import com.mebx.service.IFilmService;
import com.mebx.service.IReviewService;

@Controller
@RequestMapping("/film")
public class FilmController {

	@Resource
	IFilmService filmService;
	@Resource
	IReviewService reviewService;
	@RequestMapping("/add")
	public ModelAndView add() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/sub/film_add");
		return mv;
	}

	@RequestMapping("/all")
	public ModelAndView all() {
		ModelAndView mv = new ModelAndView();
		List<FilmWithBLOBs> allFilm = filmService.selectall();
		mv.addObject("allFilm", allFilm);
		mv.setViewName("/sub/film_all");
		return mv;
	}
	
	@RequestMapping("/show")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView();
		List<FilmWithBLOBs> allFilm = filmService.selectall();
		
		for (FilmWithBLOBs filmWithBLOBs : allFilm) {
			if (filmWithBLOBs.getFlagCon().length()>=60) {
				filmWithBLOBs.setFlagCon(filmWithBLOBs.getFlagCon().substring(0,60));
			}
			
		}
		
		mv.addObject("allFilm", allFilm);
		mv.setViewName("/sub/film_show");
		return mv;
	}
	
	@RequestMapping("/hot")
	public ModelAndView hot() {
		ModelAndView mv = new ModelAndView();
		List<FilmWithBLOBs> allFilm = filmService.selectHot();
		
		for (FilmWithBLOBs filmWithBLOBs : allFilm) {
			if (filmWithBLOBs.getFlagCon().length()>=60) {
				filmWithBLOBs.setFlagCon(filmWithBLOBs.getFlagCon().substring(0,60));
			}
			
		}
		
		mv.addObject("allFilm", allFilm);
		mv.setViewName("/sub/film_hot");
		return mv;
	}
	
	
	
	@RequestMapping("/showNext/{pageNo}")
	public ModelAndView showNext(@PathVariable("pageNo") Integer pageNo) {
		List<FilmWithBLOBs> allFilm1 = filmService.selectall();
		
		Integer max = allFilm1.size();
		if (max%9 == 0) {
			max = max/9;
		}else{
			max = max/9  +1 ;
		}
		
		if (pageNo<=0) {
			pageNo = 1;
		}
		if (pageNo>=max) {
			pageNo = max;
		}
		
		FilmWithBLOBs fm = new FilmWithBLOBs();
		fm.setForm((pageNo-1)*9);
		fm.setTo((pageNo-0)*9);
		
		ModelAndView mv = new ModelAndView();
		
		List<FilmWithBLOBs> allFilm = filmService.selectPage(fm);
		for (FilmWithBLOBs filmWithBLOBs : allFilm) {
			if (filmWithBLOBs.getFlagCon().length()>=60) {
				filmWithBLOBs.setFlagCon(filmWithBLOBs.getFlagCon().substring(0,60));
			}
			
		}
		
		mv.addObject("allFilm", allFilm);
		mv.addObject("max", max);
		mv.addObject("pageNo", pageNo);
		mv.setViewName("/sub/film_show");
		return mv;
	}
	
	
	

	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		FilmWithBLOBs film = filmService.selectByPrimaryKey(id);
		mv.addObject("film", film);
		mv.setViewName("/sub/film_update");
		return mv;
	}

	
	
	@RequestMapping("/select/{id}")
	public ModelAndView select(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		FilmWithBLOBs film = filmService.selectByPrimaryKey(id);
		List<ReviewWithBLOBs> allRe = reviewService.selectall(id);
		mv.addObject("film", film);
		mv.addObject("allRe", allRe);
		mv.setViewName("/sub/film_select");
		return mv;
	}
	
	
	@RequestMapping("/doedit")
	public ModelAndView doedit(FilmWithBLOBs film) {
		ModelAndView mv = new ModelAndView();
		String content = film.getSimpleSay();
		int firstIndex = content.indexOf("<img src=\"");
		if (firstIndex < 0) {
			film.setHead(null);
		} else {
			firstIndex += 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			film.setHead(content);
		}

		if (filmService.updateByPrimaryKeySelective(film) > 0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<FilmWithBLOBs> allFilm = filmService.selectall();
		mv.addObject("allFilm", allFilm);
		mv.setViewName("/sub/film_all");
		return mv;
	}
	
	
	@RequestMapping("/del/{id}")
	public ModelAndView del(@PathVariable("id") Integer id) {
		ModelAndView mv = new ModelAndView();
		if (filmService.deleteByPrimaryKey(id) > 0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		List<FilmWithBLOBs> allFilm = filmService.selectall();
		mv.addObject("allFilm", allFilm);
		mv.setViewName("/sub/film_all");
		return mv;
	}

	
	
	@RequestMapping("/doadd")
	public ModelAndView doadd(FilmWithBLOBs film) {
		film.setDeteted(0);

		String content = film.getSimpleSay();
		int firstIndex = content.indexOf("<img src=\"");
		if (firstIndex < 0) {
			film.setHead(null);
		} else {
			firstIndex += 10;
			content = content.substring(firstIndex);
			int nextIndex = content.indexOf("\" style=\"width: ");
			content = content.substring(0, nextIndex);
			film.setHead(content);
		}

		ModelAndView mv = new ModelAndView();
		if (filmService.insertSelective(film) > 0) {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作成功\");");
		} else {
			mv.addObject("message", "window.parent.frames.noteUp(\"操作失敗\");");
		}
		mv.setViewName("/sub/film_add");
		return mv;
	}
}
