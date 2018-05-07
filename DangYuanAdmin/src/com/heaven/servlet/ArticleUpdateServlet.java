package com.heaven.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ArticleBiz;
import com.heaven.vo.Article;

/**
 * Servlet implementation class ArticleUpdateServlet
 */
@WebServlet("/ArticleUpdateServlet.do")
public class ArticleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ArticleUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			id = 0;
		}

		ArticleBiz ab = new ArticleBiz();
		Article article = ab.getArticleById(id);

		int belong = article.getBelong();
		String belong_Str = "获取出错，联系管理员";
		if (belong == 1) {
			belong_Str = "学习小组";
		} else if (belong == 2) {
			belong_Str = "著作选读";
		} else if (belong == 3) {
			belong_Str = "党史博览";
		} else if (belong == 4) {
			belong_Str = "党建掠影";
		} else if (belong == 5) {
			belong_Str = "党员先锋";
		} else if (belong == 6) {
			belong_Str = "红歌传唱";
		} else if (belong == 7) {
			belong_Str = "好书鉴赏";
		} else if (belong == 8) {
			belong_Str = "时事快讯";
		} else if (belong == 9) {
			belong_Str = "校园新闻";
		} else if (belong == 10) {
			belong_Str = "通知公告";
		} else if (belong == 11) {
			belong_Str = "活动报名";
		} else if (belong == 12){
			belong_Str = "个人资料";
		}else if (belong == 100){
			belong_Str = "两学一做";
		}

		// html5日期转换

		article.setOuttime(article.getOuttime().replace(" ", "T"));

		request.setAttribute("article", article);
		request.setAttribute("belong_Str", belong_Str);
		RequestDispatcher rd = request.getRequestDispatcher("ArticleUpdate.jsp");
		rd.forward(request, response);

		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
