package com.heaven.servlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class ActivityShow
 */
@WebServlet("/ActivityShow.do")
public class ActivityShow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityShow() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ActivityBiz ab = new ActivityBiz();
		Activity_PeopleBiz ap = new Activity_PeopleBiz();
		
		
		List<Activity> AllActivity = ab.getAllActivity();
		request.setAttribute("AllActivity", AllActivity);
		RequestDispatcher rd = request.getRequestDispatcher("part/ActivityMain.jsp");
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
