package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.RegBean;
import com.pcube.admin.dao.VacancyDao;

public class Recruitment extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			String jobtitle = request.getParameter("jobtitle");
			String experience = request.getParameter("experience");
			//String remarks = request.getParameter("remarks");
			
			boolean flag = false;
			RegBean bean = new RegBean();
			
			if(jobtitle == null || jobtitle.trim().length() == 0)
			{
				flag = true;
				request.setAttribute("jobtitle", "<font color = red>Please insert Jobtitle</font>");
			}
			else
			{
				bean.setJobtitle(jobtitle);
			}
			
			if(experience == null || experience.trim().length() == 0)
			{
				flag = true;
				request.setAttribute("experience", "<font color = red>Please add Experience</font>");
			}
			else
			{
				bean.setExperience(experience);
			}
			
			if(flag)
			{
				request.setAttribute("bean", bean);
				RequestDispatcher rd = request.getRequestDispatcher("Recruitment.jsp");
				rd.forward(request, response);
			}
			else
			{
				VacancyDao dao = new VacancyDao();
				boolean flagInsert = dao.insertRecruit(bean);
				if(flagInsert)
				{
					//pw.print("data inserted successfully");
					response.sendRedirect("VacancyList");
				}
			}
			
	
	}

}
