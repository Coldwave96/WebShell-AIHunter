<!--#include File="inc/Conns.asp" --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>新闻资讯 - <%=List("WebName")%></title>
<link href="css<%=List("fengge")%>/webstyle.css" type="text/css" rel="stylesheet" />
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body>
<!-- header-->
<!--#include file="top.asp" --><!-- /header-->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="leftnews.asp" -->
<div class="content_box">
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;新闻资讯</span>新闻资讯</div>
<div class="info_box">
<ul class="news"><%
 Set TLTLT=Response:Set TLTLL=Request:Set TLTTT=Session:Set TLTT=Application:Set TLTTL=Server
classid=TLTLL.QueryString("classid")
Page=TLTLL("Page")
PageSize = (76 * 74 - 5609)
classid=TLTLL("classid")
ye= (65 * 52 - 3379)
sql="select * from [news] order by px_id desc,id desc"
Set rs = TLTTL.CreateObject("ADODB.Recordset")
rs.open sql,conn, (65 * 52 - 3379), (68 * 61 - 4145)
if Rs.bof or Rs.eof then
TLTLT.Write"<center>暂无产信息</center>"
TLTLT.end
else
end if
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (65 * 52 - 3379) Then Page= (65 * 52 - 3379)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (79 * 30 - 2370) Then Rs.AbsolutePage=Page
Count= (79 * 30 - 2370)
Do While not Rs.Eof And Count<Rs.PageSize
TLTLT.Write(vbCrLf)
TLTLT.Write("<li class=""""><span>")
TLTLT.Write rs("sj")
TLTLT.Write("</span><a href=""news.asp?id=")
TLTLT.Write rs("id")
TLTLT.Write(""">")
TLTLT.Write rs("newsname")
TLTLT.Write("</a></li>" & vbCrLf)
Rs.Movenext
Count=Count+ (65 * 52 - 3379)
Loop
%></ul>

<div align="center" class="page_info"><%
Response.Write "<Form Method=""Post"" action=""?"">"
Response.Write "<span>第"& Page &"页/共"& pgnum &"页</span> "
If Page=1 Then
Response.Write "<span>首页</span> <span>上一页</span> "
Else
Response.Write "<a href=""?Page=1&ClassID="& request("classID") &""">首 页</a>"
Response.Write "<a href=""?Page="& Page-1 &"&ClassID="& request("classID") &""">上一页</a>"
End If
If Rs.PageCount-Page<1 Then
Response.Write "<span>下一页</span><span>尾 页</span>"
Else
Response.Write "<a href=""?Page="& Page+1 &"&ClassID="& request("classID") &""">下一页</a> "
Response.Write "<a href=""?Page="& Rs.PageCount &"&ClassID="& request("classID") &""">尾 页</a>"
End If
Response.Write " <span>共<font color=#ff0000> "& Pagingnum &" </font>条</span> "
Response.Write " <span>转到：</span><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
Response.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Response.Write "<Input Type=""Hidden"" value="""& request("ClassID") &""" Name=""classid"">"
Rs.Close
Set Rs=nothing
%></div></div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!-- /mainbody-->
<!-- footer-->
<!--#include File="foot.asp" -->
<!-- /footer-->
</body>
</html>