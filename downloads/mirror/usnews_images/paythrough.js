var url_base = "https://secure.usnews.com/premium/";
var downpage = "https://secure.usnews.com/cart_unavailable.htm";

function getRef() {
	var ref = document.referrer;

	return ref;
}

function pay() {
	var path            = "pay1.jsp";
	var query           = "?o=1&referer=";
	var intropage	    = "/usnews/edu/grad/rankings/about/welcome.htm";
	var introquery	    = "%3Fr%3D" + location.href;
	var window_url      = url_base + path + query + intropage + introquery;
	location.href=window_url;
		
}

function useredit() {
	var path            = "user1.jsp";
	var window_url      = url_base + path;
	location.href=window_url;
}

//yjones added
function login(resource) {
        var path            = "login";
	var p = location.pathname;
	if (p.indexOf("logout") != -1) {
		//p = resource.substring(resource.indexOf("?") + 3);
		p = "/usnews/edu/grad/rankings/rankindex.htm";
	}
	var query	    = "?p=" + p;
	location.href=url_base+path+query;
}
