package com.sd.servlet;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import com.sd.constance.Cons;
import com.sd.model.Doctor;
import com.sd.model.User;
import com.sd.service.IDoctorService;
import com.sd.service.IUserService;
import com.sd.util.MD5;

/**
 * Servlet implementation class IndexServlet
 */
@Controller
public class DoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource
	IUserService userService = null;

	@Resource
	IDoctorService doctorService = null;

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

		case "my":
			my(request, response);
			break;
		case "update":
			update(request, response);
			break;

		default:
			myTurn(request, response);
			break;
		}
	}

	private void my(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Doctor doc = doctorService.selectByPrimaryKey(id);
		request.setAttribute("doc", doc);
		request.getRequestDispatcher("sub/doctor_show.jsp").forward(request, response);
	}

	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		Doctor doc = doctorService.selectByPrimaryKey(id);
		doc.setName(request.getParameter("name"));
		doc.setSex(request.getParameter("sex"));
		doc.setMid(request.getParameter("mid"));
		doc.setZhiyeId(request.getParameter("zhiyeId"));
		doc.setPhone(request.getParameter("phone"));
		if (doctorService.updateByPrimaryKeySelective(doc)>0) {
			request.setAttribute("message", "window.parent.frames.notyText(\"修改成功！\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyText(\"修改失败！\");");
		}
		
		request.setAttribute("doc", doc);
		request.getRequestDispatcher("sub/doctor_show.jsp").forward(request, response);
	}

	protected void myTurn(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Index: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}
}
