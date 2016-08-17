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

@SuppressWarnings("serial")
public class SalUpdateServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
	
		if(userName != null)
		{
		
			//PrintWriter pw= response.getWriter();
			String id = request.getParameter("hId");
			
			String username = request.getParameter("username");
			//pw.println("username is "+username);
			
			String basic = request.getParameter("basic");
			//pw.println("Basic salary  is "+basic);
			
			String HRA = request.getParameter("HRA");
			//pw.println("HRA  is "+HRA);
			
			String TA = request.getParameter("TA");
			//pw.println("TA  is "+TA);
			
			String PF = request.getParameter("PF");
			//pw.println("PF is "+PF);
			
			boolean flag = false;
			PayrollBean bean = new PayrollBean();
			
			bean.setId(Integer.parseInt(id));
			
			if(username == null || username.trim().length() == 0)
			{
				flag = true;
				request.setAttribute("username", "<font color = red>Please insert UserName</font>");
			}
			else
			{
				bean.setUsername(username);
			}
			if(basic == null || basic.trim().length() == 0 ){
				flag = true;
				request.setAttribute("basic", "<font color = red>Please insert basic salary</font>");
			}
			else
			{
				bean.setBasic(basic);
			}
			if(HRA == null || HRA.trim().length() == 0 ){
				flag = true;
				request.setAttribute("HRA", "<font color = red>Please insert HRA</font>");
			}
			else
			{
				bean.setHRA(HRA);
			}
			if(TA == null || TA.trim().length() == 0 ){
				flag = true;
				request.setAttribute("TA", "<font color = red>Please insert TA</font>");
			}
			else
			{
				bean.setTA(TA);
			}
			if(PF == null || PF.trim().length() == 0 ){
				flag = true;
				request.setAttribute("PF", "<font color = red>Please insert PF</font>");
			}
			else
			{
				bean.setPF(PF);
			}
		
		if(flag)
		{
			request.setAttribute("bean", bean);
			RequestDispatcher rd = request.getRequestDispatcher("SalUpdate.jsp");
			rd.forward(request, response);
		}
		else
		{
			PayrollDao dao = new PayrollDao();
			boolean flagInsert = dao.updateData(bean);
			if(flagInsert)
			{
				response.sendRedirect("SalaryList");
			}
		}
	}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}
}
