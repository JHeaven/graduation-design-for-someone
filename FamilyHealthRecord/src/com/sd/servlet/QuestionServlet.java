package com.sd.servlet;

import java.io.IOException;
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
import com.sd.model.Question;
import com.sd.model.User;
import com.sd.service.IHealthRecordService;
import com.sd.service.IQuestionService;
import com.sd.service.IUserService;
import com.sd.util.MD5;

/**
 * Servlet implementation class IndexServlet
 */
@Controller
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource
	IUserService userService = null;

	@Resource
	IQuestionService questionService = null;

	@Resource
	IHealthRecordService healthRecordService = null;

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

		case "goToAdd":
			goToAdd(request, response);
			break;
		case "add":
			add(request, response);
			break;
		case "my":
			my(request, response);
			break;
		case "update":
			update(request, response);
			break;
		case "del":
			del(request, response);
			break;
		case "delByAdmin":
			delByAdmin(request, response);
			break;
		case "all":
			all(request, response);
			break;
		case "check":
			check(request, response);
			break;
		case "ans":
			ans(request, response);
			break;
		default:
			myTurn(request, response);
			break;
		}
	}

	private void goToAdd(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<HealthRecord> allRecord = healthRecordService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.getRequestDispatcher("sub/question_ask.jsp").forward(request, response);
	}

	private void my(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

		List<Question> allQuestion = questionService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}

		List<HealthRecord> allRecord = healthRecordService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all_of_mine.jsp").forward(request, response);
	}

	
	/*
	 * 医生回复
	 */
	private void ans(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute(Cons.LoginFlage);
		Question qu = new Question();
		qu.setId(Integer.parseInt(request.getParameter("id")));
		qu.setAns(request.getParameter("ans"));
		qu.setDoctorId(user.getId());

		System.out.println(qu);
		if (questionService.updateByPrimaryKeySelective(qu) > 0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"回复成功！\");");
		} else {
			request.setAttribute("message", "window.parent.frames.notyText(\"回复失败！\");");
		}

		List<Question> allQuestion = questionService.selectByUser(null);
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all.jsp").forward(request, response);
	}

	/**
	 * 醫生查看
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Question> allQuestion = questionService.selectByUser(null);
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all.jsp").forward(request, response);
	}

	/*
	 * 醫生查看
	 */
	private void check(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Question question = questionService.selectByPrimaryKey(id);
		question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		HealthRecord hr = healthRecordService.selectByPrimaryKey(question.getPeopleId());
		request.setAttribute("question", question);
		request.setAttribute("r", hr);
		request.getRequestDispatcher("sub/question_check.jsp").forward(request, response);
	}

	private void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		if (questionService.deleteByPrimaryKey(id) > 0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"删除成功！\");");
		} else {
			request.setAttribute("message", "window.parent.frames.notyText(\"删除失败！\");");
		}

		HttpSession session = request.getSession();

		List<Question> allQuestion = questionService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}

		List<HealthRecord> allRecord = healthRecordService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all_of_mine.jsp").forward(request, response);
	}

	private void delByAdmin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		if (questionService.deleteByPrimaryKey(id) > 0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"删除成功！\");");
		} else {
			request.setAttribute("message", "window.parent.frames.notyText(\"删除失败！\");");
		}

		List<Question> allQuestion = questionService.selectByUser(null);
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all.jsp").forward(request, response);
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Question qu = new Question();
		qu.setUserId(Integer.parseInt(request.getParameter("userId")));
		qu.setPeopleId(Integer.parseInt(request.getParameter("peopleId")));
		qu.setAsk(request.getParameter("ask"));

		System.out.println(qu);
		if (questionService.insertSelective(qu) > 0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"咨询成功！\");");
		} else {
			request.setAttribute("message", "window.parent.frames.notyText(\"咨询失败！\");");
		}

		HttpSession session = request.getSession();

		List<Question> allQuestion = questionService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}

		List<HealthRecord> allRecord = healthRecordService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all_of_mine.jsp").forward(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Question qu = new Question();
		qu.setId(Integer.parseInt(request.getParameter("id")));
		qu.setUserId(Integer.parseInt(request.getParameter("userId")));
		qu.setPeopleId(Integer.parseInt(request.getParameter("peopleId")));
		qu.setAsk(request.getParameter("ask"));

		System.out.println(qu);
		if (questionService.updateByPrimaryKeySelective(qu) > 0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"修改成功！\");");
		} else {
			request.setAttribute("message", "window.parent.frames.notyText(\"修改失败！\");");
		}
		HttpSession session = request.getSession();

		List<Question> allQuestion = questionService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		for (Question question : allQuestion) {
			question.setPeopleName(healthRecordService.selectByPrimaryKey(question.getPeopleId()).getName());
		}

		List<HealthRecord> allRecord = healthRecordService
				.selectByUser(((User) session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.setAttribute("allQuestion", allQuestion);
		request.getRequestDispatcher("sub/question_all_of_mine.jsp").forward(request, response);
	}

	protected void myTurn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Question: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}
}
