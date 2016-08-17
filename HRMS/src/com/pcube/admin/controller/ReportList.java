package com.pcube.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.dao.ReportDao;


@SuppressWarnings("serial")
public class ReportList extends HttpServlet
{
	@SuppressWarnings("rawtypes")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
			ReportDao dao = new ReportDao();
			ArrayList list = dao.selectData();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("ReportList.jsp");
			rd.forward(request, response);
		}

}
