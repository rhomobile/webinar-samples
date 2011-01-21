function getPage(url,execute)
{
	if (window.XMLHttpRequest)
	{
		xmlhttp=new XMLHttpRequest();

		xmlhttp.open("GET",url,false);
		xmlhttp.send(null);
		if (xmlhttp.responseText != null)
		{
			if(execute) { return eval('(' + xmlhttp.responseText + ')'); }
		}
	}
	return -1;
}


function rho_logged_in() {
	return getPage('/app/Settings/logged_in',true);
}

function rho_sync() {
	return getPage('/app/Settings/do_sync',false);
}