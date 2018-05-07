package com.sd.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import com.sd.constance.Cons;
import com.sd.model.News;
import com.sd.model.User;
import com.sd.service.INewsService;
import com.sd.service.IUserService;
import com.sd.util.MD5;

/**
 * Servlet implementation class IndexServlet
 */
@Controller
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	@Resource
	IUserService userService = null;
	
	@Resource
	INewsService newsService = null;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodName = (String) request.getAttribute("method");
		switch (methodName) {
		
		case "add":
			add(request, response);
			break;
		
		case "all":
			all(request, response);
			break;
		case "del":
			del(request, response);
			break;
		
		default:
			myTurn(request, response);
			break;
		}
	}
	

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		Integer id = Integer.parseInt(request.getParameter("userId"));
		User user = userService.selectByPrimaryKey(id);
		String content = request.getParameter("content");
		News news = new News();
		news.setDateTime(new Date());
		news.setNewContent(content);
		news.setUserId(id);
		news.setUserName(user.getLoginName());
		if (newsService.insertSelective(news)>0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"发布成功！\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyText(\"发布失败！\");");
		}
		
		
		//show all
		List<News> allNews = newsService.selectAll();
		for (News news1 : allNews) {
			String content1 = news1.getNewContent();
			content1 = content1.replaceAll("<p .*?>", "\r\n"); 
			// <br><br/>替换为换行 
			content1 = content1.replaceAll("<br\\s*/?>", "\r\n"); 
			// 去掉其它的<>之间的东西 
			content1 = content1.replaceAll("\\<.*?>", ""); 
			if (content1.length()<30) {
				news.setNewContent(content1.substring(0,content1.length()));
			}else{
				news.setNewContent(content1.substring(0,30));
			}
		}
		request.setAttribute("allNews", allNews);
		request.getRequestDispatcher("sub/news_all.jsp").forward(request, response);
		
	}
	
	
	private void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		List<News> allNews = newsService.selectAll();
		for (News news : allNews) {
			String content = news.getNewContent();
			content = content.replaceAll("<p .*?>", "\r\n"); 
			// <br><br/>替换为换行 
			content = content.replaceAll("<br\\s*/?>", "\r\n"); 
			// 去掉其它的<>之间的东西 
			content = content.replaceAll("\\<.*?>", ""); 
			if (content.length()<30) {
				news.setNewContent(content.substring(0,content.length()));
			}else{
				news.setNewContent(content.substring(0,30));
			}
			
		}
		request.setAttribute("allNews", allNews);
		request.getRequestDispatcher("sub/news_all.jsp").forward(request, response);
	}
	
	
	private void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		Integer id = Integer.parseInt(request.getParameter("id"));
		if (newsService.deleteByPrimaryKey(id)>0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"删除成功！\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyText(\"删除失败！\");");
		}
		
		//show all
		List<News> allNews = newsService.selectAll();
		for (News news : allNews) {
			String content = news.getNewContent();
			content = content.replaceAll("<p .*?>", "\r\n"); 
			// <br><br/>替换为换行 
			content = content.replaceAll("<br\\s*/?>", "\r\n"); 
			// 去掉其它的<>之间的东西 
			content = content.replaceAll("\\<.*?>", ""); 
			if (content.length()<30) {
				news.setNewContent(content.substring(0,content.length()));
			}else{
				news.setNewContent(content.substring(0,30));
			}		}
		request.setAttribute("allNews", allNews);
		request.getRequestDispatcher("sub/news_all.jsp").forward(request, response);
		
	}

	
	protected void myTurn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("news: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}
}
