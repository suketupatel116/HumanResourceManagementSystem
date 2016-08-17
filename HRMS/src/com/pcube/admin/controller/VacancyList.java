package com.pcube.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.dao.VacancyDao;


@SuppressWarnings("serial")
public class VacancyList extends HttpServlet
{
	@SuppressWarnings("rawtypes")
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
			VacancyDao dao = new VacancyDao();
			ArrayList list = dao.vacancylist();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("VacancyList.jsp");
			rd.forward(request, response);
		}
}