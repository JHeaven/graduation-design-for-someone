package com.heaven.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.heaven.biz.StudentBiz;

/**
 * Servlet implementation class StudentAddServlet
 */
@WebServlet("/StudentAddServlet.do")
public class StudentAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StudentAddServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String alldata = request.getParameter("alldata");
		alldata = "###" + alldata + "####";
		alldata = alldata.replace("\r\n", "##");
		//System.out.println(alldata);
		// 字符解析
		List<String> idList = new ArrayList<String>();
		String idtemp = new String("NOID");
		for (int i = 0; i < alldata.length(); i++) {
			if ((i + 1) != alldata.length()) {
				if (alldata.charAt(i) == '#') {
					if (alldata.charAt(i + 1) != '#') {
						if (!idtemp.equals("NOID")) {
							idList.add(idtemp);
						}
						idtemp = new String("");
					}
				} else {
					idtemp = idtemp + alldata.charAt(i);
				}
			} else {
				idList.add(idtemp);
			}
		}

		// 解析完毕

		// idList

		StudentBiz sb = new StudentBiz();
		int count = 0;
		for (int i = 0; i < idList.size(); i++) {
			// System.out.print(idList.get(i).toString());
			if (sb.addQuick(idList.get(i).toString()) > 0) {
				// System.out.println("==OK");
				count++;
			} else {
				// System.out.println("==NO");
			}

		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().append("本次共输入" + idList.size() + "个学号。")
				.append("成功" + count + "个，剩余" + (idList.size() - count) + "个已存在。【提示:点击上面绿色的**刷新本页数据**即可看见新增的学号。】");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
