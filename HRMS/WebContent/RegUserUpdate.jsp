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

<body onload="Layout.onloadfn();Layout.pageloadfn();ZE_Init.init();" onclick="hideTabMoreMenus()"><iframe name="google_conversion_frame" src="Zoho%20%20People_files/a.htm" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" frameborder="0" height="13" scrolling="no" width="300">&lt;img
 height="1" width="1" border="0" 
src="https://www.googleadservices.com/pagead/conversion/999075927/?frame=0&amp;random=1366275665316&amp;cv=7&amp;fst=1366275665316&amp;num=1&amp;fmt=1&amp;value=0&amp;label=WAsrCKnoiAQQ1-Cy3AM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;u_h=768&amp;u_w=1360&amp;u_ah=738&amp;u_aw=1360&amp;u_cd=24&amp;u_his=6&amp;u_tz=330&amp;u_java=true&amp;u_nplug=16&amp;u_nmime=121&amp;url=https%3A//people.zoho.com/people/%23home/gettingstarted&amp;frm=0"
 /&gt;</iframe><noscript>

<div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt=""
src="https://www.googleadservices.com/pagead/conversion/999075927/?value=0&amp;label=WAsrCKnoiAQQ1-Cy3AM&amp;guid=ON&amp;script=0"/>       </div></noscript>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><title>Zoho People</title><link type="image/x-icon" rel="shortcut icon" href="https://people.zoho.com/people/images/People.ico"><link href="Zoho%20%20People_files/wmsbar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" media="all" href="Zoho%20%20People_files/bartransitionaldoc.css">
<script type="text/javascript" src="Zoho%20%20People_files/i18narray.jsp"></script>
<link href="Zoho%20%20People_files/zohopeople2_styles.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="Zoho%20%20People_files/zohopeople2_script.js"></script>
<script type="text/javascript" src="Zoho%20%20People_files/zohopeople2_view.js"></script>
<script type="text/javascript" src="Zoho%20%20People_files/zohopeople2_form.js"></script>
<script type="text/javascript" src="Zoho%20%20People_files/zohopeople2_utils.js"></script>
<script src="Zoho%20%20People_files/wmsbar.js"></script>
<script src="Zoho%20%20People_files/wmsbarimpl.js"></script>
<script type="text/javascript" src="Zoho%20%20People_files/contactimpl.js"></script><script type="text/javascript" src="Zoho%20%20People_files/FusionCharts.js"></script>
<script type="text/javascript">var csrfParamName = 'conreqcsr';  // No I18N  //NO OUTPUTENCODING
var csrfToken = 'ed6eb4e2-51f2-4b68-a9a6-43eaab1cb67f'; // No I18N NO OUTPUTENCODING
Layout.showgettingstarted=true // No I18N //NO OUTPUTENCODING
$(window).history(function(e, hash){
Layout.pageloadfn();
});
var _LOGGEDIN_ZUID = '26382295';
var _loginname = 'suketupatel'; //NO OUTPUTENCODING
var _domainname = '';
var chatEnable = true;

var curyear = 2013;
var curmonth = 3;
var curdate = 18;
var weekstarts = 0;
var workweekfrom = 1;
var workweekto = 5;
var erecno = '216962000000036453';
var dateFormat = 'dd-MMM-yyyy'; //NO OUTPUTENCODING
var uidateFormat = '%d-%b-%Y'; //NO OUTPUTENCODING
var months = new Array('Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec');//NO OUTPUTENCODING
var days = new Array('Sun','Mon','Tue','Wed','Thu','Fri','Sat');//NO OUTPUTENCODING</script>
<div id="container"><div id="header"><div class="headTop">
<div id="topcompanylogo" class="logo"><img src="Zoho%20%20People_files/zoho-people.png" height="28"></div>
<div id="header-right" class="tr">
  <div style="left: auto; right: 0px; top: 35px;display:none;" id="zpeopleLogout" class="ddMenus"><a href="javascript:;" onclick="window.open('https://accounts.zoho.com/u/h')">My Account</a>
<a href="https://people.zoho.com/people/Logout.do">Logout</a></div></div></div><div class="navbar" id="navbar"><div class="fLeft" id="main_tab_left"><!-- $Id$ -->




<ul id="main_tab"><li class="sel" id="main_home">

<a href="UserPage.jsp" title="#nogo">Home</a>


</li>
<li id="main_selfservice"><a href="RegUserView" title="Self service">My Profile</a></li>
 





 


















    







    
<li id="main_timetracker"><a href="Leave.jsp" title="Time Tracker">Leave</a></li>













<li id="main_leavetracker"><a href="ReportGen.jsp" title="Leave Tracker">Report</a></li>









<li id="main_216962000000031655"><a href="SalUserView" title="Travel">Payroll</a> <a href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031735/formId:216962000000031733" title="Compensation"></a></li>












<li id="main_216962000000031655"><a href="Logout" title="logout">Logout</a> <a href="Logout" title="Compensation"></a></li>

</ul>

<div class="rel zpplusbg" style="z-index:100;"><div onclick="showHidePeopleQuickAddForms(this,event)" class="zpplus" searchtype="0"></div><div class="ddMenus1" id="quickcreateformmenu" style="display:none;right:-1px;" formsloaded="false"></div></div></div></div><div class="headerBot" id="peopletabs_subtabs"><!-- $Id$ -->
<div id="sub_tab_list"><div style="display: block;" class="headList" id="subtab_home"></div>
<div class="headList" style="display: none" id="subtab_selfservice"><span id="form_profile"><a href="https://people.zoho.com/people/#selfservice/profile" title="Profile">Profile<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> <span id="form_directory"><a href="https://people.zoho.com/people/#selfservice/directory/employees-home" title="Directory">Directory<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span>
<span id="form_forms"><a href="https://people.zoho.com/people/#selfservice/forms" title="Forms">Forms<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span></div><div class="headList" style="display: none" id="subtab_timetracker"><span id="form_timesheet"><a href="https://people.zoho.com/people/#timetracker/timesheet">Timesheet<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> <span id="form_scheduler"><a href="https://people.zoho.com/people/#timetracker/scheduler">Manage Jobs<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> <span id="form_reports"><a href="https://people.zoho.com/people/#timetracker/reports">Reports<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span></div><div class="headList" style="display: none" id="subtab_leavetracker"><span id="form_leaveview"><a href="https://people.zoho.com/people/#leavetracker/leaveview">Leave View<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> <span id="form_leave_report"><a href="https://people.zoho.com/people/#leavetracker/reports">Reports<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> <span id="form_holidays"><a href="https://people.zoho.com/people/#leavetracker/holidays">Holidays<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span></div> 

<div class="headList" style="display: none;" id="subtab_216962000000036487"> 




</div>



<div class="headList" style="display: none;" id="subtab_216962000000036492"> 




</div>



<div class="headList" style="display: none;" id="subtab_216962000000031655"> 











<span id="form_216962000000031673"><a title="Employee" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031699/formId:216962000000031673">Employee<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031675"><a title="Department" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031701/formId:216962000000031675">Department<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031677"><a title="Designation" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031703/formId:216962000000031677">Designation<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031679"><a title="Location" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031705/formId:216962000000031679">Location<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031681"><a title="Exit Details" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031709/formId:216962000000031681">Exit Details<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 

<span id="form_orgstructure"><a href="https://people.zoho.com/people/#employees/orgstructure-home" title="Department Tree">Department Tree<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 



<span id="form_emptree"><a href="https://people.zoho.com/people/#orgchart/employees" title="Employee Tree">Employee Tree<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 









<span> <a onclick="javascript:showHidePeopleTabFormsMenus('216962000000031655',this,event);" class="more">More ...</a> <div class="ddMenus" id="createsubformmenu_216962000000031655" style="display:none;top: 28px;">

<a id="more_216962000000031683" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031711/formId:216962000000031683" title="Company Policy">Company Policy</a>







</div></span>


</div>



<div class="headList" style="display: none;" id="subtab_216962000000031665"> 









<span id="form_216962000000031713"><a title="Training" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031715/formId:216962000000031713">Training<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031717"><a title="Training Registration" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031719/formId:216962000000031717">Training Registration<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031721"><a title="Training Feedback" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031723/formId:216962000000031721">Training Feedback<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








</div>



<div class="headList" style="display: none;" id="subtab_216962000000031667"> 









<span id="form_216962000000031725"><a title="Travel Request" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031727/formId:216962000000031725">Travel Request<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031729"><a title="Travel Expense" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031731/formId:216962000000031729">Travel Expense<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








</div>



<div class="headList" style="display: none;" id="subtab_216962000000031669"> 









<span id="form_216962000000031733"><a title="Performance Appraisal" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031735/formId:216962000000031733">Performance Appraisal<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031737"><a title="Asset" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031739/formId:216962000000031737">Asset<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031741"><a title="Benefit" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031743/formId:216962000000031741">Benefit<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








<span id="form_216962000000031747"><a title="Salary" href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031749/formId:216962000000031747">Salary<img class="whtDwn" src="Zoho%20%20People_files/spacer_004.gif"></a></span> 








</div>



</div></div></div><div id="contentdiv"><div style="display: none;" id="admin-div" class="content"><div id="admin-left" style="display:none;float: left;"><!-- $Id$ -->


<div class="orgMenu" id="adminmenuopts"><h2 onclick="window.location.href='/people/#admin/home'">Setup</h2>
<ul><li><a href="https://people.zoho.com/people/#admin/userspermissions/adduser" menuname="usersPermission">Users &amp; Permissions</a></li><li><a href="https://people.zoho.com/people/#admin/setuporganization/companysettings" menuname="setupOrg">Setup Organization</a></li><li><a href="https://people.zoho.com/people/#admin/leave/holidays" menuname="leaveSet">Leave Settings</a></li><li><a href="https://people.zoho.com/people/#admin/forms/list" menuname="customizeFrm">Forms &amp; Tabs</a></li><li><a href="https://people.zoho.com/people/#admin/checklists/list" menuname="checkList">Checklists</a></li><li><a href="https://people.zoho.com/people/#admin/announcements/list" menuname="announcementsmenu">Announcements</a></li><li><a href="https://people.zoho.com/people/#admin/forms/mailalerts/list" menuname="mailAlert">Alerts</a></li><li><a href="https://people.zoho.com/people/#admin/forms/approvals/list" menuname="approval">Approvals</a></li><li><a href="https://people.zoho.com/people/#admin/forms/embed" menuname="embedinWeb">Website Integration</a></li><li><a href="https://people.zoho.com/people/#admin/importexporthistory" menuname="importExport">Import &amp; Export History</a></li><li><a href="https://people.zoho.com/people/#admin/nonusers/list" menuname="DummyEmployees">Non-Users</a></li><li><a href="https://people.zoho.com/people/#admin/calendarsettings" menuname="calendarsetting">Calendar Settings</a></li></ul></div></div><div id="admin-right" class="contR"></div></div><div id="home-gettingstarted" class="content" style="display:table;">

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
	<form action="RegUserUpdateServlet" method="post" name="RegUserUpdateServlet">
	<input type="hidden" name="hId" value="<%=bean.getId() %>" />
	
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
</form>
 
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

</body>
<%	}else
	{
		response.sendRedirect("login.jsp");	
	}
%>
</html>