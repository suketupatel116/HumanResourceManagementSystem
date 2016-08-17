package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pcube.admin.bean.ReportBean;
import com.pcube.admin.dao.ReportDao;

@SuppressWarnings("serial")
public class ReportUpdateServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
	
		if(userName != null)
		{
		
			//PrintWriter pw= response.getWriter();
			String id = request.getParameter("hId");
			
			String username = request.getParameter("username");
			//pw.println("username is "+username);
			
			String day = request.getParameter("day");
			//pw.println("Day is "+day);
			
			String task = request.getParameter("task");
			//pw.println("Task  is "+HRA);
			
			String timeOn = request.getParameter("timeOn");
			//pw.println("TA  is "+TA);
			
			String timeOff = request.getParameter("timeOff");
			//pw.println("PF is "+PF);
			
			boolean flag = false;
			ReportBean bean = new ReportBean();
			
			bean.setId(Integer.parseInt(id));
			
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
			RequestDispatcher rd = request.getRequestDispatcher("ReportUpdate.jsp");
			rd.forward(request, response);
			
		}
		else
		{
			ReportDao dao = new ReportDao();
			boolean flagInsert = dao.updateData(bean);
			if(flagInsert)
			{
				response.sendRedirect("SalaryList");
			}
		}
	}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}
}
