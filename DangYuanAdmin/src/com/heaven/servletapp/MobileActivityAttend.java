package com.heaven.servletapp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.Activity_PeopleBiz;

/**
 * Servlet implementation class MobileActivityAttend
 */
@WebServlet("/MobileActivityAttend.do")
public class MobileActivityAttend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileActivityAttend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int id=0;
		try {
			id= Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			id=0;
		}
		
		String xuehao = request.getParameter("xuehao");
		
		Activity_PeopleBiz ap = new Activity_PeopleBiz();
		
		if(ap.isok(xuehao, id)>0){
			response.getWriter().append("<script>alert('���Ѿ��μӹ���Ŷ~');</script>");
		}else{
			if(ap.add(xuehao, id)>0){
				response.getWriter().append("<script>alert('�����ɹ�~');</script>");
				System.out.println(xuehao+"�μ��˻");
			}else{
				response.getWriter().append("<script>alert('����ʧ��~����ϵ����Ա');</script>");
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("ActivityDetailsServlet.do?");
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
