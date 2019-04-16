<!--#include file="include/CheckPost.asp"-->
<!--#include file="include/nowshop.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>
<script language=javascript src=../include/mouse.js></script>
<%call checkmanage("08")%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<LINK href="style.css" type=text/css rel=stylesheet>
<script language="JavaScript" type="text/JavaScript">
function CheckAll(form) {
 for (var i=0;i<form.elements.length;i++) {
 var e = form.elements[i];
 if (e.name != 'chkall') e.checked = form.chkall.checked; 
 }
 }
</script><style type="text/css">
<!--
.back_southidc {BACKGROUND-IMAGE:url(images/titlebg.gif);COLOR:000000;}
.table_southidc {BACKGROUND-COLOR: A4B6D7;}
.tr_southidc {BACKGROUND-COLOR: EFF3F9;}
-->
</style>

</head>
<BODY bgcolor="#D9EAFC">
<%
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from bsetup"
rs.open sql,conn,1,3
if request("save")="ok" then
if (not isNumeric(request.form("maxlength"))) or (not isNumeric(request.form("pages"))) or (not isNumeric(request.form("book_jianju"))) then
response.write "<script language='javascript'>"
response.write "alert('出错了，资料填写不完整或有错误，请检查后重新提交。');"
response.write "location.href='javascript:history.go(-1)';"
response.write "</script>"
response.end
end if
rs("view")=request("view")
rs("view1")=request("view1")
rs("maxlength")=request("maxlength")
rs("pages")=request("pages")
rs("pages1")=request("pages1")
rs("html")=request("html")
rs("book_jianju")=request("book_jianju")
rs("mailyes")=request("mailyes")
rs("mailyes1")=request("mailyes1")
rs("huifutishi")=trim(request("huifutishi"))
rs("huifucolor")=trim(request("huifucolor"))
rs("fangan")=request.Form("radiobutton")
if request("bad")<>"" then
bad=request("bad")
bad=replace(bad,vbCRLF,"")
bad=replace(bad," ","")
bad=replace(bad,"／","/")
rs("bad")=bad
end if
rs.update
response.write "<script language='javascript'>"
response.write "alert('操作成功，您的设置已保存。');"
response.write "location.href='guanli2.asp?action=setup';"
response.write "</script>"
response.end
else
%>
<table height="5"><tr><td></td></tr></table>
<table height="5"><tr><td></td></tr></table>

<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#b1bfee">
  <form name=book action=guanli2.asp method=post>
    <tr bgcolor="#FFFFFF">
      <td height="25" colspan="2" align=center background="../product/images/titlebg.gif"><strong>留言选项设置</strong></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td align=right class="tr_southidc">留言审核 &nbsp; &nbsp; </td>
      <td class="tr_southidc">打开 
        <input type=radio name=view value="0" <%if rs("view")="0" then%> checked<%end if%>>
        关闭 
        <input type=radio name=view value="1" <%if rs("view")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="建议选择打开留言审核<br>以免受到垃圾信息、非法信息的骚扰"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">评论审核 &nbsp; &nbsp; </td>
      <td class="tr_southidc">打开 
        <input type=radio name=view1 value="0" <%if rs("view1")="0" then%> checked<%end if%>>
        关闭 
        <input type=radio name=view1 value="1" <%if rs("view1")="1" then%> checked<%end if%> ></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">屏蔽html代码 &nbsp; &nbsp; </td>
      <td class="tr_southidc">是 
        <input type=radio name=html value="0" <%if rs("html")="0" then%> checked<%end if%>>
        否 
        <input type=radio name=html value="1" <%if rs("html")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="建议选择“是”"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td align=right class="tr_southidc">留言必填Email &nbsp; &nbsp;</td>
      <td class="tr_southidc">是 
        <input type=radio name=mailyes value="0" <%if rs("mailyes")="0" then%> checked<%end if%>>
        否 
        <input type=radio name=mailyes value="1" <%if rs("mailyes")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="用户发表留言时，是否必须填写有效E-mail地址"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">评论必填Email &nbsp; &nbsp; </td>
      <td class="tr_southidc">是 
        <input type=radio name=mailyes1 value="0" <%if rs("mailyes1")="0" then%> checked<%end if%>>
        否 
        <input type=radio name=mailyes1 value="1" <%if rs("mailyes1")="1" then%> checked<%end if%> > 
        &nbsp;&nbsp; <img src=images/memo.gif alt="用户发表评论时，是否必须填写有效E-mail地址"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">评论长度 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=maxlength value="<%=rs("maxlength")%>" maxlength=3 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="留言/评论内容的最多字符数，例如200"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align=right class="tr_southidc">每页留言条数 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input name=pages type=text id="pages" value="<%=rs("pages")%>" size=10 maxlength=2> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="每页显示留言的条数，推荐10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">每页评论条数 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=pages1 value="<%=rs("pages1")%>" maxlength=2 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="每页显示评论的条数，推荐10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">评论表格间距 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=book_jianju value="<%=rs("book_jianju")%>" maxlength=2 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="合适的间距可使版面更美观，推荐10"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">管理员回复提示 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=huifutishi value="<%=rs("huifutishi")%>" maxlength=10 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="如：“NowShop回复”、“客服回复”"></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">回复内容的颜色 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><input type=text name=huifucolor value="<%=rs("huifucolor")%>" maxlength=10 size=10> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="英文单词或16进制数，如：<font color=red>red</font>、<font color=blue>blue</font>、<font color=#CCAA33>#CCAA33</font>"></td>
    </tr>
    <tr bgcolor="#FFFFFF">
      <td align=right class="tr_southidc">验证码图片方案：</td>
      <td class="tr_southidc"><input name="radiobutton" type="radio" value="1" checked>
        <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/1/"&a&".gif><img align=top height=15 border=0 src=images/yzm/1/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/1/"&c&".gif><img align=top height=15 border=0 src=images/yzm/1/"&d&".gif>"
%><input type="radio" name="radiobutton" value="2">
          <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/2/"&a&".gif><img align=top height=15 border=0 src=images/yzm/2/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/2/"&c&".gif><img align=top height=15 border=0 src=images/yzm/2/"&d&".gif>"
%>
          <input type="radio" name="radiobutton" value="3">
      <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/3/"&a&".gif><img align=top height=15 border=0 src=images/yzm/3/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/3/"&c&".gif><img align=top height=15 border=0 src=images/yzm/3/"&d&".gif>"
%></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td width=30% align=right class="tr_southidc">留言内容过滤 &nbsp; &nbsp; </td>
      <td class="tr_southidc"><TEXTAREA NAME="bad" ROWS="6" COLS="50" style="overflow:auto;"><%=rs("bad")%></TEXTAREA> 
        &nbsp;&nbsp; <img src=images/memo.gif alt="多个过滤词之间用半角“/”隔开"  align=top></td>
    </tr>
    <tr bgcolor="#FFFFFF"> 
      <td colspan=2 class="tr_southidc"><INPUT name="save" TYPE="hidden" value="ok">
        <INPUT TYPE="submit" value="保存设置"></td>
    </tr>
  </form>
</table>
<table height="5"><tr><td></td></tr></table>

<%
end if
rs.close
set rs=nothing
%>

