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
		String belong_Str = "��ȡ������ϵ����Ա";
		if (belong == 1) {
			belong_Str = "ѧϰС��";
		} else if (belong == 2) {
			belong_Str = "����ѡ��";
		} else if (belong == 3) {
			belong_Str = "��ʷ����";
		} else if (belong == 4) {
			belong_Str = "������Ӱ";
		} else if (belong == 5) {
			belong_Str = "��Ա�ȷ�";
		} else if (belong == 6) {
			belong_Str = "��贫��";
		} else if (belong == 7) {
			belong_Str = "�������";
		} else if (belong == 8) {
			belong_Str = "ʱ�¿�Ѷ";
		} else if (belong == 9) {
			belong_Str = "У԰����";
		} else if (belong == 10) {
			belong_Str = "֪ͨ����";
		} else if (belong == 11) {
			belong_Str = "�����";
		} else if (belong == 12){
			belong_Str = "��������";
		}else if (belong == 100){
			belong_Str = "��ѧһ��";
		}

		// html5����ת��

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
