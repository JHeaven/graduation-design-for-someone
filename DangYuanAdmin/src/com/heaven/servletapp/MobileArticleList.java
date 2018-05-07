package com.heaven.servletapp;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ArticleBiz;
import com.heaven.biz.StudentBiz;
import com.heaven.vo.Article;

/**
 * Servlet implementation class MobileArticleList
 */
@WebServlet("/MobileArticleList.do")
public class MobileArticleList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MobileArticleList() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int belong = 0;
		try {
			belong = Integer.parseInt(request.getParameter("belong"));
		} catch (NumberFormatException e) {
			System.out.println("NO Belong insert!");
			belong = 0;
		}
		String id = request.getParameter("id");

		StudentBiz sb = new StudentBiz();

		if (sb.LoginFlag(id) >= 1) {
			System.out.println(id + "正在获取数据");
		}

		String belong_Str = "获取出错，联系管理员";
		if (belong == 1) {
			belong_Str = "学习小组";
		} else if (belong == 100) {
			belong_Str = "两学一做";
		}else if (belong == 101) {
			belong_Str = "社区动态";
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
			// MobileActivityList.do
			RequestDispatcher rd = request.getRequestDispatcher("MobileActivityList.do");
			rd.forward(request, response);
			return;
		} else if (belong == 12) {
			belong_Str = "个人资料";
			RequestDispatcher rd = request.getRequestDispatcher("MobileStudent.do");
			rd.forward(request, response);
			return;
		} else if (belong == 13) {
			belong_Str = "应用更新";
			RequestDispatcher rd = request.getRequestDispatcher("AppUpdateServlet.do");
			rd.forward(request, response);
			return;
		}
		ArticleBiz ab = new ArticleBiz();
		// System.out.println("belong==="+belong);
		List<Article> ArticleList = ab.getArticleByBelongLimit(belong, 0);
//		if (belong == 3) {
//			for (Article article : ArticleList) {
//				
//			}
//		}
		request.setAttribute("ArticleList", ArticleList);
		request.setAttribute("belong_Str", belong_Str);
		request.setAttribute("belong", belong);
		RequestDispatcher rd = request.getRequestDispatcher("MobileArticleList.jsp");
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
