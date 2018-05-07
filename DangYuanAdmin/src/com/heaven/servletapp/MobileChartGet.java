package com.heaven.servletapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ChartBiz;
import com.heaven.vo.Chart;

import net.sf.json.JSONArray;

/**
 * Servlet implementation class MobileChartGet
 */
@WebServlet("/MobileChartGet.do")
public class MobileChartGet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileChartGet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int site = Integer.valueOf(request.getParameter("site").toString());
		String id = request.getParameter("id").toString();
		ChartBiz chartBiz = new ChartBiz();
		List<Chart> nextChart = chartBiz.getNextSite(site);
		for (Iterator iterator = nextChart.iterator(); iterator.hasNext();) {
			Chart chart = (Chart) iterator.next();
			if (chart.getForm_id().equals(id)) {
				if (chart.getName().equals("未设置")) {
					chart.setContent(chart.getContent()+"<br>[提示：请尽快到个人中心补全信息，不然别人怎么知道你是谁呢？]");
				}
				chart.setSign("right");
			}else{
				if (chart.getName().equals("未设置")) {
					chart.setContent(chart.getForm_id()+":"+chart.getContent());
				}else{
					chart.setContent(chart.getName()+":"+chart.getContent());
				}
				chart.setSign("left");
			}
			
			if (chart.getPic() == null) {
				chart.setPic("pic/simple.jpg");
			}
			

		}		
		JSONArray jsonArray = JSONArray.fromObject(nextChart);
		System.out.println(id+"正在聊天界面"+site);
		System.out.println(jsonArray.toString());
		response.getWriter().append(jsonArray.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
