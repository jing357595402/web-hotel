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

public class LoginServlet extends HttpServlet {

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
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String userid = request.getParameter("textfield");
		String password = request.getParameter("password");
		IPwdDao pwdDao = new PwdDaoImpl();
		Pwd pwd2 = pwdDao.findByNameAndPwd(userid, password);
		if(null==pwd2) {
			out.print("<script>alert('用户名密码错误');history.go(-1);</script>");
			return;
		}else {
			request.getSession().setAttribute("pwd", pwd2);
			response.sendRedirect("admin/html/index.jsp");
		}
		out.flush();
		out.close();
	}

}
