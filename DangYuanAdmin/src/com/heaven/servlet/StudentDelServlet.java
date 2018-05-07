package com.heaven.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.StudentBiz;

/**
 * Servlet implementation class StudentDelServlet
 */
@WebServlet("/StudentDelServlet.do")
public class StudentDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentDelServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("UTF-8");
		String delid = request.getParameter("delid");
		//System.out.print(delid);
		StudentBiz sb = new StudentBiz();
		if(sb.del(delid)>0){
			
			response.getWriter().append("Ñ§ºÅ:"+delid+"É¾³ý³É¹¦!");
		}else{
			response.getWriter().append("Ñ§ºÅ:"+delid+"É¾³ýÊ§°Ü!");
			System.out.println("del fal");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
