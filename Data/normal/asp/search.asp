<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="system/inc.asp"-->
<%
search_text = str_safe(rq("search_text"))
If inull(search_text) Then
	Call alert_back("请输入搜索的文字")
End If
if ismobi() then
	echo ob_get_contents(""&mskin&"search.asp")
else
	echo ob_get_contents(""&skin&"search.asp")
end If
%>
