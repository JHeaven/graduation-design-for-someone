package com.sd.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import com.sd.constance.Cons;
import com.sd.model.HealthRecord;
import com.sd.model.News;
import com.sd.model.Question;
import com.sd.model.User;
import com.sd.service.IHealthRecordService;
import com.sd.service.INewsService;
import com.sd.service.IQuestionService;
import com.sd.service.IUserService;
import com.sd.util.MD5;

/**
 * Servlet implementation class IndexServlet
 */
@Controller
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource
	IUserService userService = null;
	@Resource
	IHealthRecordService healthRecordService = null;
	@Resource
	INewsService newsService = null;
	@Resource
	IQuestionService questionService = null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String methodName = (String) request.getAttribute("method");
		switch (methodName) {
		case "sayhello":
			sayhello(request, response);
			break;
		case "login":
			login(request, response);
			break;
		case "reg":
			reg(request, response);
			break;
		case "log":
			log(request, response);
			break;
		case "index":
			index(request, response);
			break;
		case "indexRight":
			indexRight(request, response);
			break;
		default:
			myTurn(request, response);
			break;
		}
	}

	private void indexRight(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<User> allUser = userService.selectAll();
		List<HealthRecord> allHealth = healthRecordService.selectByUser(null);
		List<News> allNews = newsService.selectTop8();
		List<Question> allQuestion = questionService.selectByUser(null);
		int simpleUser = 0;
		int docUser = 0;
		for (User user : allUser) {
			if (user.getUserType().equals("普通会员")) {
				simpleUser++;
			}else if ((user.getUserType().equals("医生会员"))) {
				docUser++;
			}
		}
		List<News> allNews1 = new ArrayList<News>();
		List<News> allNews2 = new ArrayList<News>();
		allNews1.add(allNews.get(0));
		allNews1.add(allNews.get(1));
		allNews1.add(allNews.get(2));
		allNews2.add(allNews.get(3));
		allNews2.add(allNews.get(4));
		allNews2.add(allNews.get(5));
		
		request.setAttribute("allUser", allUser);
		request.setAttribute("allHealth", allHealth);
		request.setAttribute("allNews", allNews);
		request.setAttribute("allNews1", allNews1);
		request.setAttribute("allNews2", allNews2);
		request.setAttribute("allQuestion", allQuestion);
		request.setAttribute("simpleUser", simpleUser);
		request.setAttribute("docUser", docUser);

		request.getRequestDispatcher("sub/index_right.jsp").forward(request, response);
	}

	private void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void sayhello(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append("触发sayhello函数");
	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		HttpSession session = request.getSession();
		User user = userService.login(name, MD5.encryption(pass));
		if (user == null) {
			request.setAttribute("message", "用户名密码错误！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			Date last = user.getLastDate();
			session.setAttribute(Cons.LastLoginFlage, last);
			session.setAttribute(Cons.LoginFlage, user);
			user.setLastDate(new Date());
			userService.updateByPrimaryKeySelective(user);
			System.out.println("登陆用户：" + user);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

	/*
	 * 注册
	 */
	protected void reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("username");
		String pass = request.getParameter("password");
		String typeName = request.getParameter("typeName");

		User user = userService.login(name, null);
		if (user == null) {
			User u = new User();
			u.setLoginName(name);
			u.setLoginPassword(MD5.encryption(pass));
			u.setUserType(typeName);
			u.setRegisterDate(new Date());
			u.setLastDate(new Date());
			u.setPhoto("no");
			u.setUserSection("正常");
			if (userService.insertSelective(u) > 0) {
				request.setAttribute("message", "用户名注冊成功！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				request.setAttribute("message", "用户名注冊失敗！");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("message", "用户名已存在！");
			request.getRequestDispatcher("reg.jsp").forward(request, response);
		}

	}

	protected void log(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute(Cons.LoginFlage, null);
		response.sendRedirect("login.jsp");
	}

	protected void myTurn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Index: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}
}
