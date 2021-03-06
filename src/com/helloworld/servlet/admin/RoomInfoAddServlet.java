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

public class RoomInfoAddServlet extends HttpServlet {

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
		IRoomInfoDao roomInfoDao = new RoomInfoDaoImpl();
		String roomnum = request.getParameter("roomnum");
		String typeid = request.getParameter("roomtypeid");
		int roomtypeid = Integer.parseInt(typeid);
		String state = request.getParameter("roomstate");
		int roomstate = Integer.parseInt(state);
		String roomtel = request.getParameter("roomtel");
		String roomremark = request.getParameter("roomremark");
		RoomInfo roomInfo = new RoomInfo(roomnum, roomtypeid, roomstate, roomtel, roomremark);
		int i = roomInfoDao.save(roomInfo);
		if(i>0) {
			System.out.println("======");
			response.sendRedirect("RoomInfoListServlet");
		} else {
			out.print("<script>alter('添加房间信息失败');history.go(-1);</script>");
		}
		
		out.flush();
		out.close();
	}

}
