package com.pcube.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.pcube.admin.bean.loginBean;
import com.pcube.admin.dao.loginDao;

public class login extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		boolean flag = false;
		loginBean lbean = new loginBean();
		
		if(userName == null || userName.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("userName", "<font color = red>Please enter User Name</font>");
		}
		else
		{
			lbean.setUserName(userName);
		}
		
		if(password == null || password.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("password", "<font color = red>Please enter password</font>");
		}
		else
		{
			lbean.setPassword(password);
		}
	
		if(flag)
		{
			request.setAttribute("lbean", lbean);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		}
		else
		{
			loginDao dao = new loginDao();
			loginBean  bean = dao.loginData(lbean);
			int loginId = Integer.parseInt(bean.getId());
			String userName1 = bean.getUserName();
			String password1 = bean.getPassword();
			int rollId = bean.getRollId();
			
			
			if(userName.equals(userName1) && password.equals(password1) && rollId == 1)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userName", userName);
				session.setAttribute("loginId", loginId);
				response.sendRedirect("Dashboard.jsp");
			}
			else if(userName.equals(userName1) && password.equals(password1) && rollId == 2)
			{
				HttpSession session = request.getSession();
				session.setAttribute("userName", userName);
				session.setAttribute("loginId", loginId);
				response.sendRedirect("UserPage.jsp");
			}
			else 
			{
				request.setAttribute("invalidate", "<font color=red>Invalid username or password.</font>");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}	
		}
	
		
		
	}

}
