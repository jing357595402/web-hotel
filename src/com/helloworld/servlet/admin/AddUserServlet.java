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

public class AddUserServlet extends HttpServlet {

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
		response.setContentType("text/html charset=utf-8");
		PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		Pwd pwd = new Pwd();
		pwd.setUserid(userid); pwd.setPwd(password);
		IPwdDao pwdDao = new PwdDaoImpl();
		int i = pwdDao.save(pwd);
		if(i>0) {
			System.out.println("======");
			response.sendRedirect("UserListServlet");
		} else {
			out.print("<script>alter('添加用户失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
	}

}
