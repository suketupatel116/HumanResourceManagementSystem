package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.ProjectBean;
import com.pcube.admin.dao.ProjectDao;

public class Pro extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String cname = request.getParameter("cname");
		String duration = request.getParameter("duration");
		String teamlead = request.getParameter("teamlead");
		//String remarks = request.getParameter("remarks");
		
		boolean flag = false;
		ProjectBean bean = new ProjectBean();
		
		if(title == null || title.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("title", "<font color = red>Please insert Title</font>");
		}
		else
		{
			bean.setTitle(title);
		}
		
		if(cname == null || cname.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("cname", "<font color = red>Please insert Client Name</font>");
		}
		else
		{
			bean.setCname(cname);
		}
		if(duration == null || duration.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("duration", "<font color = red>Please insert duration</font>");
		}
		else
		{
			bean.setDuration(duration);
		}
		if(teamlead == null || teamlead.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("teamlead", "<font color = red>Please insert teamleader name</font>");
		}
		else
		{
			bean.setTeamlead(teamlead);
		}
		
		if(flag)
		{
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("Pro.jsp");
			rd.forward(request, response);
		}
		else
		{
			ProjectDao dao = new ProjectDao();
			boolean flagInsert = dao.insert(bean);
			if(flagInsert)
			{
				//pw.print("data inserted successfully");
				response.sendRedirect("ProList.jsp");
			}
		}
	}
}
