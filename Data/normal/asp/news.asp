 <!--#include File="inc/newsconn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=Rs("newsname")%> - <%=List("WebName")%></title>
<meta name="keywords" content="<%=Rs("newsname")%>" />
<meta name="description" content="<%=Rs("newsname")%>" />
<link href="css<%=List("fengge")%>/webstyle.css" type="text/css" rel="stylesheet" />
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body>
<!-- header-->
<!--#include file="top.asp" -->
<!-- /header-->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="leftnews.asp" -->
<div class="content_box">
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;<%set rsc=server.CreateObject("adodb.recordset") 
rsc.open "select * From newsClass ",conn,1,1
while not rsc.eof
if CInt(rs("classid"))=rsc("id") then
response.Write("<a href=""newsall.asp?classid=" & rsc("id") & """>" & rsc("name") & "</a>")
end if
rsc.movenext
wend
rsc.close
set rsc=nothing
%>&nbsp;&gt;&nbsp;正文</span><%set rsc=server.CreateObject("adodb.recordset") 
rsc.open "select * From newsClass ",conn,1,1
while not rsc.eof
if CInt(rs("classid"))=rsc("id") then
response.Write("<a href=""newsall.asp?classid=" & rsc("id") & """>" & rsc("name") & "</a>")
end if
rsc.movenext
wend
rsc.close
set rsc=nothing
%></div>
<div class="info_box">
<div class="about-rightzt">
<div class="newdetail">
<div class="biaoti"><%=Rs("newsname")%></div>
<div class="zwen center1"><span style="padding:20px;">添加时间：<%=Rs("sj")%></span><span style="padding:20px;"></span> <span style="padding:20px;">来源：<%=Rs("wzly")%></span></div>
<%=Rs("body")%><div align="left" style="border-top:1px dashed #ccc; padding:10px 0 10px 0;margin-top:15px;">
<div class="thb">
<dl>
<dt><%set rs=conn.execute("select top 1 id,newsname from news where id<"&rs("id")&" order by id desc")
if not rs.eof or not rs.bof then %>
<a href="news.asp?id=<%=rs("id")%>">上一篇:<%=rs("newsname")%></a>
<%else%>
<a href="javascript:alert('这已经是第一条记录了！')">没有上一篇了 </a>
<%rs.close
	set rs=nothing
	end if%></dt><dt><%set rs1=conn.execute("select top 1 id,newsname from news where id>"&id&" order by id asc")
if not rs1.eof or not rs1.bof then%>
<a class='next' href="news.asp?id=<%=rs1("id")%> ">下一篇:<%=rs1("newsname")%></a>
<%else%>
<a href="javascript:alert('这已经是最后一条记录了！');">没有下一篇了</a>
<%rs1.close
set rs1=nothing
end if%></dt></dl>
</div>
</div>
</div>
</div>
</div>
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