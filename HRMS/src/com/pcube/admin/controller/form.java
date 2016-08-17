package com.pcube.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.FormBean;
import com.pcube.admin.dao.FormDao;

@SuppressWarnings("serial")
public class form extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
			{
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				String con_password = request.getParameter("con_password");
				
				boolean flag = false;
				FormBean bean = new FormBean();
				PrintWriter pw= response.getWriter();
				if(firstName == null || firstName.trim().length() == 0)
				{
					flag = true;
					request.setAttribute("firstName", "<font color = red>Please insert First Name</font>");
				}
				else
				{
					bean.setFirstName(firstName);
				}
				if(lastName == null || lastName.trim().length() == 0)
				{
					flag = true;
					request.setAttribute("lastName", "<font color = red>Please insert Last Name</font>");
				}
				else
				{
					bean.setLastName(lastName);
				}
				
				if(userName == null || userName.trim().length() == 0)
				{
					flag = true;
					request.setAttribute("userName", "<font color = red>Please enter User Name</font>");
				}
				else
				{
					FormDao dao = new FormDao();
					boolean flagCheck = dao.checkUser(userName);
					if(flagCheck)
					{
						flag = true;
						request.setAttribute("invalidate", "<font color=red>User Name Already exists!</font>");
					}
					
					
					bean.setUserName(userName);
				}
				if(password == null || password.trim().length() == 0)
				{
					flag = true;
					request.setAttribute("password", "<font color = red>Please enter password</font>");
				}
				else
				{
					bean.setPassword(password);
				}
				if(con_password == null || con_password.trim().length() == 0)
				{
					flag = true;
					request.setAttribute("con_password", "<font color = red>Please enter confirm password</font>");
				}
				else
				{
					bean.setCon_password(con_password);
				}
				if(!con_password.equals(password)){
					request.setAttribute("Password Invalid","<font color=red>password does not match!</font>");
				}
				
		
				
				if(flag)
				{
					request.setAttribute("bean",bean);
					//request.setAttribute("invalidate password", "<font color=red>password does not match!!</font>");
					RequestDispatcher rd = request.getRequestDispatcher("form.jsp");
					rd.forward(request, response);
				}
				else
				{
					FormDao dao = new FormDao();
					boolean flagInsert = dao.insertData(bean);
					if(flagInsert)
					{
						pw.print("data inserted successfully");
						
						//response.sendRedirect("form.jsp");
					}
				}
				
		}

}

	


