package com.sd.servlet;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.sd.model.Doctor;
import com.sd.model.User;
import com.sd.service.IDoctorService;
import com.sd.service.IUserService;

/**
 * Servlet implementation class UserServlet
 */

@Controller
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource
	IUserService userService = null;


	@Resource
	IDoctorService doctorService = null;
	
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
		
		case "all":
			all(request, response);
			break;
		case "del":
			del(request, response);
			break;
		case "reset":
			reset(request, response);
			break;
		case "passDoc":
			passDoc(request, response);
			break;
		case "shutDoc":
			shutDoc(request, response);
			break;
		default:
			myTurn(request, response);
			break;
		}
	}

	/*
	 * ��Ա����
	 */
	private void all(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> allUser = userService.selectAll();
		for (User user : allUser) {
			Doctor doc = doctorService.selectByPrimaryKey(user.getId());
			if (doc!=null) {
				user.setDocMid(doc.getMid());
				user.setDocName(doc.getName());
				user.setDocZy(doc.getZhiyeId());
			}
		}
		request.setAttribute("allUser", allUser);
		request.getRequestDispatcher("sub/user_all.jsp").forward(request, response);
	}

	private void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		if (userService.deleteByPrimaryKey(id)>0) {
			request.setAttribute("message", "window.parent.frames.notyError(\"ɾ���ɹ���\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyError(\"ɾ��ʧ�ܣ�\");");
		}
		
		List<User> allUser = userService.selectAll();
		for (User user : allUser) {
			Doctor doc = doctorService.selectByPrimaryKey(user.getId());
			if (doc!=null) {
				user.setDocMid(doc.getMid());
				user.setDocName(doc.getName());
				user.setDocZy(doc.getZhiyeId());
			}
		}
		request.setAttribute("allUser", allUser);
		request.getRequestDispatcher("sub/user_all.jsp").forward(request, response);
	}
	
	private void reset(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		User user = userService.selectByPrimaryKey(id);
		user.setLoginPassword("797f69b345f300bafd556733f3035585");
		if (userService.updateByPrimaryKeySelective(user)>0) {
			request.setAttribute("message", "window.parent.frames.notyError(\"���óɹ���\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyError(\"����ʧ�ܣ�\");");
		}
		
		List<User> allUser = userService.selectAll();
		for (User user1 : allUser) {
			Doctor doc = doctorService.selectByPrimaryKey(user1.getId());
			if (doc!=null) {
				user1.setDocMid(doc.getMid());
				user1.setDocName(doc.getName());
				user1.setDocZy(doc.getZhiyeId());
			}
		}
		request.setAttribute("allUser", allUser);
		request.getRequestDispatcher("sub/user_all.jsp").forward(request, response);
	}
	
	private void passDoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		User user = userService.selectByPrimaryKey(id);
		user.setPhoto("yes");
		if (userService.updateByPrimaryKeySelective(user)>0) {
			request.setAttribute("message", "window.parent.frames.notyError(\"�ʸ���׼�ɹ���\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyError(\"�ʸ���׼ʧ�ܣ�\");");
		}
		
		List<User> allUser = userService.selectAll();
		for (User user1 : allUser) {
			Doctor doc = doctorService.selectByPrimaryKey(user1.getId());
			if (doc!=null) {
				user1.setDocMid(doc.getMid());
				user1.setDocName(doc.getName());
				user1.setDocZy(doc.getZhiyeId());
			}
		}
		request.setAttribute("allUser", allUser);
		request.getRequestDispatcher("sub/user_all.jsp").forward(request, response);
	}
	private void shutDoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		User user = userService.selectByPrimaryKey(id);
		user.setPhoto("no");
		if (userService.updateByPrimaryKeySelective(user)>0) {
			request.setAttribute("message", "window.parent.frames.notyError(\"�ʸ����ɹ���\");");
		}else{
			request.setAttribute("message", "window.parent.frames.notyError(\"�ʸ���ʧ�ܣ�\");");
		}
		
		List<User> allUser = userService.selectAll();
		for (User user1 : allUser) {
			Doctor doc = doctorService.selectByPrimaryKey(user1.getId());
			if (doc!=null) {
				user1.setDocMid(doc.getMid());
				user1.setDocName(doc.getName());
				user1.setDocZy(doc.getZhiyeId());
			}
		}
		request.setAttribute("allUser", allUser);
		request.getRequestDispatcher("sub/user_all.jsp").forward(request, response);
	}
	


	protected void myTurn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("User: ").append("����MyTurn����---[�����Ƿ�������switch case]");
	}
}
