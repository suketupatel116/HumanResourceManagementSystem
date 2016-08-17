package com.pcube.admin.controller;

import com.pcube.admin.dao.ProjectDao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ProDelete extends HttpServlet
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
			ProjectDao dao = new ProjectDao();
			boolean flag = dao.deleteData(id);
			
			if(flag)
			{
				response.sendRedirect("ProList");
			}
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}	
}
