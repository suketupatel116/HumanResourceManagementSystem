//$Id$
window.onload = function()
{ 
	var curdomain = wmssubdomain;

        var dataStreamUrl ="";
        var ifhtml = ifhtml = '<IFRAME name="wms" id="wmsid" src="/'+_WMSCONT+'/blank.html"></IFRAME>';
        if(samedomain)
        {
            dataStreamUrl = window.location.protocol+"//"+window.location.host+"/wmssrv/"+_HTML+".html?az=01"+window.parent.nocachefix();
        }else
        {
            document.domain = curdomain;
            dataStreamUrl = window.location.protocol+"//"+wmsdomain+"."+wmssubdomain+"/"+_HTML+".html?az=01"+window.parent.nocachefix();
            
        }
	if(_SSTSERVICE)
	{
                if(_SSTICKET===false)
                {
                    dataStreamUrl=_IAMSERVER+"/login?servicename="+_SERVICE+"&serviceurl="+encodeURIComponent(dataStreamUrl);
                }else
                {
                    dataStreamUrl=dataStreamUrl+"#"+_SSTICKET;
                }
	}
        
	push = window.parent.push;
	goOffline = window.parent.goOffline;
	plive = window.parent.plive;
	getPrd = window.parent.getPrd;
	getUserName = window.parent.getUserName;
	getWmsConfig = window.parent.getWmsConfig;
	getNickName = window.parent.getNickName;
	getZuid = window.parent.getZuid;
	getUserId = window.parent.getUserId;
	getSid = window.parent.getSid;
	getRawSid = window.parent.getRawSid;
	isReconnecting = window.parent.isReconnecting;
	getITicket = window.parent.getITicket;
	disablewms = window.parent.disablewms;
	isdisablewms = window.parent.isdisablewms;
        requestsuccess = window.parent.requestsuccess;

 	getWmsContacts = window.parent.getWmsContacts;
	updateWmsContacts= window.parent.updateWmsContacts;
	getAuthType = window.parent._getAuthType;

        
	//var subframe = document.createElement('iframe');
	var odif = document.createElement('DIV');
	
	odif.innerHTML=ifhtml;
	document.body.appendChild(odif);
	subframe = document.getElementById("wmsid");
	subframe.src = dataStreamUrl;

	function triggerbind()
	{
		subframe.contentWindow.bind();
	}
	function isParentConnected()
	{
		var connection = subframe.contentWindow.isConnected();
		return connection;
	}

	try{
		window.parent.WebMessanger.setCSRFParamName(_CFPARAMNAME);
		window.parent.WebMessanger.setCSRFTokenName(_CFTOKEN);
		window.parent.WebMessanger.servicename=_SERVICE;
		window.parent.WebMessanger.documentready();
                window.parent.WebMessanger.setBarSettingsValue(_WMSSETTINGS);
                window.parent.WebMessanger.triggerbind = triggerbind;
                window.parent.WebMessanger.isParentConnected = isParentConnected;
	}catch(e){}
}
