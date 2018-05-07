package com.heaven.servletapp;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.ChartBiz;
import com.heaven.vo.Chart;

/**
 * Servlet implementation class MobileGoToChart
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/MobileGoToChart.do" })
public class MobileGoToChart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MobileGoToChart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		ChartBiz chartBiz = new ChartBiz();
		List<Chart> firstSite = chartBiz.getFirstSite();
		for (Iterator iterator = firstSite.iterator(); iterator.hasNext();) {
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
		request.setAttribute("id", id);
		request.setAttribute("firstSite", firstSite);
		request.setAttribute("num", firstSite.size());
		request.setAttribute("messagesite", firstSite.get(firstSite.size()-1).getId());
		request.getRequestDispatcher("MobileChart.jsp").forward(request, response);
	}

	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
