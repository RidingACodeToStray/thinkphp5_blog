document.writeln("<script src='http://www.youmew.com/zb_system/admin/ueditor/third-party/SyntaxHighlighter/shCore.pack.js' type='text/javascript'></script><link rel='stylesheet' type='text/css' href='http://www.youmew.com/zb_system/admin/ueditor/third-party/SyntaxHighlighter/shCoreDefault.pack.css'/>");
var bloghost="http://www.youmew.com/";
var cookiespath="/";
var str00="http://www.youmew.com/";
var str01="名称不能为空";
var str02="名称或邮箱,网址格式不对";
var str03="留言不能为空或过长";
var str06="显示UBB表情>>";
var intMaxLen="1000";
var strFaceName="neutral|grin|happy|slim|smile|tongue|wink|surprised|confuse|cool|cry|evilgrin|fat|mad|red|roll|unhappy|waii|yell";
var strFaceSize="16";
var strFaceType="png";
var strBatchView="";
var strBatchInculde="";
var strBatchCount="";

$(document).ready(function(){ 
	$("img[src*='zb_system/function/c_validcode.asp?name=commentvalid']").css("cursor","pointer").click( function(){$(this).attr("src","http://www.youmew.com/zb_system/function/c_validcode.asp?name=commentvalid"+"&amp;random="+Math.random());});
	sidebarloaded.add(function(){
		if(GetCookie("username")!=""&&GetCookie("password")!=""){$.getScript("http://www.youmew.com/zb_system/function/c_html_js.asp?act=autoinfo",function(){AutoinfoComplete();})}else{AutoinfoComplete();}
	});
	$.getScript("http://www.youmew.com/zb_system/function/c_html_js.asp?act=batch"+unescape("%26")+"view=" + escape(strBatchView)+unescape("%26")+"inculde=" + escape(strBatchInculde)+unescape("%26")+"count=" + escape(strBatchCount),function(){BatchComplete();});
	SyntaxHighlighter.highlight();for(var i=0,di;di=SyntaxHighlighter.highlightContainers[i++];){var tds = di.getElementsByTagName('td');for(var j=0,li,ri;li=tds[0].childNodes[j];j++){ri = tds[1].firstChild.childNodes[j];ri.style.height = li.style.height = ri.offsetHeight + 'px';}}
});

$(document).ready(function(){if(/Android|iOS|Windows Phone|IEMobile|BB10|ADR|iPhone|iPad|iPod|Symbian|BlackBerry/i.test(navigator.userAgent)){$('.cp-vrs').after("&nbsp;&nbsp;<span class='cp-pad'><a href='"+bloghost+"?mod=pad&act=editarticle'>[新建文章(PAD)]</a></span>")}});