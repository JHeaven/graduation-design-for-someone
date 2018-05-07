package com.heaven.controller;


import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.model.ArticleReply;
import com.heaven.model.ArticleReplyReply;
import com.heaven.model.User;
import com.heaven.service.IArticleReplyReplyService;
import com.heaven.service.IArticleReplyService;
/**
 * ����ظ����Ʋ�
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/articleReply")
public class ArticleReplyController {
	@Resource
	IArticleReplyService articleReplyService = null;
	@Resource
	IArticleReplyReplyService articleReplyReplyService = null;
	/**
	 * ���Ӽ�¼
	 * @param articleReply
	 * @param session
	 * @return
	 */
	@RequestMapping("/articleReplyInsert")
	public ModelAndView articleReplyInsert(ArticleReply articleReply,HttpSession session){
		//���ʵ����
		articleReply.setOutTime(new Date());
		User user = (User) session.getAttribute("usersession");
		articleReply.setUserId(user.getId());
		articleReply.setPushCount(0);
		articleReply.setIsdelete(0);
		//�������ݿ�
		if (articleReplyService.insert(articleReply)<=0) {
			
		}
		//
		List<ArticleReply> thisComment = articleReplyService.selectByArticleId(articleReply.getArticleId());
		//������ͼ
		ModelAndView mv = new ModelAndView();
		mv.addObject("thisComment",thisComment);
		mv.setViewName("page/articleComment");
		return mv;
	}
	
	
	/**
	 * ɾ���ҵ�����
	 * @param commentId
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/articleReplyDelete/{commentId}/{articleId}")
	public ModelAndView articleReplyDelete(@PathVariable("commentId")Integer commentId,@PathVariable("articleId")Integer articleId){
		//ɾ���ҵĻظ�
		articleReplyService.deleteByPrimaryKey(commentId);
		ModelAndView mv = new ModelAndView();
		//���¹�����ͼ
		List<ArticleReply> thisComment = articleReplyService.selectByArticleId(articleId);
		mv.addObject("thisComment",thisComment);
		mv.setViewName("page/articleComment");
		return mv;
	}
	
	/**
	 * ����¥��¥����
	 * @param articleReplyReply
	 * @return
	 */
	@RequestMapping("/articleReplyReplyInsert")
	public ModelAndView articleReplyReplyInsert(ArticleReplyReply articleReplyReply,HttpSession session){
		User user = (User) session.getAttribute("usersession");
		//���¥��¥ʵ����
		articleReplyReply.setUserId(user.getId());
		articleReplyReply.setOutTime(new Date());
		articleReplyReply.setIsdelete(0);
		//����
		articleReplyReplyService.insert(articleReplyReply);
		//������ͼ
		ModelAndView mv = new ModelAndView();
		List<ArticleReply> thisComment = articleReplyService.selectByArticleId(articleReplyReply.getArticleId());
		mv.addObject("thisComment",thisComment);
		mv.addObject("articleId",articleReplyReply.getArticleId());
		mv.setViewName("page/articleComment");
		return mv;
	}
	
}
