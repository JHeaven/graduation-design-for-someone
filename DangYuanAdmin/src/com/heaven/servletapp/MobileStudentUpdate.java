package com.heaven.servletapp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.StudentBiz;

/**
 * Servlet implementation class MobileStudentUpdate
 */
@WebServlet("/MobileStudentUpdate.do")
public class MobileStudentUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MobileStudentUpdate() {
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

		String id = request.getParameter("xuehao");
		String name = request.getParameter("name");
		String pwd = request.getParameter("Password");
		String banji = request.getParameter("banji");
		String sex = request.getParameter("sex");
		int age = 0;
		try {
			age = Integer.parseInt(request.getParameter("age"));
		} catch (NumberFormatException e) {

		}

		String xi = request.getParameter("xi");
		String zhuanye = request.getParameter("zhuanye");

		StudentBiz sb = new StudentBiz();

		if (sb.changeOne(id, name, pwd, banji, sex, age, xi, zhuanye) >= 1) {
			System.out.println("OK");
		} else {
			System.out.println("FALSE");
		}

		// http://localhost:8080/DangYuanAdmin/MobileArticleList.do?belong=13&id=138334204
		RequestDispatcher rd = request.getRequestDispatcher("MobileArticleList.do?belong=12&id="+id);
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
