package com.heaven.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ActivityBiz;
import com.heaven.vo.Activity;

/**
 * Servlet implementation class ActivityUpdateServletAction
 */
@WebServlet("/ActivityUpdateServlet.do")
public class ActivityUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		ActivityBiz ab = new ActivityBiz();
		Activity activity = ab.getOneArticle(id);
		
		// html5ÈÕÆÚ×ª»»

		activity.setOuttime(activity.getOuttime().replace(" ", "T"));
		activity.setBegintime(activity.getBegintime().replace(" ", "T"));
		activity.setEndtime(activity.getEndtime().replace(" ", "T"));
		
		request.setAttribute("activity", activity);
		RequestDispatcher rd = request.getRequestDispatcher("ActivityUpdate.jsp");
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
