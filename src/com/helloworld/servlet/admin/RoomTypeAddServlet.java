package com.helloworld.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.helloworld.bean.RoomType;
import com.helloworld.dao.IRoomTypeDao;
import com.helloworld.dao.impl.RoomTypeDaoImpl;

public class RoomTypeAddServlet extends HttpServlet {

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
		int roomid = Integer.parseInt(request.getParameter("roomid"));
		String roomtype = request.getParameter("roomtype");
		int bed = Integer.parseInt(request.getParameter("bed"));
		Float price = (Float.parseFloat(request.getParameter("price")));
		Float foregift = (Float.parseFloat(request.getParameter("foregift")));
		String cl_room = request.getParameter("cl_room");
		Float cl_price = Float.parseFloat(request.getParameter("cl_price"));
		String remark = request.getParameter("remark");
		RoomType roomType2 = new RoomType(roomid, roomtype, bed, price, foregift, cl_room, cl_price, remark);
		IRoomTypeDao roomTypeDao = new RoomTypeDaoImpl();
		int i = roomTypeDao.save(roomType2);
		if(i>0) {
			response.sendRedirect("RoomTypeListServlet");
		} else {
			out.print("<script>alter('添加房间类别信息失败');history.go(-1);</script>");
		}
		out.flush();
		out.close();
	}

}
