package com.heaven.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ActivityBiz;

/**
 * Servlet implementation class ActivityDelServlet
 */
@WebServlet("/ActivityDelServlet.do")
public class ActivityDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityDelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		int  delid =Integer.parseInt(request.getParameter("delid"));
		ActivityBiz ab = new ActivityBiz();
		if(ab.del(delid)>=1){
			response.getWriter().append("É¾³ý³É¹¦!");
			System.out.println("del success");
		}else{
			response.getWriter().append("É¾³ýÊ§°Ü!");
			System.out.println("del fal");
		}
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
