package com.pcube.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pcube.admin.bean.RegBean;
import com.pcube.admin.dao.RegDao;

public class RegUserUpdateServlet extends HttpServlet
{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
	
		if(userName != null)
		{
		
			//PrintWriter pw= response.getWriter();
			String id = request.getParameter("hId");
			
			String firstName = request.getParameter("firstName");
			//pw.println("First Name is "+firstName);
			
			String lastName = request.getParameter("lastName");
			//pw.println("Last Name is "+lastName);
			
			String username = request.getParameter("username");
			//pw.println("username is "+username);
			
			String contactNo = request.getParameter("contactNo");
			//pw.println("contact No is "+contactNo);
			
			String eMail = request.getParameter("eMail");
			//pw.println("email id is "+eMail);
			
			String dob = request.getParameter("dob");
			//pw.println("date of birth is "+dob);
			
			String gender = request.getParameter("gender");
			//pw.println("gender is "+gender);
			
			String marital = request.getParameter("marital");
			//pw.println("marital status is "+marital);
			
			String address = request.getParameter("address");
			//pw.println("address is "+address);
			
			String language = request.getParameter("language");
			//pw.println("Language known "+language);
			
			String jobtitle = request.getParameter("jobtitle");
			//pw.println("jobtitle are"+jobtitle);
			boolean flag = false;
			RegBean bean = new RegBean();
			
			bean.setId(Integer.parseInt(id));
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
			if(username == null || username.trim().length() == 0)
			{
				flag = true;
				request.setAttribute("username", "<font color = red>Please insert UserName</font>");
			}
			else
			{
				bean.setUsername(username);
			}
			if(contactNo == null || contactNo.trim().length() == 0 ){
				flag = true;
				request.setAttribute("contactNo", "<font color = red>Please insert contactNo</font>");
			}
			else
			{
				bean.setContactNo(contactNo);
			}
			if(eMail == null || eMail.trim().length() == 0 ){
				flag = true;
				request.setAttribute("eMail", "<font color = red>Please insert email</font>");
			}
			else
			{
				bean.seteMail(eMail);
			}
			if(dob == null || dob.trim().length() == 0 ){
				flag = true;
				request.setAttribute("dob", "<font color = red>Please insert Date of Birth</font>");
			}
			else
			{
				bean.setDob(dob);
			}
			if(gender == null || gender.trim().length() == 0)
			{
				flag = true;
				request.setAttribute("gender", "<font color = red>Please select Gender </font>");
			}
			else
			{
				bean.setGender(gender);
			}
		
			if(marital == null || marital.trim().length() == 0 ){
				flag = true;
				request.setAttribute("marital", "<font color = red>Please Select Marital Status</font>");
			}
			else
			{
				bean.setMarital(marital);
			}
			if(address == null || address.trim().length() == 0 ){
				flag = true;
				request.setAttribute("address", "<font color = red>Please insert address</font>");
			}
			else
			{
				bean.setAddress(address);
			}
			if(language  == null || language.trim().length() == 0 ){
				flag = true;
				request.setAttribute("language", "<font color = red>Please select language</font>");
			}
			else
			{
				bean.setLanguage(language);
			}
			if(jobtitle   == null || jobtitle .trim().length() == 0 ){
				flag = true;
				request.setAttribute("jobtitle", "<font color = red>Please select jobtitle </font>");
			}
			else
			{
				bean.setJobtitle(jobtitle);
			}
			
			if(flag)
			{
				request.setAttribute("bean", bean);
				RequestDispatcher rd = request.getRequestDispatcher("RegUserUpdate.jsp");
				rd.forward(request, response);
			}
			else
			{
				RegDao dao = new RegDao();
				boolean flagUpdate = dao.update(bean);
				if(flagUpdate)
				{
					//pw.print("data inserted successfully");
					response.sendRedirect("UserPage.jsp?i=1");
				}
			}
			
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}	
}
	


