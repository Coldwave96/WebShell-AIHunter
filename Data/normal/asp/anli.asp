<!--#include File="inc/anliconn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=Rs("anliname")%> - <%=List("WebName")%></title>
<meta name="generator" content="" />
<meta name="author" content="" />
<meta name="keywords" content="<%=Rs("anliname")%>" />
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body>
<!--#include file="top.asp" -->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;案例展示&nbsp;&gt;&nbsp;正文</span>   案例展示</div>
<div class="info_box">
<div class="anlixx">
<a href="<%=Rs("pic")%>" title="<%=Rs("anliname")%>" target="_blank">
<div class="cppic" align="center"><IMG alt="<%=Rs("anliname")%>" src="<%=Rs("pic")%>"></DIV>
</a>
<div class="pro_info">
<dl>
<dt><%=Rs("anliname")%></dt>
<dd></dd>
</dl>
</div><div class="clear"></div>
<div class="detail">
<div class="detail_tit"><b>详细介绍：</b></div>
<div class="detail_info"><%=Rs("body")%></div>
</div>
</div>
<div align="left" style="border-top:1px dashed #ccc; padding:10px 0 10px 0;margin-top:15px;">
<div class="thb">
<dl>
<dt><%set rs=conn.execute("select top 1 id,anliname from anli where id<"&rs("id")&" order by id desc")
if not rs.eof or not rs.bof then %>
<a href="anli.asp?id=<%=rs("id")%>">上一篇:<%=rs("anliname")%></a>
<%else%>
<a href="javascript:alert('这已经是第一条记录了！')">没有上一篇了 </a>
<%rs.close
	set rs=nothing
	end if%></dt><dt><%set rs1=conn.execute("select top 1 id,anliname from anli where id>"&id&" order by id asc")
if not rs1.eof or not rs1.bof then%>
<a class='next' href="anli.asp?id=<%=rs1("id")%> ">下一篇:<%=rs1("anliname")%></a>
<%else%>
<a href="javascript:alert('这已经是最后一条记录了！');">没有下一篇了</a>
<%rs1.close
set rs1=nothing
end if%></dt></dl>
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
<!--#include File="foot.asp" --><!-- /footer-->
</body>
</html>