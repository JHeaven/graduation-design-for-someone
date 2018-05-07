package com.heaven.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ActivityBiz;
import com.heaven.biz.Activity_PeopleBiz;
import com.heaven.vo.Activity;

/**
 * Servlet implementation class ActivityDetailsServlet
 */
@WebServlet("/ActivityDetailsServlet.do")
public class ActivityDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityDetailsServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ActivityDetailsServlet.do
		int id=0;
		try {
			id= Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			id=0;
		}
		
		String xuehao = request.getParameter("xuehao");

		
		
		
		ActivityBiz ab = new ActivityBiz();
		Activity_PeopleBiz ap = new Activity_PeopleBiz();
		
		Activity activity = ab.getOneArticle(id);
		ab.readCount(id);
		
		if(ap.isok(xuehao, id)>0){
			request.setAttribute("isok", "已报名");
		}else{
			request.setAttribute("isok", "未报名");
		}
		request.setAttribute("activity", activity);
		request.setAttribute("xuehao", xuehao);
		request.setAttribute("id", id);
		RequestDispatcher rd = request.getRequestDispatcher("part/ActivityDetails.jsp");
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
