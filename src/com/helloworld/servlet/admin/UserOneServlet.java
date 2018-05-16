package com.helloworld.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helloworld.bean.Pwd;
import com.helloworld.dao.IPwdDao;
import com.helloworld.dao.impl.PwdDaoImpl;

public class UserOneServlet extends HttpServlet {

	/** 
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		IPwdDao pwdDao = new PwdDaoImpl();
		String id = request.getParameter("id");
		Pwd pwd = pwdDao.findById(Integer.parseInt(id));
		request.setAttribute("pwd", pwd);
		request.getRequestDispatcher("admin/html/user_update.jsp").forward(request, response);
		
		out.flush();
		out.close();
	}

}
