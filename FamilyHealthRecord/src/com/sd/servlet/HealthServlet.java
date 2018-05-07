package com.sd.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import com.sd.constance.Cons;
import com.sd.model.HealthRecord;
import com.sd.model.User;
import com.sd.service.IHealthRecordService;

/**
 * Servlet implementation class HealthServlet
 */

@Controller
public class HealthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
    
    @Resource
    IHealthRecordService healthRecordService = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HealthServlet() {
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
		case "add":
			add(request, response);
			break;
	
		case "show":
			show(request, response);
			break;
		case "update":
			update(request, response);
			break;
		case "del":
			del(request, response);
			break;
	
		default:
			myTurn(request, response);
			break;
		}
	}

	protected void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthRecord hr = new HealthRecord();
		hr.setUserId(Integer.parseInt(request.getParameter("userId")));
		hr.setName(request.getParameter("name"));
		hr.setSex(request.getParameter("sex"));
		try {
			hr.setBirth(sdf.parse(request.getParameter("birth")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		hr.setPhone(request.getParameter("phone"));
		hr.setHeight(Integer.parseInt(request.getParameter("height")));
		hr.setWeight(Integer.parseInt(request.getParameter("weight")));
		hr.setXuexing(request.getParameter("xuexing"));
		hr.setAddress(request.getParameter("address"));
		hr.setJiaTingBingShi(request.getParameter("jiaTingBingShi"));
		hr.setJiWangBingShi(request.getParameter("jiWangBingShi"));
		hr.setXianYouBingShi(request.getParameter("xianYouBingShi"));
		hr.setZhiLiaoJiLu(request.getParameter("zhiLiaoJiLu"));
		hr.setZhiYeJingLi(request.getParameter("zhiYeJingLi"));
		hr.setShengHuoXiGuan(request.getParameter("shengHuoXiGuan"));
		hr.setYingShiXiGuan(request.getParameter("yingShiXiGuan"));
		
		if (healthRecordService.insertSelective(hr)>0) {
			List<HealthRecord> allRecord = healthRecordService.selectByUser(hr.getUserId());
			request.setAttribute("allRecord", allRecord);
			request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
		}else{
			List<HealthRecord> allRecord = healthRecordService.selectByUser(hr.getUserId());
			request.setAttribute("allRecord", allRecord);
			request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
		}
		
	
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HealthRecord hr = new HealthRecord();
		hr.setId(Integer.parseInt(request.getParameter("id")));
		hr.setUserId(Integer.parseInt(request.getParameter("userId")));
		hr.setName(request.getParameter("name"));
		hr.setSex(request.getParameter("sex"));
		try {
			hr.setBirth(sdf.parse(request.getParameter("birth")));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		hr.setPhone(request.getParameter("phone"));
		hr.setHeight(Integer.parseInt(request.getParameter("height")));
		hr.setWeight(Integer.parseInt(request.getParameter("weight")));
		hr.setXuexing(request.getParameter("xuexing"));
		hr.setAddress(request.getParameter("address"));
		hr.setJiaTingBingShi(request.getParameter("jiaTingBingShi"));
		hr.setJiWangBingShi(request.getParameter("jiWangBingShi"));
		hr.setXianYouBingShi(request.getParameter("xianYouBingShi"));
		hr.setZhiLiaoJiLu(request.getParameter("zhiLiaoJiLu"));
		hr.setZhiYeJingLi(request.getParameter("zhiYeJingLi"));
		hr.setShengHuoXiGuan(request.getParameter("shengHuoXiGuan"));
		hr.setYingShiXiGuan(request.getParameter("yingShiXiGuan"));
		
		if (healthRecordService.updateByPrimaryKeySelective(hr)>0) {
			List<HealthRecord> allRecord = healthRecordService.selectByUser(Integer.parseInt(request.getParameter("userId")));
			request.setAttribute("allRecord", allRecord);
			request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
		}else{
			List<HealthRecord> allRecord = healthRecordService.selectByUser(Integer.parseInt(request.getParameter("userId")));
			request.setAttribute("allRecord", allRecord);
			request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
		}
		
	
	}
	
	
	protected void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<HealthRecord> allRecord = healthRecordService.selectByUser(Integer.parseInt(request.getParameter("userId")));
		request.setAttribute("allRecord", allRecord);
		request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
	}
	
	protected void del(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("id"));
		healthRecordService.deleteByPrimaryKey(id);
		HttpSession session = request.getSession();
		List<HealthRecord> allRecord = healthRecordService.selectByUser(((User)session.getAttribute(Cons.LoginFlage)).getId());
		request.setAttribute("allRecord", allRecord);
		request.getRequestDispatcher("sub/health_show.jsp").forward(request, response);
	}
	
	
	protected void myTurn(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Health: ").append("触发MyTurn函数---[请检查是否配置了switch case]");
	}

}
