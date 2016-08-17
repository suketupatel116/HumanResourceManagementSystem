package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.ReportBean;
import com.pcube.admin.dao.ReportDao;

public class ReportGen extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String username = request.getParameter("username");
		String day = request.getParameter("day");
		String task = request.getParameter("task");
		String timeOn = request.getParameter("timeOn");
		String timeOff = request.getParameter("timeOff");
		
		boolean flag = false;
		ReportBean bean = new ReportBean();
		
		if(username == null || username.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("username", "<font color = red>Please insert User Name</font>");
		}
		else
		{
			bean.setUsername(username);
		}
		
		if(day == null || day.trim().length() == 0 ){
			flag = true;
			request.setAttribute("day", "<font color = red>Please Select Day</font>");
		}
		else
		{
			bean.setDay(day);
		}
		
		if(task == null || task.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("task", "<font color = red>Please insert task details</font>");
		}
		else
		{
			bean.setTask(task);
		}
		
		if(timeOn == null || timeOn.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("timeOn", "<font color = red>Please insert time On field</font>");
		}
		else
		{
			bean.setTimeOn(timeOn);
		}
			
		if(timeOff == null || timeOff.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("timeOff", "<font color = red>Please insert time Off field</font>");
		}
		else
		{
			bean.setTimeOff(timeOff);
		}
		
		if(flag)
		{
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("ReportGen.jsp");
			rd.forward(request, response);
		}
		else
		{
			ReportDao dao = new ReportDao();
			boolean flagInsert = dao.insertReport(bean);
			if(flagInsert)
			{
				//pw.print("data inserted successfully");
				response.sendRedirect("UserPage.jsp");
			}
		}
		
		
	}

}
