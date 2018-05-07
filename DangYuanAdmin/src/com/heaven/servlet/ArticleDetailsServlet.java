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
 * Servlet implementation class ArticleDetailsServlet
 */
@WebServlet("/ArticleDetailsServlet.do")
public class ArticleDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleDetailsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id=0;
		try {
			id= Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			id=0;
		}
		
		
		ArticleBiz ab = new ArticleBiz();
		ab.readCount(id);
		Article article = ab.getArticleById(id);
		
		request.setAttribute("article", article);
		RequestDispatcher rd = request.getRequestDispatcher("part/ArticleDetail-n.jsp");
		rd.forward(request, response);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
