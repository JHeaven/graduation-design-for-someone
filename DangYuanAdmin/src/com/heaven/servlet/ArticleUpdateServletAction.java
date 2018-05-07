package com.heaven.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ArticleBiz;

/**
 * Servlet implementation class ArticleUpdateServletAction
 */
@WebServlet("/ArticleUpdateServletAction.do")
public class ArticleUpdateServletAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ArticleUpdateServletAction() {
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

		int id = 0;
		try {
			id = Integer.parseInt(request.getParameter("id"));
		} catch (NumberFormatException e) {
			id = 0;
		}
		
		
		
		Date date = null;
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String lanmuxuanze = request.getParameter("lanmuxuanze");
		String outtime = request.getParameter("outtime");
		String editor = request.getParameter("editor");

		outtime = outtime.replace("T", " ");
		outtime = outtime + ":00";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date = sdf.parse(outtime);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		/*
		 * System.out.println("title="+title);
		 * System.out.println("author="+author);
		 * System.out.println("lanmuxuanze="+lanmuxuanze);
		 * System.out.println("outtime="+outtime);
		 * System.out.println("editor="+editor);
		 * System.out.println("date="+date.getTime());
		 * System.out.println(System.currentTimeMillis());
		 */

		// img�ж�
		int isImgStart = editor.indexOf("<img ");
		int isImgEnd = -1;
		String img = "pic/dh2.jpg";
		if (isImgStart >= 0) {
			isImgStart = editor.indexOf("src=", isImgStart);
			if (isImgStart >= 0) {
				isImgEnd = editor.indexOf("\"", isImgStart + 6);
				if (isImgEnd >= 0) {
					img = editor.substring(isImgStart + 5, isImgEnd);
					// System.out.println(img);
				}
			}
		}

		String outtime1 = "" + date.getTime();
		ArticleBiz ab = new ArticleBiz();
		if (ab.update(lanmuxuanze, title, author, editor, outtime1,img,id) > 0) {
			System.out.println("UPDATE OK");
			response.getWriter().append("<script>alert('�޸ĳɹ�!');window.close();</script>");
		}else {
			response.getWriter().append("<script>alert('�޸�ʧ��,����ϵ����Ա!');window.close();</script>");
		}
		
		// response.getWriter().append("Served at:").append(request.getContextPath());
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
