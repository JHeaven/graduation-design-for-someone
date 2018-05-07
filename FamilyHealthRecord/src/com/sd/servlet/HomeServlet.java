package com.sd.servlet;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.sd.model.Home;
import com.sd.service.IHomeService;

/**
 * Servlet implementation class HomeServlet
 */
@Controller
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	@Resource
	IHomeService homeService = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String methodName = (String) request.getAttribute("method");
		switch (methodName) {
		case "selectById":
			selectById(request, response);
			break;
			
		case "add":
			add(request, response);
			break;
		case "update":
			update(request, response);
			break;
			
		default:
			myTurn(request, response);
			break;
		}
	
	}
	
	
	private void selectById(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Home home = homeService.selectByPrimaryKey(id);
		if (home==null) {
			//还没生成家庭信息档案
			request.getRequestDispatcher("sub/home_add.jsp").forward(request,response);
		}else{
			request.setAttribute("home", home);
			request.getRequestDispatcher("sub/home_show.jsp").forward(request,response);
		}
		
	}
	
	
	
	private void add(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		Home home = new Home();
		home.setId(Integer.parseInt(request.getParameter("id")));
		home.setAddress(request.getParameter("address"));
		home.setZipcode(request.getParameter("zipcode"));
		home.setName(request.getParameter("name"));
		home.setPeople(Integer.parseInt(request.getParameter("people")));
		home.setPhone(request.getParameter("phone"));
		home.setPs(request.getParameter("ps"));
		home.setDeleted(0);
		System.out.println("****** [home] = "+home);
		if (homeService.insertSelective(home)>0) {
			request.setAttribute("message", "恭喜家庭建档成功！");
			request.setAttribute("home", home);
			request.getRequestDispatcher("sub/home_show.jsp").forward(request,response);
		}else{
			response.getWriter().append("Home: ").append("NO,failed!");
		}
		
		
	}
	private void update(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		Home home = new Home();
		home.setId(Integer.parseInt(request.getParameter("id")));
		home.setAddress(request.getParameter("address"));
		home.setZipcode(request.getParameter("zipcode"));
		home.setName(request.getParameter("name"));
		home.setPeople(Integer.parseInt(request.getParameter("people")));
		home.setPhone(request.getParameter("phone"));
		home.setPs(request.getParameter("ps"));
		home.setDeleted(0);
		System.out.println("****** [home] = "+home);
		if (homeService.updateByPrimaryKeySelective(home)>0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"修改成功！\");");
			request.setAttribute("home", home);
			request.getRequestDispatcher("sub/home_show.jsp").forward(request,response);
		}else{
			request.setAttribute("message", "window.parent.frames.notyText(\"修改失败请重试！\");");
			request.setAttribute("home", home);
			request.getRequestDispatcher("sub/home_show.jsp").forward(request,response);
		}
		
		
	}
	protected void myTurn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Home: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}
}
