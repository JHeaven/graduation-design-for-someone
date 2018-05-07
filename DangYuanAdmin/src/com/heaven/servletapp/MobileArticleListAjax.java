package com.heaven.servletapp;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ArticleBiz;
import com.heaven.vo.Article;

import net.sf.json.JSONArray;


/**
 * Servlet implementation class MobileArticleListAjax
 */
@WebServlet("/MobileArticleListAjax.do")
public class MobileArticleListAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileArticleListAjax() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int page = Integer.parseInt(request.getParameter("page"));
		int belong = Integer.parseInt(request.getParameter("belong"));
		//System.out.println("page = "+page);
		ArticleBiz ab = new ArticleBiz();
		List<Article> ArticleList =  ab.getArticleByBelongLimit(belong, page);
		JSONArray jsonArray = JSONArray.fromObject(ArticleList);
		//System.out.println(jsonArray.toString());
		System.out.println("正在提取数据库数据belong="+belong+"-page="+page);
		response.getWriter().append(jsonArray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
