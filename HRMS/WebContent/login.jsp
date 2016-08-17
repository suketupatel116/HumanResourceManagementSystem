<%@page import="com.pcube.admin.bean.loginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />

<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>

<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>

<%
	loginBean lbean = (loginBean)request.getAttribute("lbean");
	String userName = "";
	String password = "";
	
	if(lbean != null)
	{
		userName = lbean.getUserName();
		password = lbean.getPassword();
	}
%>
</head>
<body id="login-bg">
<form action="login" method="post" name="login">
 
<!-- Start: login-holder -->
<div id="login-holder">

	<!-- start logo -->
	<div id="logo-login">
		<img width="156" height="40" alt="" />
	</div>
	<!-- end logo -->
	
	<div class="clear"></div>
	
	<!--  start loginbox ................................................................................. -->
	<div id="loginbox">
	
	<!--  start login-inner -->
	<div id="login-inner">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
			<th valign="top" >Username</th>
			<td><input type="text" class="inp-form" name="userName" value="<%=userName != null ? userName:"" %>" />
			<%=request.getAttribute("userName") != null ? request.getAttribute("userName"):""  %>
		
		</tr>
		<tr>
			<th></th>
		</tr>
		
		<tr>
			<th></th>
		</tr>
		
		<tr>
			<th valign="top">Password</th>
			<td><input type="password" class="inp-form" name="password" value="" />
			<%=request.getAttribute("password") != null ? request.getAttribute("password"):""  %>
			<%=request.getAttribute("invalidate") != null ? request.getAttribute("invalidate"):""  %>
			</tr>
		<tr>
			<th></th>
			<td valign="top"><input type="checkbox" class="checkbox-size" id="login-check" /><label for="login-check">Remember me</label></td>
		</tr>
		<tr>
			<th></th>
			<td><input type="submit" name="submit" value="Login" /></td>
		</tr>
		</table>
	</div>
 	<!--  end login-inner -->
	
 <!--  end loginbox -->
 
</form>
</body>
</html>