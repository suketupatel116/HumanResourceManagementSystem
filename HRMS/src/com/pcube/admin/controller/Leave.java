package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.LeaveBean;
import com.pcube.admin.dao.LeaveDao;

public class Leave extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String leavetype = request.getParameter("leavetype");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String remarks = request.getParameter("remarks");
		
		boolean flag = false;
		LeaveBean bean = new LeaveBean();
		
		if(username == null || username.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("username", "<font color = red>Please insert User Name</font>");
		}
		else
		{
			bean.setUsername(username);
		}
		
		if(leavetype == null || leavetype.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("leavetype", "<font color = red>Please insert leavetype</font>");
		}
		else
		{
			bean.setLeavetype(leavetype);
		}
		if(from == null || from.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("from", "<font color = red>Please insert date</font>");
		}
		else
		{
			bean.setFrom(from);
		}
		if(to == null || to.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("to", "<font color = red>Please insert date</font>");
		}
		else
		{
			bean.setTo(to);
		}
		
		if(flag)
		{
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("Leave.jsp");
			rd.forward(request, response);
		}
		else
		{
			LeaveDao dao = new LeaveDao();
			boolean flagInsert = dao.insert(bean);
			if(flagInsert)
			{
				//pw.print("data inserted successfully");
				response.sendRedirect("UserPage.jsp");
			}
		}
	}
}
