<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.pcube.admin.bean.RegBean" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" href="css/screen.css" type="text/css" media="screen" title="default" />

<link rel="stylesheet" media="all" type="text/css" href="css/pro_dropline_ie.css" />
<script src="js/jquery/jquery-1.4.1.min.js" type="text/javascript"></script>
 
<script src="js/jquery/ui.core.js" type="text/javascript"></script>
<script src="js/jquery/ui.checkbox.js" type="text/javascript"></script>
<script src="js/jquery/jquery.bind.js" type="text/javascript"></script>
<script type="text/javascript">
$(function(){
	$('input').checkBox();
	$('#toggle-all').click(function(){
 	$('#toggle-all').toggleClass('toggle-checked');
	$('#mainform input[type=checkbox]').checkBox('toggle');
	return false;
	});
});
</script>  


<script src="js/jquery/jquery.selectbox-0.5.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect').selectbox({ inputClass: "selectbox_styled" });
});
</script>

<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_form_1').selectbox({ inputClass: "styledselect_form_1" });
	$('.styledselect_form_2').selectbox({ inputClass: "styledselect_form_2" });
});
</script>

<script src="js/jquery/jquery.selectbox-0.5_style_2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('.styledselect_pages').selectbox({ inputClass: "styledselect_pages" });
});
</script>

<script src="js/jquery/jquery.filestyle.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
$(function() {
	$("input.file_1").filestyle({ 
	image: "images/forms/upload_file.gif",
	imageheight : 29,
	imagewidth : 78,
	width : 300
	});
});
</script>

<script src="js/jquery/custom_jquery.js" type="text/javascript"></script>
 
<script src="js/jquery/jquery.tooltip.js" type="text/javascript"></script>
<script src="js/jquery/jquery.dimensions.js" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
	$('a.info-tooltip ').tooltip({
		track: true,
		delay: 0,
		fixPNG: true, 
		showURL: false,
		showBody: " - ",
		top: -35,
		left: 5
	});
});
</script> 

<link rel="stylesheet" href="css/datePicker.css" type="text/css" />
<script src="js/jquery/date.js" type="text/javascript"></script>
<script src="js/jquery/jquery.datePicker.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8">
        $(function()
{

$('#date-pick')
	.datePicker(
		{
			createButton:false,
			startDate:'01/01/2005',
			endDate:'31/12/2020'
		}
	).bind(
		'click',
		function()
		{
			updateSelects($(this).dpGetSelected()[0]);
			$(this).dpDisplay();
			return false;
		}
	).bind(
		'dateSelected',
		function(e, selectedDate, $td, state)
		{
			updateSelects(selectedDate);
		}
	).bind(
		'dpClosed',
		function(e, selected)
		{
			updateSelects(selected[0]);
		}
	);
	
var updateSelects = function (selectedDate)
{
	var selectedDate = new Date(selectedDate);
	$('#d option[value=' + selectedDate.getDate() + ']').attr('selected', 'selected');
	$('#m option[value=' + (selectedDate.getMonth()+1) + ']').attr('selected', 'selected');
	$('#y option[value=' + (selectedDate.getFullYear()) + ']').attr('selected', 'selected');
}
$('#d, #m, #y')
	.bind(
		'change',
		function()
		{
			var d = new Date(
						$('#y').val(),
						$('#m').val()-1,
						$('#d').val()
					);
			$('#date-pick').dpSetSelected(d.asString());
		}
	);
var today = new Date();
updateSelects(today.getTime());

$('#d').trigger('change');
});
</script>

<script src="js/jquery/jquery.pngFix.pack.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
$(document).pngFix( );
});
</script>

</head>
<%
    RegBean bean = (RegBean)request.getAttribute("bean");
	String firstName = "";
	String lastName = "";
	String username = "";
	String password = "";
	String contactNo = "";
	String eMail = "";
	String dob = "";
	String gender= "";
	String marital = "";
	String address = "";
	String language = "";
	String jobtitle = "";
	
	if(bean != null)
	{
		firstName = bean.getFirstName();
		lastName = bean.getLastName();
		username = bean.getUsername();
		password = bean.getPassword();
		contactNo =bean.getContactNo(); 
		eMail =bean.geteMail();
		dob = bean.getDob();
		gender = bean.getGender();
		marital = bean.getMarital();
		address = bean.getAddress();
		language = bean.getLanguage();
		jobtitle = bean.getJobtitle();

	}
%>
<%
	String userName = (String)session.getAttribute("userName");
	if(userName != null)
	{
%>
<body>
<form action="RegUpdateServlet" method="post" name="Registration">
<input type="hidden" name="hId" value="<%=bean.getId() %>" />

<!-- Start: page-top-outer -->
<div id="page-top-outer">    

<!-- Start: page-top -->
<div id="page-top">

	<!-- start logo -->
	<div id="logo">
	<a href=""></a>	</div>

	<!-- end logo -->
	
	<!--  start top-search -->
	<div id="top-search">
		<table border="0" cellpadding="0" cellspacing="0">
		<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		</table>
	</div>
 	<!--  end top-search -->
 	<div class="clear"></div>

</div>
<!-- End: page-top -->

</div>
<!-- End: page-top-outer -->
	
<div class="clear">&nbsp;</div>
 
<!--  start nav-outer-repeat................................................................................................. START -->
<div class="nav-outer-repeat"> 
<!--  start nav-outer -->
<div class="nav-outer"> 

		<!-- start nav-right -->
		<div id="nav-right">
		
			<div class="nav-divider">&nbsp;</div>
			<a href="Logout" id="logout"><img src="images/shared/nav/nav_logout.gif" width="64" height="14" alt="" /></a>
			<div class="clear">&nbsp;</div>
		
			<!--  start account-content -->	
			<div class="account-content">
			<div class="account-drop-inner">
				<a href="" id="acc-settings">Settings</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-details">Personal details </a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-project">Project details</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-inbox">Inbox</a>
				<div class="clear">&nbsp;</div>
				<div class="acc-line">&nbsp;</div>
				<a href="" id="acc-stats">Statistics</a> 
			</div>
			</div>
			<!--  end account-content -->
		
		</div>
		<!-- end nav-right -->


		<!--  start nav -->
		<div class="nav">
		<div class="table">
		
		<ul class="current"><li><a href="Dashboard.jsp"><b>Dashboard</b><!--[if IE 7]><!--></a><!--<![endif]-->
	<div class="select_sub">
			<ul class="sub">
				<li><a href=" "></a></li>
			</ul>
		</div>
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		                    
		<ul class="select"><li><a href=" "><b>Employees</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li ><a href="empform.jsp">Add Employees</a></li>
				<li><a href="RegList" class="sub_show">View Employee Details</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href=" "><b>Leave</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="LeaveList ">View Pending Leaves</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		                    
		<ul class="select"><li><a href=" "><b>Report</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub show">
			<ul class="sub">
				<li ><a href="ReportList">View Report</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href=" "><b>Vacancy</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="Recruitment.jsp ">Add Vacanvy Details </a></li>
				<li><a href="VacancyList ">View Vacanvy Details </a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href=" "><b>Payroll</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href="SalaryAdd.jsp ">Add Payroll Details</a></li>
				<li><a href="SalaryList ">View Vacanvy Details</a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="nav-divider">&nbsp;</div>
		
		<ul class="select"><li><a href=" "><b>Projects</b><!--[if IE 7]><!--></a><!--<![endif]-->
		<!--[if lte IE 6]><table><tr><td><![endif]-->
		<div class="select_sub">
			<ul class="sub">
				<li><a href=" Pro.jsp">Add Project Details</a></li>
				<li><a href=" ProList">View Project Details </a></li>
			</ul>
		</div>
		<!--[if lte IE 6]></td></tr></table></a><![endif]-->
		</li>
		</ul>
		
		<div class="clear"></div>
		</div>
		<div class="clear"></div>
		</div>
		<!--  start nav -->

</div>
<div class="clear"></div>
<!--  start nav-outer -->
</div>
<!--  start nav-outer-repeat................................................... END -->
 
 <div class="clear"></div>
 
<!-- start content-outer -->
<div id="content-outer">
<!-- start content -->
<div id="content">


<div id="page-heading">
  <h1>Update Employees Details </h1>
</div>


<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
<tr>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowleft.jpg" width="20" height="300" alt="" /></th>
	<th class="topleft"></th>
	<td id="tbl-border-top">&nbsp;</td>
	<th class="topright"></th>
	<th rowspan="3" class="sized"><img src="images/shared/side_shadowright.jpg" width="20" height="300" alt="" /></th>
</tr>
<tr>
	<td id="tbl-border-left"></td>
	<td>
	<!--  start content-table-inner -->
	<div id="content-table-inner">
	
	<table border="0" width="100%" cellpadding="0" cellspacing="0">
	<tr valign="top">
	<td>
	
		<!-- start id-form -->
		<table border="0" cellpadding="0" cellspacing="0"  id="id-form">
		<tr>
			<th valign="top">First name:</th>
			<td><input type="text" class="inp-form" name="firstName" value="<%=firstName != null ? firstName:"" %>" />
			<%=request.getAttribute("firstName") != null ? request.getAttribute("firstName"):""  %>
			</td>
			
		</tr>
			<tr>
		<th valign="top">Last name:</th>
			<td><input type="text" class="inp-form" name="lastName" value="<%=lastName != null ? lastName:"" %>" />
			<%=request.getAttribute("lastName") != null ? request.getAttribute("lastName"):""  %>
			</td>
		
		</tr>
		<tr>
			<th valign="top">Username:</th>
			<td><input type="text" class="inp-form" name="username" value="<%=username != null ? username:"" %>" />
			<%=request.getAttribute("username") != null ? request.getAttribute("username"):""  %>
			</td>
		</tr>
		<tr>
			<th valign="top">Password  :</th>
			<td><input type="password" class="inp-form" name="password" value="<%=password != null ? password:"" %>" />
			<%=request.getAttribute("password") != null ? request.getAttribute("password"):""  %>
			</td>
		</tr>
		<tr>
			<th valign="top">Contact No:</th>
			<td><input type="text" class="inp-form" name="contactNo" value="<%=contactNo != null ? contactNo:"" %>" />
			<%=request.getAttribute("contactNo") != null ? request.getAttribute("contactNo"):""  %>
			</td>
		</tr>
		<tr>
			<th valign="top">Email id:</th>
			<td><input type="text" class="inp-form" name="eMail" value="<%=eMail != null ? eMail:"" %>" />
			<%=request.getAttribute("eMail") != null ? request.getAttribute("eMail"):""  %>
			</td>
		</tr>
		<tr>
			<th valign="top">Date of Birth :</th>
			<td><input type="text" class="inp-form" name="dob" value="<%=dob != null ? dob:"" %>" />
			<%=request.getAttribute("dob") != null ? request.getAttribute("dob"):""  %>
			</td>
		</tr>
		
		<tr>
			<th valign="top">Gender :</th>
			<td>
			<%
				if(gender != null && gender.equals("Male"))
				{
			%><input type="radio" name="gender" value="Male" checked="checked"/>
			<%  }
				else
				{
			%>	<input type="radio" name="gender" value="Male" />
			<%  } %>
			Male
			<%  if(gender != null && gender.equals("Female"))
				{
			%><input type="radio" name="gender" value="Female" checked="checked" />
			<%  }
				else
				{
			%><input type="radio" name="gender" value="Female" />
			<%  } %>
			Female
			<%=request.getAttribute("gender") != null ? request.getAttribute("gender"):""  %>
			</td>
		</tr>
		<tr>
	<th valign="top">Marital Status:</th>
		<td>	
		<select  name="marital"class="styledselect_form_1">
			
			<% if(marital != null && marital.equals(""))
      		{ %>
	  		<option value="" selected="selected">--Select--</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="">--Select--</option>
     		<%} %>
     		
      		<% if(marital != null && marital.equals("Single"))
      		{ %>
	  		<option value="Single" selected="selected">Single</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="Single">Single</option>
     		<%} %>
     		
     		<% if(marital != null && marital.equals("Married"))
      		{ %>
	  		<option value="Married" selected="selected">Married</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="Married">Married</option>
     		<%} %>
     		
			</select>
			<%=request.getAttribute("marital") != null ? request.getAttribute("marital"):""  %>
	
		</td>

		<td></td>
		</tr> 

		
	<tr>
		<th valign="top">Address:</th>
		<td>
			<textarea name="address" rows="" cols="" class="form-textarea"><%=address != null ? address:"" %></textarea>
			<%=request.getAttribute("address") != null ? request.getAttribute("address"):""  %></td>		
		<td></td>
	</tr>
		<tr>
		<th valign="top">Languages:</th>
		<td>	
		<select  name="language"class="styledselect_form_1">
			
			<% if(language != null && language.equals(""))
      		{ %>
	  		<option value="" selected="selected">--Select--</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="">--Select--</option>
     		<%} %>
     		
      		<% if(language != null && language.equals("English"))
      		{ %>
	  		<option value="English" selected="selected">English</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="English">English</option>
     		<%} %>
     		
     		<% if(language != null && language.equals("Hindi"))
      		{ %>
	  		<option value="Hindi" selected="selected">Hindi</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="Hindi">Hindi</option>
     		<%} %>
     		
      		<% if(language != null && language.equals("Gujarati"))
      		{ %>
	  		<option value="Gujarati" selected="selected">Gujarati</option>
	  		<% }
       		else
       		{
     		%>
     		<option value="Gujarati">Gujarati</option>
     		<%} %>
     		
			</select>
			<%=request.getAttribute("language") != null ? request.getAttribute("language"):""  %>
	
		</td>
		<td></td>
		</tr> 
		<tr>
			<th valign="top">Job Title:</th>
			<td><input type="text" class="inp-form" name="jobtitle" value="<%=jobtitle != null ? jobtitle:"" %>" />
			<%=request.getAttribute("jobtitle") != null ? request.getAttribute("jobtitle"):""  %>
			<td></td>
		</tr>
	
	<th>Upload Resume:</th>
	<td><input type="file" class="file_1" /></td>
	<td>
	<div class="bubble-left"></div>
	<div class="bubble-inner">Browse Resume File</div>
	<div class="bubble-right"></div>
	</td>
	</tr>
	<tr>
	<tr>
		<th>&nbsp;</th>
		<td valign="top">
			<input name="submit" type="submit" value="Update" class="form-submit" />
			<input type="reset" value="" class="form-reset" />
		</td>
		<td></td>
	</tr>
	</table>
	<!-- end id-form  -->

	</td>
	<td>



</td>
</tr>



<tr>
<td><img src="images/shared/blank.gif" width="695" height="1" alt="blank" /></td>
<td></td>
</tr>
</table>
 
<div class="clear"></div>
 

</div>
<!--  end content-table-inner  -->
</td>
<td id="tbl-border-right"></td>
</tr>
<tr>
	<th class="sized bottomleft"></th>
	<td id="tbl-border-bottom">&nbsp;</td>
	<th class="sized bottomright"></th>
</tr>
</table>

<div class="clear">&nbsp;</div>

</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

<div class="clear">&nbsp;</div>
    
<!-- start footer -->         
<div id="footer">
	<!--  start footer-left -->
	<div id="footer-left">
	Admin Skin &copy; Copyright Pcube Softech. <a href="">www.pcube.com</a>. All rights reserved.</div>
	<!--  end footer-left -->
	<div class="clear">&nbsp;</div>
</div>
<!-- end footer -->
</form>
</body>
<%	}else
	{
		response.sendRedirect("login.jsp");	
	}
%>
</html>