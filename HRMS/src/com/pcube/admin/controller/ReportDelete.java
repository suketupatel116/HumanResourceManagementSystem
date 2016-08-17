package com.pcube.admin.controller;

import com.pcube.admin.dao.ReportDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ReportDelete extends HttpServlet
{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
		{
	
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
	
		if(userName != null)
		{
			String id=request.getParameter("hId");
			ReportDao dao = new ReportDao();
			boolean flag = dao.deleteData(id);
			
			if(flag)
			{
				response.sendRedirect("ReportList");
			}
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}	
}
