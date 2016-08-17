<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.pcube.admin.bean.RegBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"><script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 999075927;        //NO I18N
var google_conversion_language = "en";       //NO I18N
var google_conversion_format = "1";          //NO I18N
var google_conversion_color = "ffffff";      //NO I18N
var google_conversion_label = "WAsrCKnoiAQQ1-Cy3AM";     //NO I18N
var google_conversion_value = 0;             //NO I18N
/* ]]> */</script><script type="text/javascript" src="Zoho%20%20People_files/conversion.js"></script><style media="screen" type="text/css">object.FusionCharts:focus, embed.FusionCharts:focus {outline: none}</style><style type="text/css">.wmspd,.wmspd1,.wms-rig,.wms-rigb,div.wmssmileycon,div.wmsctable,.wms-nh,.wmshistory_drpdwnmain,.wms-contactinfo-voice,.wms-contactinfo-voice-hover,.wms-contactinfo-video,.wms-contactinfo-video-hover,.wms-contactinfo-mail,.wms-contactinfo-mail-hover,.wms-contactinfo-file,.wms-contactinfo-file-hover,.wms-statesmsg,.wms_footerstsmsg,.wms-contactinfodiv,.wms-addpopmn,.wmsststxt{ z-index:1998 }.wms-cw {z-index:1098}</style><link href="Zoho%20%20People_files/ze.css" rel="stylesheet" type="text/css"><script src="Zoho%20%20People_files/ze.js" type="text/javascript"></script><script type="text/javascript">window.sendToApp = function(data, ctid) {var doc = window.document;var event = doc.createEvent('MessageEvent');event.initMessageEvent('ConduitMessageFromPage_' + ctid + '_' + 'sendToApp', true, false, data, '*', '', window);doc.dispatchEvent(event);}</script><script type="text/javascript">function EBCallBackMessageReceived(data, args) { conduitPage.sendRequest(data.ctid, data.appId, data.topic, args);} if (!conduitPage) { var conduitPage = (function () {  var registeredEvents = {},  objIndex = 0;  var listenersObj = {};  var JSON; JSON || (JSON = {});(function() { function k(a) { return a < 10 ? "0" + a : a } function o(a) { p.lastIndex = 0; return p.test(a) ? '"' + a.replace(p, function(a) { var c = r[a]; return typeof c === "string" ? c : "\\u" + ("0000" + a.charCodeAt(0).toString(16)).slice(-4) }) + '"' : '"' + a + '"' } function l(a, j) { var c, d, h, m, g = e, f, b = j[a]; b && typeof b === "object" && typeof b.toJSON === "function" && (b = b.toJSON(a)); typeof i === "function" && (b = i.call(j, a, b)); switch (typeof b) {  case "string": return o(b); case "number": return isFinite(b) ? String(b) : "null"; case "boolean": case "null": return String(b); case "object": if (!b) return "null";  e += n; f = []; if (Object.prototype.toString.apply(b) === "[object Array]") { m = b.length; for (c = 0; c < m; c += 1) f[c] = l(c, b) || "null"; h = f.length === 0 ? "[]" : e ? "[\n" + e + f.join(",\n" + e) + "\n" + g + "]" : "[" + f.join(",") + "]"; e = g; return h } if (i && typeof i === "object") { m = i.length; for (c = 0; c < m; c += 1) typeof i[c] === "string" && (d = i[c], (h = l(d, b)) && f.push(o(d) + (e ? ": " : ":") + h)) } else for (d in b) Object.prototype.hasOwnProperty.call(b, d) && (h = l(d, b)) && f.push(o(d) + (e ? ": " : ":") + h); h = f.length === 0 ? "{}" : e ? "{\n" + e + f.join(",\n" + e) + "\n" + g + "}" : "{" + f.join(",") +"}"; e = g; return h } } if (typeof Date.prototype.toJSON !== "function") Date.prototype.toJSON = function() { return isFinite(this.valueOf()) ? this.getUTCFullYear() + "-" + k(this.getUTCMonth() + 1) + "-" + k(this.getUTCDate()) + "T" + k(this.getUTCHours()) + ":" + k(this.getUTCMinutes()) + ":" + k(this.getUTCSeconds()) + "Z" : null }, String.prototype.toJSON = Number.prototype.toJSON = Boolean.prototype.toJSON = function() { return this.valueOf() }; var q = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g,p = /[\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g, e, n, r = { "\u0008": "\\b", "\t": "\\t", "\n": "\\n", "\u000c": "\\f", "\r": "\\r", '"': '\\"', "\\": "\\\\" }, i; if (typeof JSON.stringify !== "function") JSON.stringify = function(a, j, c) { var d; n = e = ""; if (typeof c === "number") for (d = 0; d < c; d += 1) n += " "; else typeof c === "string" && (n = c); if ((i = j) && typeof j !== "function" && (typeof j !== "object" || typeof j.length !== "number")) throw Error("JSON.stringify"); return l("",{ "": a })}; if (typeof JSON.parse !== "function") JSON.parse = function(a, e) { function c(a, d) { var g, f, b = a[d]; if (b && typeof b === "object") for (g in b) Object.prototype.hasOwnProperty.call(b, g) && (f = c(b, g), f !== void 0 ? b[g] = f : delete b[g]); return e.call(a, d, b) } var d, a = String(a); q.lastIndex = 0; q.test(a) && (a = a.replace(q, function(a) { return "\\u" + ("0000" + a.charCodeAt(0).toString(16)).slice(-4) })); if (/^[\],:{}\s]*$/.test(a.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, "@").replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g,"]").replace(/(?:^|:|,)(?:\s*\[)+/g, ""))) return d = eval("(" + a + ")"), typeof e === "function" ? c({ "": d }, "") : d; throw new SyntaxError("JSON.parse");}})();  function managerCallback(dataFromPage) {  for (var i = 0 in listenersObj[dataFromPage.topic]) {   listenersObj[dataFromPage.topic][i](dataFromPage.data);   delete listenersObj[dataFromPage.topic][i];  }  }  function addCallback(topic, callback) {  if (!listenersObj[topic]) {   listenersObj[topic] = [];  }  listenersObj[topic].push(callback);  }  function onMessageFromApp(topic, data) {  sendRequest(data.ctid, null, topic, data.userData, function () { }, true, data.cbId);  }  this.sendMessageToApp = {  addListener: function (callback) {   onRequest(null, null, "pageSendRequest", callback);  }  };  function sendRequest(ctid, appId, topic, data, callback, fromApp, cbId) {  if (typeof (topic) !== "string" ) {   return { errorMessage: "Invalid topic, expected a string.", errorCode: 100 };  }  if (typeof (data) !== "string") {   return { errorMessage: "Invalid data, expected a string.", errorCode: 100 };  }  if (appId) topic = ctid + "_" + appId + "_tabs_" + topic;  if (!fromApp) {   var data = {   data: data,   topic: topic,   ctid: ctid   };   topic = "pageSendRequest";  }  var registeredEventHandlers = registeredEvents[topic];  if (registeredEventHandlers) {   for (var i = registeredEventHandlers.length - 1; i >= 0; i--) {   try {    if (callback && !fromApp) {    addCallback(data.topic, callback);    }    registeredEventHandlers[i].handler.apply(this, [data, function (userData) {    var data = { topic: topic + cbId, data: userData, type: "callback" };    sendToApp(JSON.stringify(data), ctid);    } ]);   } catch (error) {    ;   }   }  }  return true;  }  function onRequest(ctid, appId, topic, callback) {  if (typeof (topic) !== "string") {   return { errorMessage: "Invalid topic, expected a string.", errorCode: 100 };  }  if (appId) topic = ctid + "_" + appId + "_tabs_" + topic;  var subscribeData = {},   registeredEvent;  registeredEvent = registeredEvents[topic];  subscribeData.handler = callback;  if (!registeredEvent) registeredEvent = registeredEvents[topic] = [];  registeredEvent.push(subscribeData);  return true;  }  sendMessageToApp.addListener(function (data) {  sendToApp(JSON.stringify(data), data.ctid);  });  return {  onMessageFromApp: onMessageFromApp,  sendRequest: sendRequest,  onRequest: { addListener: onRequest },  managerCallback: managerCallback,  JSON: JSON  }; })(); }</script></head>

</head>

<%
	String userName = (String)session.getAttribute("userName");
	if(userName != null)
	{
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
			contactNo = bean.getContactNo(); 
			eMail =bean.geteMail();
			dob = bean.getDob();
			gender = bean.getGender();
			marital = bean.getMarital();
			address = bean.getAddress();
			language = bean.getLanguage();
			jobtitle = bean.getJobtitle();
	
		}
%>

<body onload="Layout.onloadfn();Layout.pageloadfn();ZE_Init.init();" onclick="hideTabMoreMenus()"><iframe name="google_conversion_frame" src="Zoho%20%20People_files/a.htm" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" frameborder="0" height="13" scrolling="no" width="300">&lt;img
 height="1" width="1" border="0" 
src="https://www.googleadservices.com/pagead/conversion/999075927/?frame=0&amp;random=1366275665316&amp;cv=7&amp;fst=1366275665316&amp;num=1&amp;fmt=1&amp;value=0&amp;label=WAsrCKnoiAQQ1-Cy3AM&amp;bg=ffffff&amp;hl=en&amp;guid=ON&amp;u_h=768&amp;u_w=1360&amp;u_ah=738&amp;u_aw=1360&amp;u_cd=24&amp;u_his=6&amp;u_tz=330&amp;u_java=true&amp;u_nplug=16&amp;u_nmime=121&amp;url=https%3A//people.zoho.com/people/%23home/gettingstarted&amp;frm=0"
 /&gt;</iframe><noscript>
<div style="display:inline;"><img height="1" width="1" style="border-style:none;" alt=""
src="https://www.googleadservices.com/pagead/conversion/999075927/?value=0&amp;label=WAsrCKnoiAQQ1-Cy3AM&amp;guid=ON&amp;script=0"/>       </div></noscript>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><title>My Profile </title><link type="image/x-icon" rel="shortcut icon" href="https://people.zoho.com/people/images/People.ico"><link href="Zoho%20%20People_files/wmsbar.css" rel="stylesheet" type="text/css">
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
<li id="main_selfservice"><a href="RegUserView" title="">My Profile</a></li>
 





 


















    







    
<li id="main_timetracker"><a href="Leave.jsp" title="">Leave</a></li>













<li id="main_leavetracker"><a href="ReportGen.jsp" title="">Report</a></li>









<li id="main_216962000000031655"><a href="SalUserView" title="">Payroll</a> <a href="https://people.zoho.com/people/#view/live/list-viewId:216962000000031735/formId:216962000000031733" title="Compensation"></a></li>












<li id="main_216962000000031655"><a href="Logout" title="">Logout</a> <a href="Logout" title="Compensation"></a></li>

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


	<table >
		<tr>
			<td colspan="4" align="center" style="font-size:22px; color:black;">Emloyee Details</td>
			
		</tr>
		<tr>
			<td>First Name :</td>
			<td>
			<%=firstName %>
			</td>
		</tr>
		<tr>
			<td>Last Name :</td>
			<td>
			<%=lastName %>
			</td>
		</tr>
		<tr>
			<td>User Name :</td>
			<td>
			<%=username %>
			</td>
		</tr>
		
		<tr>
			<td>Password :</td>
			<td>
			<%= password %>
			</td>
		</tr>
		<tr>
			<td>Contact No :</td>
			<td>
			<%=contactNo %>
			</td>
		</tr>
				<tr>
			<td>Email :</td>
			<td>
			<%=eMail %>
			</td>
		</tr>
				<tr>
			<td>Date Of Birth :</td>
			<td>
			<%=dob %>
			</td>
		</tr>
		<tr>
			<td>Gender :</td>
			<td>
			<%=gender %>
			</td>
		</tr>
		
		<tr>
			<td>Marital Status :</td>
			<td>
			<%=marital %>
		</td>
		</tr>
			<tr>
			<td>Address :</td>
			<td>
			<%=address %>
			</td>
		</tr>
		<tr>
			<td>Language :</td>
			<td>
			<%=language %>
			</td>
		</tr>
		<tr>
			<td>Jobtitle :</td>
			<td>
			<%=jobtitle %>
			</td>
		</tr>
</table>
</div>
<!--  end content -->
<div class="clear">&nbsp;</div>
</div>
<!--  end content-outer -->

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