package com.helloworld.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helloworld.bean.Customer;
import com.helloworld.dao.ICustomerDao;
import com.helloworld.dao.impl.CustomerDaoImpl;

public class CustomerAddServlet extends HttpServlet {

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
		int customertypeid = Integer.parseInt(request.getParameter("customertypeid"));
		String customerid = request.getParameter("customerid");
		String customername = request.getParameter("customername");
		String customersex = request.getParameter("customersex");
		String customerhao = request.getParameter("customerhao");
		String customertel = request.getParameter("customertel");
		String customerremark = request.getParameter("customerremark");
		Customer customer = new Customer(customertypeid, customerid, customername, customersex, customerhao, customertel, customerremark);
		ICustomerDao customerDao = new CustomerDaoImpl();
		int i = customerDao.save(customer);
		if(i>0) {
			response.sendRedirect("CustomerListServlet");
		} else {
			out.print("<script>alter('添加用户信息失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
	}

}
