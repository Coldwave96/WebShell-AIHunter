<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="system/inc.asp"-->
<%
Call non_numeric_back(rqs("id"),"参数非法")
Set rs = ado_query("select * from cms_content where id = "&rqs("id")&"")
%>
<!--#include file="system/content.asp"-->