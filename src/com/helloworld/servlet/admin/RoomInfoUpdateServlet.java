package com.helloworld.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helloworld.bean.RoomInfo;
import com.helloworld.dao.IRoomInfoDao;
import com.helloworld.dao.impl.RoomInfoDaoImpl;

public class RoomInfoUpdateServlet extends HttpServlet {

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
		response.setContentType("text/html;chset=utf-8");
		PrintWriter out = response.getWriter();
		int roompk = Integer.parseInt(request.getParameter("roompk"));
		String roomnum = request.getParameter("roomnum");
		int roomtypeid = Integer.parseInt(request.getParameter("roomtypeid"));
		int roomstate = Integer.parseInt(request.getParameter("roomstate"));
		String roomtel = request.getParameter("roomtel");
		String roomremark = request.getParameter("roomremark");
		RoomInfo roomInfo = new RoomInfo(roompk,roomnum, roomtypeid, roomstate, roomtel, roomremark);
		System.out.println(roomInfo.getRemark());
		IRoomInfoDao roomInfoDao = new RoomInfoDaoImpl();
		roomInfoDao.update(roomInfo);
		response.sendRedirect("RoomInfoListServlet");
		out.flush();
		out.close();
	}

}
