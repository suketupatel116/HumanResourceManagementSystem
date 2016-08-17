<%@page import="com.pcube.admin.bean.FormBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
<style type="text/css">

.pa {
	font-family: Courier New, Courier, monospace;
}
lu {
	font-family: Lucida Sans Unicode, Lucida Grande, sans-serif;
}
.lu {
	font-family: Lucida Sans Unicode, Lucida Grande, sans-serif;
}
</style>
</head>
<% 

FormBean bean=(FormBean)request.getAttribute("bean");
String firstName="";
String lastName="";
String userName="";
String password="";

if(bean !=null)
{
	firstName = bean.getFirstName();
	lastName = bean.getLastName();
	userName = bean.getUserName();
	password = bean.getPassword();
}

%>

<body>
<form action="form" method="post" name="form">
<table width="700" border="1" align="center" bgcolor="" frame="void">
<tr>
<td height="47" colspan="2" align="center" >
<font color="" class="" size="+2">Registration</font>
</td>
</tr>
	<tr>
<td width="178"  ><font color="" class="">First Name</font></td>
		<td width="168" > 
			<input type="text" name="firstName" value="<%=firstName != null ? firstName:"" %>" />
			<%=request.getAttribute("firstName") != null ? request.getAttribute("firstName"):""  %>
			</td>
		
	</tr>
	
	<tr>
		<td><font color="" class=""  > Last Name </font></td>
 		<td> 
 			<input type="text" name="lastName" value="<%=lastName != null ? lastName:"" %>" />
				<%=request.getAttribute("lastName") != null ? request.getAttribute("lastName"):""  %>
			</td>
	</tr>
	
	<tr>
		<td><div align="left"><font color="" class=""  > UserName </font></div></td>
 		<td> 
 			<input type="text" name="userName" value="<%=userName != null ? userName:"" %>" />
			<%=request.getAttribute("userName") != null ? request.getAttribute("userName"):""  %>
			<%=request.getAttribute("invalidate") != null ? request.getAttribute("invalidate"):""  %>
			</td>
	</tr>	
	
	<tr>
		<td><font color="" class="" > Password </font></td>
 		<td> 
 			<input type="password" name="password" value="">
 		<%=request.getAttribute("password") != null ? request.getAttribute("password"):""  %>
			</td>
	</tr>
	
	<tr>
		<td><font color="" class=""  > Confirm Password </font></td>
 		<td> 
 			<input type="password" name="con_password" value="">
 			<%=request.getAttribute("con_password") != null ? request.getAttribute("con_password"):""  %>
 			<%=request.getAttribute("Password Invalid") != null ? request.getAttribute("Password Invalid"):""  %>
			</td> 
	</tr>

	<tr>
		<td height="33" colspan="2" align="center" >
		  <input type="submit" name="submit" value="submit" align="middle">
	  </td>
		
	</tr>
	
</table>
</form>
</body>
</html>