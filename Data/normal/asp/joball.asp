<!--#include File="inc/Conns.asp" --><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人才招聘 - <%=List("WebName")%></title>
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
<!--#include File="left.asp" -->
<%
Set OO00OO00OO=Response:Set OO00OO00O0=Request:Set OO00OO0OO=Session:Set OO00OO000O=Application:Set OO00OO0O0=Server
OO00OO00OO.Write("<div class=""content_box"">" & vbCrLf)
OO00OO00OO.Write("<div class=""content_top""><span>您当前位置：<a href=""/"">首页</a>&nbsp;&gt;&nbsp;人才招聘</span>人才招聘</div>" & vbCrLf)
OO00OO00OO.Write("<div class=""info_box"">" & vbCrLf)
OO00OO00OO.Write("<ul class=""news"">")
Page=OO00OO00O0("Page")
PageSize = (32 * 32 - 1022)
ye= (16 * 44 - 703)
sql="select * from [job] order by id desc"
Set rs = OO00OO0O0.CreateObject("ADODB.Recordset")
rs.open sql,conn, (16 * 44 - 703), (31 * 77 - 2384)
if Rs.bof or Rs.eof then
OO00OO00OO.Write"<center>暂无产信息</center>"
OO00OO00OO.end
else
end if
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (16 * 44 - 703) Then Page= (16 * 44 - 703)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (13 * 25 - 325) Then Rs.AbsolutePage=Page
Count= (13 * 25 - 325)
Do While not Rs.Eof And Count<Rs.PageSize
OO00OO00OO.Write(vbCrLf)
OO00OO00OO.Write("<table width=""670"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""message_labes"">" & vbCrLf)
OO00OO00OO.Write("  <tr>" & vbCrLf)
OO00OO00OO.Write("    <td width=""324"" height=""35"">职务：")
OO00OO00OO.Write Rs("jobname")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("    <td width=""186"" height=""35"">人数：")
OO00OO00OO.Write Rs("renshu")
OO00OO00OO.Write("人</td>" & vbCrLf)
OO00OO00OO.Write("    <td width=""158"" height=""35"">学历：")
OO00OO00OO.Write Rs("xueli")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("  <tr>" & vbCrLf)
OO00OO00OO.Write("    <td height=""35"">性别：")
OO00OO00OO.Write Rs("xingbie")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("    <td height=""35"">年龄：")
OO00OO00OO.Write Rs("nianlinga")
OO00OO00OO.Write(" - ")
OO00OO00OO.Write Rs("nianlingb")
OO00OO00OO.Write("岁</td>" & vbCrLf)
OO00OO00OO.Write("    <td height=""35"">待遇：")
OO00OO00OO.Write Rs("daiyu")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("  <tr>" & vbCrLf)
OO00OO00OO.Write("    <td height=""35"" colspan=""3"">说明：")
OO00OO00OO.Write Rs("body")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("</table>" & vbCrLf)
OO00OO00OO.Write("<hr />" & vbCrLf)
Rs.Movenext
Count=Count+ (16 * 44 - 703)
Loop
OO00OO00OO.Write("</ul>" & vbCrLf)
OO00OO00OO.Write("<div align=""center"" class=""page_info"">")
OO00OO00OO.Write "<Form Method=""Post"" action=""?"">"
OO00OO00OO.Write "<span>第"& Page &"页/共"& pgnum &"页</span> "
If Page= (16 * 44 - 703) Then
OO00OO00OO.Write "<span>首页</span> <span>上一页</span> "
Else
OO00OO00OO.Write "<a href=""?Page=1"">首 页</a>"
OO00OO00OO.Write "<a href=""?Page="& Page- (16 * 44 - 703) &""">上一页</a>"
End If
If Rs.PageCount-Page< (16 * 44 - 703) Then
OO00OO00OO.Write "<span>下一页</span><span>尾 页</span>"
Else
OO00OO00OO.Write "<a href=""?Page="& Page+ (16 * 44 - 703) &""">下一页</a> "
OO00OO00OO.Write "<a href=""?Page="& Rs.PageCount &""">尾 页</a>"
End If
OO00OO00OO.Write " <span>共<font color=#ff0000> "& Pagingnum &" </font>条</span> "
Rs.Close
Set Rs=nothing
OO00OO00OO.Write("</div></div>" & vbCrLf)
OO00OO00OO.Write("<div class=""blank80""></div>" & vbCrLf)
OO00OO00OO.Write("</div>" & vbCrLf)
OO00OO00OO.Write("<div class=""clear""></div>" & vbCrLf)
OO00OO00OO.Write("</div>")
%>
<!-- /mainbody-->
<!-- footer-->
<!--#include File="foot.asp" -->
<!-- /footer-->
</body>
</html>