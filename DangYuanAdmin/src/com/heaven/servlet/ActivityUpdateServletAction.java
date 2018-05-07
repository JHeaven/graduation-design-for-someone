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

import com.heaven.biz.ActivityBiz;

/**
 * Servlet implementation class ActivityUpdateServletAction
 */
@WebServlet("/ActivityUpdateServletAction.do")
public class ActivityUpdateServletAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityUpdateServletAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		String outtime = request.getParameter("outtime");
		String begintime = request.getParameter("begintime");
		String endtime = request.getParameter("endtime");
		String editor = request.getParameter("editor");

		String editor1 = editor;
		
		outtime = outtime.replace("T", " ");
		outtime = outtime + ":00";
		
		begintime = begintime.replace("T", " ");
		begintime = begintime + ":00"; 
		
		endtime = endtime.replace("T", " ");
		endtime = endtime + ":00"; 
		
		String outtime1 = null;
		String begintime1 = null;
		String endtime1=null;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date = sdf.parse(outtime);
			outtime1 = ""+date.getTime();
			
			date = sdf.parse(begintime);
			begintime1 = ""+date.getTime();
			
			date = sdf.parse(endtime);
			endtime1 = ""+date.getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		// img判断
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

		ActivityBiz ab = new ActivityBiz();
		if (ab.update(title, author, editor1, outtime1, img, begintime1, endtime1, id)> 0) {
			System.out.println("UPDATE OK");
			//System.out.println(editor1);
			response.getWriter().append("<script>alert('修改成功!');window.close();</script>");
		}else {
			response.getWriter().append("<script>alert('修改失败,请联系管理员!');window.close();</script>");
			System.out.println("UPDATE FAILED");
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
