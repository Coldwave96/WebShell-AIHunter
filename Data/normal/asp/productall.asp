<!--#include File="inc/Conns.asp" --> 
<%
 Set OO00OO00O=Response:Set OO00OO000=Request:Set OO00OO000O=Session:Set OOOOOO=Application:Set OO00OO0000=Server
classid=OO00OO000.QueryString("classid")
ye= (51 * 24 - 1223)
IF not isNumeric(OO00OO000("page")) then
OO00OO00O.write("<script>alert(""参数错误""); history.go(-1);</script>")
OO00OO00O.End
End If
sql="select * from [Product] where queren="+cstr(ye)+""
if classid<>"" then sql=sql + " and classid='"&classid&"'"
sql=sql + " order by px_id desc,id desc"
Dim fileName,postion,time
fileName = OO00OO000.ServerVariables("script_name")
postion = InstrRev(fileName,"/")+ (51 * 24 - 1223)
fileName = Mid(fileName,postion)
set rscp=OO00OO0000.CreateObject("adodb.recordset")
rscp.open sql,conn, (51 * 24 - 1223), (51 * 24 - 1223)
if rscp.bof or rscp.eof then
OO00OO00O.write("<script>alert(""暂无信息""); history.go(-1);</script>")
OO00OO00O.End
else
pages= (48 * 88 - 4215)
rscp.pagesize=pages
if not isempty(OO00OO000.QueryString("page")) then
thispage=clng(OO00OO000.QueryString("page"))
else
thispage= (51 * 24 - 1223)
end if
rscpcount=rscp.recordcount
if thispage="" then thispage= (51 * 24 - 1223)
if thispage< (51 * 24 - 1223) then thispage= (51 * 24 - 1223)
if (thispage- (51 * 24 - 1223))*pages>rscpcount then
if (rscpcount mod pages)= (31 * 67 - 2077) then
thispage=rscpcount\pages
else
thispage=rscpcount\pages+ (51 * 24 - 1223)
end if
end if
if(rscpcount mod pages)= (31 * 67 - 2077) then
allpages=rscpcount\pages
else
allpages=rscpcount\pages+ (51 * 24 - 1223)
end if
rscp.absolutepage=thispage
i= (51 * 24 - 1223)
%><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>产品展示 - <%=List("WebName")%></title>
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
<script src="/images<%=List("fengge")%>/tu.js" type="text/javascript"></script>
</head>
<body>
<!--#include file="top.asp" -->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;产品展示</span>产品展示</div>
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
                <td><a href="product.asp?id=<%=rscp("id")%>"><img onmouseover="this.style.filter='alpha(opacity=100)';high(this)" onmouseout="low(this)"  src="<%=rscp("pic")%>" width="270" height="210" border="0" /></a><a href="product.asp?id=<%=rscp("id")%>"></a></td>
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
            <td height="50" align="center"><%=left(rscp("Productname"),50)%></td>
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
【<a href="<%=filename&"?page=1"%>">首页</a>】 【<a href="<%=filename&"?page="&(thispage-1)%>">上一页</a>】
<% End If %>
<% if thispage<>allpages then %>
【<a href="<%=filename&"?page="&(thispage+1)%>">下一页</a>】【<a href="<%=filename&"?page="&allpages&""%>">末页</a>】
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