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
 * Servlet implementation class ArticleAdd
 */
@WebServlet("/ArticleAdd.do")
public class ArticleAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleAdd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		Date date = null;
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String lanmuxuanze = request.getParameter("lanmuxuanze");
		String outtime = request.getParameter("outtime");
		String editor = request.getParameter("editor");
		
		outtime = outtime.replace("T", " ");
		outtime = outtime+":00"; 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			date = sdf.parse(outtime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		/*System.out.println("title="+title);
		System.out.println("author="+author);
		System.out.println("lanmuxuanze="+lanmuxuanze);
		System.out.println("outtime="+outtime);
		System.out.println("editor="+editor);
		System.out.println("date="+date.getTime());
		System.out.println(System.currentTimeMillis());*/
		//<p><img src="ueditor/jsp/upload/image/20160405/1459837776127065136.jpg" title="1459837776127065136.jpg" alt="20150702185741.jpg"/></p>
		//<img src="pic/danghui.png" title="danghui.png" alt="danghui.png"/>
		
		//img判断
		int isImgStart = editor.indexOf("<img ");
		int isImgEnd = -1;
		String img = "pic/dh2.jpg";
		if(isImgStart>=0){
			isImgStart = editor.indexOf("src=", isImgStart);
			if(isImgStart>=0){
				isImgEnd = editor.indexOf("\"",isImgStart+6);
				if(isImgEnd>=0){
					img = editor.substring(isImgStart+5, isImgEnd);
					//System.out.println(img);
				}
			}			
		}
		
		
		
		String outtime1 = ""+date.getTime();
		ArticleBiz ab = new ArticleBiz();
		if(ab.add(lanmuxuanze, title, author, editor, outtime1, 0,img)>0){
			response.getWriter().append("<script>alert('添加成功!');window.close();</script>");
		}else {
			response.getWriter().append("<script>alert('添加失败,请联系管理员!');window.close();</script>");
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
