package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pcube.admin.bean.PayrollBean;
import com.pcube.admin.dao.PayrollDao;

public class SalUpdate extends HttpServlet
{
@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
	
		if(userName != null)
		{
			String id = request.getParameter("hId");
			PayrollDao dao = new PayrollDao();
			PayrollBean bean = dao.viewData(id);
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("SalUpdate.jsp");
			rd.forward(request, response);
				
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}
		
}
