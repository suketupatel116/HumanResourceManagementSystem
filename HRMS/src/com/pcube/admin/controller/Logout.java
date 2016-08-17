package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet
{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
		session.removeAttribute("userName");
		
		session.invalidate();
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}
}
