package com.pcube.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.dao.RegDao;

@SuppressWarnings("serial")
public class RegList extends HttpServlet
{
	@SuppressWarnings("rawtypes")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
			RegDao dao = new RegDao();
			ArrayList list = dao.selectData();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("RegList.jsp");
			rd.forward(request, response);
		}

}
