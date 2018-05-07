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
 * 话题控制层
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
	 * 查询本板块话题
	 * @param sectionId
	 * @return
	 */
	@RequestMapping("/articleSelect")
	public ModelAndView articleSelectSelect(Article articleCondition,@RequestParam(value = "pageNo",required = false)Integer pageNo,HttpSession session){
		//空字串置空
		if ("".equals(articleCondition.getTitle())) {
			//点击了空查询,session值置空
			session.setAttribute("searchTitle", null);
			articleCondition.setTitle("%%");
		}else if(null == articleCondition.getTitle()){
			//点击了下一页
			try {
				articleCondition.setTitle(((String)session.getAttribute("searchTitle")).equals("null")?"":((String)session.getAttribute("searchTitle")));
				articleCondition.setTitle("%"+articleCondition.getTitle()+"%");
			} catch (Exception e) {
				articleCondition.setTitle("%%");
			}
		}else{
			//有值查询
			session.setAttribute("searchTitle", articleCondition.getTitle());
			articleCondition.setTitle("%"+articleCondition.getTitle()+"%");
		}
		
		if ("".equals(articleCondition.getContent())) {
			//点击了查询，session值置空
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
		
		//判断首页
		try {
			if ( null == pageNo || pageNo==0) {
				pageNo = 1;
			}
		} catch (NullPointerException e) {
			System.out.println("page one !");
			pageNo = 1;
		}
		//总个数
		articleCondition.setIsdelete(0);
		
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
		
		//读取本板块信息
		Section section = sectionService.selectByPrimaryKey(articleCondition.getSectionId());
		//查询话题信息
		List<Article> articleAll= articleService.selectAllByCondition(articleCondition,pageNo,pageSize);
		//构建视图
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
	 * 去插入话题页面
	 * @param sectionId
	 * @return
	 */
	@RequestMapping("/articleInsert")
	public ModelAndView articleInsert(@RequestParam("sectionId")int sectionId,HttpSession session,HttpServletRequest request){
		//获取个人网盘中的文件
		User user = (User) session.getAttribute(Constants.USERNAME);
		ShareFolder folder = new ShareFolder();
		folder.setUserId(user.getId());
		folder.setSharefolderName("话题文件");
		folder.setSharefolderDesc("/私人文件夹/");
		
		ShareFolder temp = fileAndFolderService.selectByMoreInfo(folder);
		List<ShareFile> fileList = null;
		if (temp == null) {
			System.out.println("文件夹不存在。需要初始化");
			folder.setIsdelete(0);
			folder.setOutTime(new Date());
			if (fileAndFolderService.insertFolder(folder)>0) {
				System.out.println("文件夹初始化完成");
				request.setAttribute("firstTime", "检测到您是第一次使用本功能，我们为您初始化了【话题文件】文件夹，您可以在私人文件夹中对其进行管理。");
			}else{
				System.out.println("文件夹初始化失败");
				request.setAttribute("firstTime", "检测到您是第一次使用本功能，【话题文件】初始化失败，请联系管理员。");
			}
		}else{
			System.out.println("文件夹存在："+temp.getId());
			ShareFile record = new ShareFile();
			record.setSharefolderId(temp.getId());
			record.setIsdelete(0);
			fileList = fileAndFolderService.selectAllFile(record);
			//图标
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
		//构建视图
		ModelAndView mv = new ModelAndView();
		mv.addObject("sectionId",sectionId);
		mv.addObject("folder",temp);
		mv.addObject("fileList",fileList);
		mv.setViewName("page/articleInsert");
		return mv;
	}
	
	/**
	 * 去插入话题页面的内嵌iframe（作废，已被新的代替）
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
	 * 发布话题
	 * @param content
	 * @param article
	 * @param session
	 * @return
	 */
	@RequestMapping("/doArticleInsert")
	@ResponseBody
	public String doArticleInsert(@RequestParam("content") String content ,Article article,HttpSession session){
		//组合实体类
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
		//插入
		if (articleService.insert(article)<=0) {
			success = "failure";
		}
		return success;
	}
	
	/**
	 * 一个话题
	 * @param articleId
	 * @return
	 */
	@RequestMapping("/articleSelectOne/{articleId}")
	//RESTful风格传值
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
	 * 文章加精
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
	 * 删除文章
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
