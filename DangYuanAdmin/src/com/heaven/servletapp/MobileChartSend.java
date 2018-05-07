package com.heaven.servletapp;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ChartBiz;
import com.heaven.biz.StudentBiz;
import com.heaven.utils.GeTui;
import com.heaven.vo.Chart;
import com.heaven.vo.Student;

/**
 * Servlet implementation class MobileChartSend
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/MobileChartSend.do" })
public class MobileChartSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileChartSend() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		Chart chart = new Chart();
		chart.setForm_id(request.getParameter("id").toString());
		chart.setContent(request.getParameter("content").toString());
		chart.setOut_time(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		
		StudentBiz studentBiz = new StudentBiz();
		Student stu = studentBiz.getOneById(chart.getForm_id());
		//随机推送
		int x=(int)(Math.random()*12);
		if (x==5) {
			GeTui gt = new GeTui();
			gt.Push(stu.getName()+"["+stu.getId()+"]发了一条消息", chart.getContent());
		}
		
		
		//插如数据库
		ChartBiz chartBiz = new ChartBiz();
		int flag = chartBiz.sendMessage(chart);
		System.out.println(chart);
		response.getWriter().append(""+flag);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
