package com.heaven.controller;

import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.velocity.app.event.ReferenceInsertionEventHandler.referenceInsertExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.heaven.constants.Constants;
import com.heaven.model.Article;
import com.heaven.model.ArticleReply;
import com.heaven.model.Section;
import com.heaven.model.ShareFile;
import com.heaven.model.ShareFolder;
import com.heaven.model.User;
import com.heaven.service.IArticleReplyService;
import com.heaven.service.IArticleService;
import com.heaven.service.IFileAndFolderService;
import com.heaven.service.ISectionService;
/**
 * ������Ʋ�
 * @author HEAVEN
 *
 */
@Controller
@RequestMapping("/article")
public class ArticleCotroller {
	@Resource
	ISectionService sectionService = null;
	@Resource
	IArticleService articleService = null;
	@Resource
	IArticleReplyService articleReplyService = null;
	@Resource
	IFileAndFolderService fileAndFolderService = null;
	/**
	 * ��ѯ����黰��
	 * @param sectionId
	 * @return
	 */
	@RequestMapping("/articleSelect")
	public ModelAndView articleSelectSelect(Article articleCondition,@RequestParam(value = "pageNo",required = false)Integer pageNo,HttpSession session){
		//���ִ��ÿ�
		if ("".equals(articleCondition.getTitle())) {
			//����˿ղ�ѯ,sessionֵ�ÿ�
			session.setAttribute("searchTitle", null);
			articleCondition.setTitle("%%");
		}else if(null == articleCondition.getTitle()){
			//�������һҳ
			try {
				articleCondition.setTitle(((String)session.getAttribute("searchTitle")).equals("null")?"":((String)session.getAttribute("searchTitle")));
				articleCondition.setTitle("%"+articleCondition.getTitle()+"%");
			} catch (Exception e) {
				articleCondition.setTitle("%%");
			}
		}else{
			//��ֵ��ѯ
			session.setAttribute("searchTitle", articleCondition.getTitle());
			articleCondition.setTitle("%"+articleCondition.getTitle()+"%");
		}
		
		if ("".equals(articleCondition.getContent())) {
			//����˲�ѯ��sessionֵ�ÿ�
			session.setAttribute("searchCon", null);
			articleCondition.setContent("%%");
		}else if(null == articleCondition.getContent()){
			try {
				articleCondition.setContent(((String)session.getAttribute("searchCon")).equals("null")?"":((String)session.getAttribute("searchCon")));
				articleCondition.setContent("%"+articleCondition.getContent()+"%");
			} catch (Exception e) {
				articleCondition.setContent("%%");
			}
		}else{
			session.setAttribute("searchCon",articleCondition.getContent());
			articleCondition.setContent("%"+articleCondition.getContent()+"%");
		}
		System.out.println(articleCondition.toString());
		
		//�ж���ҳ
		try {
			if ( null == pageNo || pageNo==0) {
				pageNo = 1;
			}
		} catch (NullPointerException e) {
			System.out.println("page one !");
			pageNo = 1;
		}
		//�ܸ���
		articleCondition.setIsdelete(0);
		
		int articleCount = articleService.selectCountByCondition(articleCondition);
		//ҳ���С
		int pageSize = 10;
		//ҳ��
		int pageNum = 0;
		if (articleCount%pageSize == 0) {
			pageNum = articleCount/pageSize;
		}else{
			pageNum = articleCount/pageSize+1;
		}
		
		//��ȡ�������Ϣ
		Section section = sectionService.selectByPrimaryKey(articleCondition.getSectionId());
		//��ѯ������Ϣ
		List<Article> articleAll= articleService.selectAllByCondition(articleCondition,pageNo,pageSize);
		//������ͼ
		ModelAndView mv = new ModelAndView();
		mv.addObject("section",section);
		mv.addObject("articleAll",articleAll);
		mv.addObject("pageNo",pageNo);
		mv.addObject("pageNum",pageNum);
		mv.setViewName("page/articleSelect");
		System.out.println("someone go into "+articleCondition.getSectionId()+":"+section.getName());
		return mv;
	}
	
	/**
	 * ȥ���뻰��ҳ��
	 * @param sectionId
	 * @return
	 */
	@RequestMapping("/articleInsert")
	public ModelAndView articleInsert(@RequestParam("sectionId")int sectionId,HttpSession session,HttpServletRequest request){
		//��ȡ���������е��ļ�
		User user = (User) session.getAttribute(Constants.USERNAME);
		ShareFolder folder = new ShareFolder();
		folder.setUserId(user.getId());
		folder.setSharefolderName("�����ļ�");
		folder.setSharefolderDesc("/˽���ļ���/");
		
		ShareFolder temp = fileAndFolderService.selectByMoreInfo(folder);
		List<ShareFile> fileList = null;
		if (temp == null) {
			System.out.println("�ļ��в����ڡ���Ҫ��ʼ��");
			folder.setIsdelete(0);
			folder.setOutTime(new Date());
			if (fileAndFolderService.insertFolder(folder)>0) {
				System.out.println("�ļ��г�ʼ�����");
				request.setAttribute("firstTime", "��⵽���ǵ�һ��ʹ�ñ����ܣ�����Ϊ����ʼ���ˡ������ļ����ļ��У���������˽���ļ����ж�����й���");
			}else{
				System.out.println("�ļ��г�ʼ��ʧ��");
				request.setAttribute("firstTime", "��⵽���ǵ�һ��ʹ�ñ����ܣ��������ļ�����ʼ��ʧ�ܣ�����ϵ����Ա��");
			}
		}else{
			System.out.println("�ļ��д��ڣ�"+temp.getId());
			ShareFile record = new ShareFile();
			record.setSharefolderId(temp.getId());
			record.setIsdelete(0);
			fileList = fileAndFolderService.selectAllFile(record);
			//ͼ��
			for (Iterator iterator = fileList.iterator(); iterator.hasNext();) {
				ShareFile shareFile = (ShareFile) iterator.next();
				if (shareFile.getSharefileType().contains("application")) {
					shareFile.setColor("entypo-newspaper");
				}else if(shareFile.getSharefileType().contains("image")){
					shareFile.setColor("entypo-picture");
				}else{
					shareFile.setColor("entypo-tag");
				}
			}
		}
		//������ͼ
		ModelAndView mv = new ModelAndView();
		mv.addObject("sectionId",sectionId);
		mv.addObject("folder",temp);
		mv.addObject("fileList",fileList);
		mv.setViewName("page/articleInsert");
		return mv;
	}
	
	/**
	 * ȥ���뻰��ҳ�����Ƕiframe�����ϣ��ѱ��µĴ��棩
	 * @param sectionId
	 * @return
	 */
	@RequestMapping("/articleInsertIframe/{sectionId}")
	public ModelAndView articleInsertIframe(@PathVariable("sectionId")int sectionId){
		ModelAndView mv = new ModelAndView();
		mv.addObject("sectionId",sectionId);
		mv.setViewName("page/articleInsertIframe");
		return mv;
	}
	
	/**
	 * ��������
	 * @param content
	 * @param article
	 * @param session
	 * @return
	 */
	@RequestMapping("/doArticleInsert")
	@ResponseBody
	public String doArticleInsert(@RequestParam("content") String content ,Article article,HttpSession session){
		//���ʵ����
		article.setClickCount(0);
		article.setContent(content);
		article.setIsdelete(0);
		article.setIsGood(0);
		article.setPic("NULL");
		article.setLastTime(new Date());
		article.setOutTime(new Date());
		article.setState(0);
		User user = (User) session.getAttribute("usersession");
		article.setUserId(user.getId());
		String success = "success";
		//����
		if (articleService.insert(article)<=0) {
			success = "failure";
		}
		return success;
	}
	
	/**
	 * һ������
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/articleSelectOne/{articleId}")
	//RESTful���ֵ
	public ModelAndView articleSelectOne(@PathVariable("articleId")int articleId){
		ModelAndView mv = new ModelAndView();
		List<ArticleReply> thisComment = articleReplyService.selectByArticleId(articleId);
		Article article = articleService.selectByPrimaryKey(articleId);
		Section section = sectionService.selectByPrimaryKey(article.getSectionId());
		mv.addObject("section",section);
		mv.addObject("article",article);
		mv.addObject("thisComment",thisComment);
		mv.setViewName("page/articleSelectOne");
		return mv;
	}
	

	/**
	 * ���¼Ӿ�
	 * @param articleId
	 * @param flag
	 * @return
	 */
	@RequestMapping("/articlejiajing/{articleId}/{flag}")
	@ResponseBody
	public String articlejiajing(@PathVariable("articleId")Integer articleId,@PathVariable("flag")Integer flag){
		String success = "success";
		Article article = new Article();
		article.setId(articleId);
		article.setIsGood(flag);
		if (articleService.updateByPrimaryKeySelective(article)<=0) {
			success= "faliure";
		}
		return success;
	}
	
	/**
	 * ɾ������
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/articledel/{articleId}")
	@ResponseBody
	public String articledel(@PathVariable("articleId")Integer articleId){
		String success = "success";
		Article article = new Article();
		article.setId(articleId);
		article.setIsdelete(1);
		if (articleService.updateByPrimaryKeySelective(article)<=0) {
			success= "faliure";
		}
		return success;
	}
	
	@RequestMapping("/articleUpdate/{articleId}")
	public ModelAndView articleUpdate(@PathVariable("articleId")Integer articleId){
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
}
