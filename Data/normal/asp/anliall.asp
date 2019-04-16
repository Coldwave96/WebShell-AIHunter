<!--#include File="inc/Conns.asp" -->
<%
 Set OOO00O=Response:Set OOO000=Request:Set OOO0OO=Session:Set OOO0O=Application:Set OOO0O0=Server
classid=OOO000.QueryString("classid")
ye= (90 * 56 - 5039)
IF not isNumeric(OOO000("page")) then
OOO00O.write("<script>alert(""参数错误""); history.go(-1);</script>")
OOO00O.End
End If
sql="select * from [anli] order by px_id desc,id desc"
Dim fileName,postion,time
fileName = OOO000.ServerVariables("script_name")
postion = InstrRev(fileName,"/")+ (90 * 56 - 5039)
fileName = Mid(fileName,postion)
set rscp=OOO0O0.CreateObject("adodb.recordset")
rscp.open sql,conn, (90 * 56 - 5039), (90 * 56 - 5039)
if rscp.bof or rscp.eof then
OOO00O.write("<script>alert(""暂无信息""); history.go(-1);</script>")
OOO00O.End
else
pages= (15 * 62 - 921)
rscp.pagesize=pages
if not isempty(OOO000.QueryString("page")) then
thispage=clng(OOO000.QueryString("page"))
else
thispage= (90 * 56 - 5039)
end if
rscpcount=rscp.recordcount
if thispage="" then thispage= (90 * 56 - 5039)
if thispage< (90 * 56 - 5039) then thispage= (90 * 56 - 5039)
if (thispage- (90 * 56 - 5039))*pages>rscpcount then
if (rscpcount mod pages)= (70 * 99 - 6930) then
thispage=rscpcount\pages
else
thispage=rscpcount\pages+ (90 * 56 - 5039)
end if
end if
if(rscpcount mod pages)= (70 * 99 - 6930) then
allpages=rscpcount\pages
else
allpages=rscpcount\pages+ (90 * 56 - 5039)
end if
rscp.absolutepage=thispage
i= (90 * 56 - 5039)
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>案例展示 - <%=List("WebName")%></title>
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
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;案例展示</span>案例展示</div>
<div class="info_box">
<table width="95%" border="0" align="center"  cellpadding="0" cellspacing="0">
  <tr>
    <td height="198" align="right" valign="middle"><table border="0"  align="center" cellpadding="0" cellspacing="0" >
      <tr>
        <%do while not rscp.eof and  pages>0 %>
        <td align="center" valign="top" ><table width="158" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="10"><img src="Images/bg_0ltop.gif" width="10" height="10" /></td>
                <td background="Images/bg_01.gif"></td>
                <td><img src="Images/bg_0rtop.gif" width="10" height="10" /></td>
                <td width="5" rowspan="3">&nbsp;</td>
              </tr>
              <tr>
                <td background="Images/bg_03.gif"></td>
                <td><a href="anli.asp?id=<%=rscp("id")%>"><img onmouseover="this.style.filter='alpha(opacity=100)';high(this)" onmouseout="low(this)"  src="<%=rscp("pic")%>" width="270" height="210" border="0" /></a><a href="anli.asp?id=<%=rscp("id")%>"></a></td>
                <td background="Images/bg_04.gif"></td>
              </tr>
              <tr>
                <td><img src="Images/bg_0lbottom.gif" width="10" height="10" /></td>
                <td background="Images/bg_02.gif"></td>
                <td><img src="Images/bg_0rbottom.gif" width="10" height="10" /></td>
              </tr>
            </table></td>
            <td>&nbsp;&nbsp;</td>
          </tr>
          <tr>
            <td height="50" align="center"><%=left(rscp("anliname"),50)%></td>
            <td align="center">&nbsp;</td>
          </tr>
        </table></td>
        <%if (i mod 3) =0 then%>
      </tr>
      <%end if%>
      <%pages = pages - 1
rscp.movenext
i=i+1
loop
end if%>
    </table></td>
  </tr>
  <tr>
    <td align="center" valign="middle" class="mar8">共有信息【<font color="#FF0000"><%=rscp.recordcount%></font>】条
                  共【<font color="#FF0000"><%=allpages%></font>】页&nbsp;当前第【<font color="#FF0000"><%= thispage %></font>】页&nbsp;
                            <% if thispage<>1 then %>
                  【<a href="<%=filename&"?page=1"%>&amp;classid=<%=classid%>">首页</a>】 【<a href="<%=filename&"?page="&(thispage-1)%>">上一页</a>】
                  <% End If %>
                  <% if thispage<>allpages then %>
                  【<a href="<%=filename&"?page="&(thispage+1)%>">下一页</a>】【<a href="<%=filename&"?page="&allpages&""%>&amp;classid=<%=classid%>">末页</a>】
                <% End If %></td>
  </tr>
</table>
<div class="clear"></div>
</div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!--#include File="foot.asp" -->
</body>
</html>