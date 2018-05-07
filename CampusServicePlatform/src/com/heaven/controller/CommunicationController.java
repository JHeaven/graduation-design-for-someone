package com.heaven.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.Article;
import com.heaven.model.ArticleReply;
import com.heaven.model.ArticleReplyPicWithBLOBs;
import com.heaven.model.Section;
import com.heaven.model.User;
import com.heaven.service.IArticleReplyPicService;
import com.heaven.service.IArticleReplyService;
import com.heaven.service.IArticleService;
import com.heaven.service.ISectionService;

/**
 * 师生互动控制类
 * @author YJ
 */
@Controller
@RequestMapping("/communication")
public class CommunicationController {
	
	@Resource
	ISectionService sectionService = null;
	@Resource
	IArticleService articleService = null;
	@Resource
	IArticleReplyService articleReplyService = null;
	@Resource
	IArticleReplyPicService articleReplyPicService = null;
	/**
	 * 分页显示
	 * @param pageNo
	 * @return
	 */
	@RequestMapping("/selectComm")
	public ModelAndView showCommunication(@RequestParam(value = "pageNo",required = false)Integer pageNo){
		int sectionId = 100;
		try {
			if ( null == pageNo || pageNo==0) {
				pageNo = 1;
			}
		} catch (NullPointerException e) {
			System.out.println("page one !");
			pageNo = 1;
		}
		//总个数
		Article articleCondition = new Article();
		articleCondition.setSectionId(sectionId);
		articleCondition.setIsdelete(0);
		articleCondition.setContent("%%");
		articleCondition.setTitle("%%");
		int articleCount = articleService.selectCountByCondition(articleCondition);
		//页面大小
		int pageSize = 10;
		//页数
		int pageNum = 0;
		if (articleCount%pageSize == 0) {
			pageNum = articleCount/pageSize;
		}else{
			pageNum = articleCount/pageSize+1;
		}
		
		
		Section section = sectionService.selectByPrimaryKey(sectionId);
		List<Article> articleAll= articleService.selectAllByCondition(articleCondition,pageNo,pageSize);
		ModelAndView mv = new ModelAndView();
		mv.addObject("section",section);
		mv.addObject("articleAll",articleAll);
		mv.addObject("pageNo",pageNo);
		mv.addObject("pageNum",pageNum);
		mv.setViewName("page/communicationSelect");
		return mv;
	}
	
	
	/**
	 * 显示单个
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/selectCommOne/{articleId}")
	public ModelAndView selectCommOne(@PathVariable("articleId")int articleId){
		List<ArticleReply> thisComment = articleReplyService.selectByArticleId(articleId);
		Article article = articleService.selectByPrimaryKey(articleId);
		Section section = sectionService.selectByPrimaryKey(article.getSectionId());
		List<ArticleReplyPicWithBLOBs> allArticleReplyPicWithBLOBs = articleReplyPicService.selectByArticleId(articleId);
		ModelAndView mv = new ModelAndView();
		mv.addObject("section",section);
		mv.addObject("allArticleReplyPicWithBLOBs",allArticleReplyPicWithBLOBs);
		mv.addObject("article",article);
		mv.addObject("thisComment",thisComment);
		mv.setViewName("page/communicationSelectOne");
		return mv;
	}
	
	
	/**
	 * 师生交流插入
	 * @return
	 */
	@RequestMapping("/communicationInsert")
	public ModelAndView communicationInsert(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("sectionId",100);
		mv.setViewName("page/communicationInsert");
		return mv;
	}
	
	/**
	 * 跳转教师评论
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/iamateacher/{articleId}")
	public ModelAndView iamateacher(@PathVariable("articleId") Integer articleId){
		ModelAndView mv = new ModelAndView();
		mv.addObject("articleId",articleId);
		mv.setViewName("page/communicationCommendByTeacher");
		return mv;
	}
	
	/**
	 * 获取教师解答
	 * @param pic
	 * @param content
	 * @return
	 */
	@RequestMapping(value = "/doIamateacher")
	@ResponseBody
	public String doIamateacher(@RequestParam("pic")String pic,@RequestParam("content")String content,@RequestParam("articleId") Integer articleId,HttpSession session){
		String success = "success";
		ArticleReplyPicWithBLOBs articleReplyPic = new ArticleReplyPicWithBLOBs();
		articleReplyPic.setContent(content);
		articleReplyPic.setArticleId(articleId);
		articleReplyPic.setIsdelete(0);
		articleReplyPic.setOutTime(new Date());
		articleReplyPic.setPic(pic);
		articleReplyPic.setPushCount(0);
		User user = (User) session.getAttribute("usersession");
		articleReplyPic.setUserId(user.getId());
		if (articleReplyPicService.insert(articleReplyPic)<0) {
			success = "failure";
		}
		return success;
	}
	
}
