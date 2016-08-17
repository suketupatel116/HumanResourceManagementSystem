package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pcube.admin.bean.PayrollBean;
import com.pcube.admin.dao.PayrollDao;
import com.pcube.admin.dao.RegDao;

public class SalaryAdd extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String basic = request.getParameter("basic");
		String HRA = request.getParameter("HRA");
		String TA = request.getParameter("TA");
		String PF = request.getParameter("PF");
		
		boolean flag = false;
		PayrollBean bean = new PayrollBean();
		
		if(username == null || username.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("username", "<font color = red>Please insert User Name</font>");
		}
		else
		{
			bean.setUsername(username);
		}
		
		if(basic == null || basic.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("basic", "<font color = red>Please insert Basic Salary</font>");
		}
		else
		{
			bean.setBasic(basic);
		}
		if(HRA == null || HRA.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("HRA", "<font color = red>Please insert HRA</font>");
		}
		else
		{
			bean.setHRA(HRA);
		}
		if(TA == null || TA.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("TA", "<font color = red>Please insert TA</font>");
		}
		else
		{
			bean.setTA(TA);
		}
		if(PF == null || PF.trim().length() == 0)
		{
			flag = true;
			request.setAttribute("PF", "<font color = red>Please insert PF </font>");
		}
		else
		{
			bean.setPF(PF);
		}
		
		if(flag)
		{
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("SalaryAdd.jsp");
			rd.forward(request, response);
		}
		else
		{
			PayrollDao dao = new PayrollDao();
			boolean flagInsert = dao.insertsalary(bean);
			if(flagInsert)
			{
				//pw.print("data inserted successfully");
				response.sendRedirect("SalaryList");
			}
		}
	}
}
