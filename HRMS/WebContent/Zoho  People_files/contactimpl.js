// $Id$
function WmsContactImpl(){}


WmsContactImpl.handlePresence=function(zuid,uname,dname,scode,statusmsg)
{
    //called for any status change to any of the Contacts
    setTimeout(function(){
        try{
            var divid = "div_wms_empsrch_"+zuid; // No I18N
            var obj=document.getElementById(divid);
            if(obj!=null)
            {
			
                var html = setChatStatus(scode,uname,zuid,obj);
                if(html.length > 0){
                    obj.innerHTML = html;
                    $(obj).show();
                }else{
                    $(obj).hide();
                }
                
            }

            var imgId = "chatStatusImg_"+zuid; // No I18n
            var imgObjs = $('[id="'+imgId+'"]');
            for(var i=0;i<imgObjs.length;i++){
                if(imgObjs[i] != null){
                    var html = setChatImgStatus(scode, uname, zuid, imgObjs[i]);
                    imgObjs[i].innerHTML = html;
                }
            }
            

        }catch(e){}
	
    },100)
	
}

WmsContactImpl.handleAddressBook=function()
{
    }

WmsContactImpl.handleInvite=function(zuid,uname,dname)
{
    //called for the user when a contact request to add in chat
    }

WmsContactImpl.notifyInvite=function(zuid,uname,dname)
{
    //notification callback for the user when he sends the invitation to add contact to all the services he logged in
    }

WmsContactImpl.handleAccept=function(zuid,uname,dname,scode,statusmsg)
{
    //called for the user when a contact accepts his request to chat
    }

WmsContactImpl.notifyAccept=function(zuid,uname,dname,scode,statusmsg)
{
    //notification callback when an user accepts an invitation sent by him to all the services he logged in
    }

WmsContactImpl.handleReject=function(zuid,uname,dname)
{
    //called when an invited contacts for this user rejects the requets
    }

WmsContactImpl.notifyRemove=function(zuid,uname,dname)
{
    //notification callback when an user removes/rejects a contact to all the services he logged in
    }

WmsContactImpl.handleDelete=function(zuid,uname,dname)
{
    //called when a contact deletes this user from his contacts list
    }

WmsContactImpl.handleContactUpdated=function()
{
    }

WmsContactImpl.handleStatusMessage=function(status,scode)
{
    //callback for WebMessanger.getStatusMessage
    }

WmsContactImpl.handeAllStatusMessages=function()
{
    //callback for WebMessanger.getAllStatusMessage
    }

WmsContactImpl.handleHideContactsUI=function()
{
    }

WmsContactImpl.handleShowContactsUI=function()
{
    }

WmsContactImpl.handleGetContacts=function()
{

    setTimeout("employee_status()",100);

}

WmsContactImpl.handleMPReject=function(protocol,contactname,loginname)
{
    }

WmsContactImpl.handleMPAccept=function(protocol,contactname,loginname)
{
    }

WmsContactImpl.handleMPDelete=function(protocol,contactname,loginname)
{
    }

WmsContactImpl.handleMPAdd=function(protocol,contactname,loginname)
{
    }

WmsContactImpl.handleMPInvite=function(protocol,contactname,loginname)
{
    }

WmsContactImpl.handleLogin=function(loginname,status,statusmsg,protocol)
{
    }

WmsContactImpl.handleLogout=function(loginname,status,statusmsg,protocol)
{
    }

WmsContactImpl.handleGetAccounts=function(accountslist)
{
    }

WmsContactImpl.handleInvitations=function(invitearr)
{
    //bulk invitations, array of zuids
    }


//Employee status

function employee_status(){
    if(chatEnable){
        var employees = $(".wmspeoplecontacts");
        var zohocontacts = WmsContacts.getZohoContacts();
        var html="";

        for(var i=0;i<employees.length;i++)
        {
            var obj = employees[i];
            var zuid_uname = obj.id.replace("div_wms_empsrch_","").split("_");
            var zuid = zuid_uname[0];
            if(_LOGGEDIN_ZUID==zuid || zuid == ''){
                html = '<table border="0" cellpadding="0" cellspacing="0"><tr><td>&nbsp;</td><td>&nbsp;</td></tr></table>';
                obj.innerHTML = html;
                continue;
            }
                
            //var uname = obj.id.replace("div_wms_empsrch_"+zuid+"_","");
            var status="";
            var smsg="";
            var event="javascript:;"; // No I18N
            var imgcss = "addcontact"; // No I18N
            var chattitle = '';

            try
            {
                status = zohocontacts[zuid]["STATUS"];
                smsg = zohocontacts[zuid]["STATUSMSG"];
                chattitle = smsg;
                html = setChatStatus(status,zuid,zuid,obj);
            }catch(e){
                // user is not available in your contact list.
                imgcss = "addcontact"; // No I18N
                smsg = i18n.invitetochat;
                event = "WmsContacts.add('zoho','"+zuid+"',_LOGGEDIN_ZUID)"; // No I18N
                html = '<div onclick="'+event+'" class="imgchat'+imgcss+' fl">&nbsp;</div><div title="'+chattitle+'" onclick="'+event+'" class="zpinvit">'+smsg+'</div>';

            
            }
            if(html.length > 0){
                obj.innerHTML = html;
            }else{
                $(obj).remove();
            }
            

        }

        var chatObjs = $("[ischat=true]");
        for(var i=0;i<chatObjs.length;i++){
            zuid = chatObjs[i].id.replace("chatStatusImg_","").split("_")[0];
            if(_LOGGEDIN_ZUID==zuid){
                continue;
            }
            status="";
            try{
                status = zohocontacts[zuid]["STATUS"];
                html = setChatImgStatus(status,zuid,zuid,chatObjs[i]);
            }catch(e){
                html="";
            }
            chatObjs[i].innerHTML = html;
        }
    }

}

function setChatImgStatus(scode,uname,zuid,obj){
    var event = "WebMessanger.chat('"+zuid+"')"; // No I18N
    var imgcss="";
    var title="";
    if(scode==0) {
        imgcss="onGrey"; // No I18N
        title=i18n.offline;
    }else if(scode==1) {
        imgcss="on"; // No I18N
        title=i18n.online;
    }else if(scode==2) {
    //imgcss="off";
    }else if(scode==3) {
        imgcss="off"; // No I18N
        title=i18n.busy;
    }else if(scode==4) {
        imgcss="onNew"; // No I18N
        title=i18n.idle;
    }else{
        imgcss="";
    }
    var html="";
    if(imgcss!=""){
        html = '<img src="/people/images/spacer.gif" onclick="'+event+'" title="'+title+'" class="'+imgcss+'"/>';
    }
    return html;
}

function setChatStatus(scode,uname,zuid,obj)
{
    /*
		-1 show Invited to chat
		-3 Show pending for approval

		0 offline
		1 online
		2 invisible
		3 busy
		4 idle

		-1 invited
		-2 rejected
		-3 waiting for approval
		-4 deleted
		-5 deleted by current logged in user
		*/
    
    var html="";
    var imgcss="";
    var smsg="";
    var event = "";
    var chattitle="";
    /*if(scode == -3){
        imgcss = "pending";  // No I18N
        smsg = i18n.acceptinvite;
        event="javascript:WmsContacts.accept('zoho','"+uname+"', _LOGGEDIN_ZUID);"; // No I18N
        chattitle =i18n.acceptancepending;
        html = '<table border="0" cellpadding="0" cellspacing="0" onclick="'+event+'" style="cursor:pointer;margin:0 auto;" title="'+chattitle+'"><tr><td><div class="imgchat'+imgcss+'">&nbsp;</div></td><td class="gnormallable">'+smsg+'</td></tr></table>';
    }else */if(scode == -2 || scode == -4 || scode == -5){
        imgcss = "addcontact"; // No I18N
        smsg = i18n.invitetochat;
        event = "WmsContacts.add('zoho','"+uname+"',_LOGGEDIN_ZUID)"; // No I18N
        chattitle = i18n.invitetochat;
        html = '<div onclick="'+event+'" class="imgchat'+imgcss+' fl">&nbsp;</div><div onclick="'+event+'" class="zpinvit" title="'+chattitle+'">'+smsg+'</div>';
    }else if(scode == -1){
    // imgcss = "invited";  // No I18N
     smsg = i18n.pendinginvite;
      chattitle =i18n.pendinginvitetooltip;
     html = '<div class="zpinvit" style="cursor:default;color:#666;" title="'+chattitle+'">'+smsg+'</div>';
    }
    return html;

}
