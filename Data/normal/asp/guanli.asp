<!--#include file="include/CheckPost.asp"-->
<!--#include file="include/nowshop.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>

<script language=javascript src=../include/mouse.js></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="style.css" type=text/css rel=stylesheet>
<script language="JavaScript" type="text/JavaScript">
function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
</script>
<style type="text/css">
<!--
.back_southidc {BACKGROUND-IMAGE:url(images/titlebg.gif);COLOR:000000;}
.table_southidc {BACKGROUND-COLOR: A4B6D7;}
.tr_southidc {BACKGROUND-COLOR: EFF3F9;}
-->
</style>
</head>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<BODY bgcolor="#D9EAFC">

<%
action=request("action")
if action="" then%>

<table height="5"><tr><td></td></tr></table>
<table height="5"><tr><td></td></tr></table>

<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="table_southidc">
	<form name=Prodlist action=guanli.asp method=post>
	  <tr bgcolor="#f4f5fd">
	    <td height="25" colspan="6" align=center background="../product/images/titlebg.gif" ><b>留言信息管理</b></td>
      </tr>
	  <tr bgcolor="#f4f5fd">	
	<td width=8% align=center><strong>选</strong></td>
	<td width=12% height=15 align=center><strong>姓名</strong></td> 
	<td width=45% height="20" align=center><strong>内容（编辑与回复）</strong></td>
	<td width=15% align=center><strong>日期</strong></td>
	<td width=10% align=center><strong>状态</strong></td>
	<td width=10% align=center><strong>审核</strong></td>
	</tr>
<%
dim rs,msg_per_page
dim sql
msg_per_page = 20 '每页显示记录数
Set rs=Server.CreateObject("ADODB.Recordset")
sql="select * from book order by top desc,Postdate desc"

rs.cursorlocation = 3 
rs.pagesize = msg_per_page '每页显示记录数
rs.open sql,conn,1,1 

	if rs.eof and rs.bof then
	response.write "<tr bgcolor=#ffffff><td colspan=6 align=center><BR>暂时没有留言<BR><BR></td></tr>"
	end if

	if not (rs.eof and rs.bof) then '检测记录集是否为空
	totalrec = RS.RecordCount '总记录条数
	if rs.recordcount mod msg_per_page = 0 then '计算总页数,recordcount:数据的总记录数
	n = rs.recordcount\msg_per_page 'n:总页数
	else 
	n = rs.recordcount\msg_per_page+1 
	end if 

	currentpage = request("page") 'currentpage:当前页
	If currentpage <> "" then
		currentpage = clng(currentpage)
		if currentpage < 1 then 
			currentpage = 1
		end if 
		if err.number <> 0 then 
			err.clear
			currentpage = 1
		end if
	else
		currentpage = 1
	End if 
	if currentpage*msg_per_page > totalrec and not((currentpage-1)*msg_per_page < totalrec)then 
		currentPage=1
	end if
	rs.absolutepage = currentpage 'absolutepage：设置指针指向某页开头
	rowcount = rs.pagesize 'pagesize：设置每一页的数据记录数
	dim i
	dim k

	Do while not rs.eof and rowcount>0
	content=rs("Comments")	
	replay=rs("replay")
	UserName=rs("UserName")

	if rs("top")="0" then
	Response.write "<tr  class=tr_southidc><td align=center><input type='checkbox' value='"&rs("ID")&"' name=id>"
	else
	Response.write "<tr class=tr_southidc><td align=center height=25><font color=red title='固顶信息不能直接删除，请先解除固顶属性再删除'>TOP</font>"
	end if
	Response.write "</td><td>"&UserName&"</td><td><a href='guanli.asp?action=replay&id="&rs("ID")&"'>"
	response.write left(server.htmlencode(content),50)
	response.write "</a></td><td  align=center>"&split(rs("Postdate"))(0)&"</td><td  align=center>"
	if Isnull(Replay) then
		response.write "<font color=red>未回复</font>"
	else				
		response.write "已回复"
	end if
	response.write "</td><td align=center>"
	if rs("Online")="0" then response.write "<font color=red>隐藏</font>" else response.write "公开" 	end if
	response.write "</td></tr>"
	rowcount=rowcount-1
	rs.movenext		
	loop
	end if

	rs.close
	conn.close
	set rs=nothing
	set conn=nothing
%>
<tr bgcolor="#FFFFFF"><td colspan=6 class="tr_southidc"><input type='checkbox' name=chkall onclick='CheckAll(this.form)'> 全选 
	<input type="submit" name="action" value="删除" onClick="{if(confirm('该操作不可恢复！\n\n确实删除选定的留言？')){this.document.Prodlist.submit();return true;}return false;}"> 	
</td></tr></form></table>
<%
call listPages()
end if

if action="删除" then
	delid=replace(request("id"),"'","")
	call delfeedback()
end if

if action="replay" then
	id=request("id")
	call detailfeedback()

end if

%></td></tr></table>
</td></tr> </table>
</body></html>

<%
sub delfeedback()
	if delid="" or isnull(delid) then

	response.write "<script language='javascript'>"
	response.write "alert('出错了，您什么也没有选择！');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end

	else
		conn.execute("delete from book where ID in ("&delid&")")
		conn.close
		set conn=nothing

	response.write "<script language='javascript'>"
	response.write "alert('操作成功，选定的留言已删除！');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end

	end if
end sub

sub detailfeedback()
if id="" then
	response.write "<script language='javascript'>"
	response.write "alert('出错了，无此留言编号！');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end
end if

	'修改留言资料
if request("send")="ok" then

		if trim(request.form("comments"))="" then 
		response.write "<script language='javascript'>"
		response.write "alert('出错了，留言内容不能为空！');"
		response.write "location.href='javascript:history.go(-1)';"
		response.write "</script>"
		response.end
		end if

	set rs=server.createobject("adodb.recordset")
	sql = " select * from book where ID="&id
	rs.open sql,conn,1,3

		if not (rs.eof and rs.bof) then
		rs("UserMail")=request.form("UserMail")
		rs("url")=request.form("url")
		rs("qq")=request.form("qq")
		rs("comments")=request.form("comments")
		rs("Replay")=replace(request.form("Replay"),vbCRLF,"<BR>")
		rs("Online")=request("Online")
		rs("top")=request("top")
		rs.update
		end if
	rs.close

	response.write "<script language='javascript'>"
	response.write "alert('操作成功，您已修改或回复一条留言！');"
	response.write "location.href='guanli.asp';"
	response.write "</script>"
	response.end
end if

	'显示详细资料
	set rs = server.createobject("adodb.recordset")
	sql = "select * from book where ID="&id
	rs.open sql,conn,1,1

		if rs.eof and rs.bof then 
		response.write "<script language='javascript'>"
		response.write "alert('出错了，无此留言！');"
		response.write "location.href='guanli.asp';"
		response.write "</script>"
		response.end
		end if

		if not (rs.eof and rs.bof) then 
			Comments=replace(rs("Comments"),"<BR>",vbCRLF)
			if rs("replay")<>"" then replay=replace(rs("Replay"),"<BR>",vbCRLF) else repley=""  end if

		%>
<br>
<table width="95%"  border="0" align="center" cellpadding="2" cellspacing="1" class="table_southidc">

		 <form name="repl" method="post" action='guanli.asp?action=replay&id=<%=id%>'>
		 <tr >
		   <TD height=25 colspan="2" align="center"  background="../product/images/titlebg.gif"><b>留言信息管理</b></TD>
		   </tr>
		 <tr  class="tr_southidc"><TD align="right" WIDTH=20% height=25>留言人IP地址</TD><td><%=rs("IP")%></td></tr>
		 <tr  class="tr_southidc"><TD align="right" height=25>留言日期</TD><td><%=rs("PostDate")%></td></tr>		 
		 <tr class="tr_southidc"><TD align="right" height=25>留言人姓名</TD><td><%=rs("UserName")%></td></tr>
		<tr  class="tr_southidc"><TD align="right" >邮箱</TD><td><input type=text name=UserMail value="<%=rs("UserMail")%>" size=35 maxlength=100></td></tr>
		<tr  class="tr_southidc"><TD align="right" >网址</TD><td><input type=text name=url value="<%=rs("url")%>" size=35 maxlength=100></td></tr>
		<tr  class="tr_southidc"><TD align="right" >腾讯QQ</TD><td><input type=text name=qq value="<%=rs("qq")%>" size=35 maxlength=100></td></tr>
		 <tr  class="tr_southidc"><TD align="right" >留言内容</TD><td><textarea style="overflow:auto" name="comments" cols="60" rows="8"><%=Comments%></textarea></td></tr>
		 <tr  class="tr_southidc"><TD align="right"  valign=top>回复内容</TD><td><textarea style="overflow:auto" name="Replay" cols="60" rows="8"><%=replay%></textarea>&nbsp;</td></tr>
		<tr class="tr_southidc"><TD align="right" width=20%>是否固顶</TD><td><input type="radio" name="top" value="1" <%if rs("top")="1" then%>checked<%end if%>>
			  固顶<input type="radio" name="top" value="0" <%if rs("top")="0" then%>checked<%end if%>>
			  普通 </td></tr>

		<tr  class="tr_southidc"><TD align="right" >是否隐藏</TD><td><input type="radio" name="Online" value="0" <%if rs("Online")="0" then%>checked<%end if%>>
			  隐藏<input type="radio" name="Online" value="1" <%if rs("Online")="1" then%>checked<%end if%>>
			  公开 </td></tr>
			<TR  class="tr_southidc"><TD align="right" >&nbsp;<INPUT TYPE="hidden" name=send value=ok></TD><TD>
				<input type="submit" name="action" value=" 提 交 "></TD></TR>
			</form></TABLE>
					  <table height="5"><tr><td></td></tr></table>
		<%
		end if	

	rs.close
	set rs=nothing

end sub


sub listPages() 
if n <= 1 then exit sub 
%>
<p> >> 
<%if currentpage = 1 then%>
<font color=darkgray>首页 前页</font>
<%else%> 
<font color=black face="arial"><a href="<%=request.ServerVariables("script_name")%>?page=1">
首页</font></a>
 <a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage-1%>">
<font color=black face="arial" >前页</a></font>
<%end if%>
<%if currentpage = n then%> 
<font color=darkgray face="arial" >下页 末页</font>
<%else%> 
<font color=black face="arial" ><a href="<%=request.ServerVariables("script_name")%>?page=<%=currentpage+1%>">下页</a>
 <a href="<%=request.ServerVariables("script_name")%>?page=<%=n%>">末页</a></font>
<%end if%>
<font color=black face="arial" >
  总:<%=currentpage%>/<%=n%>页&nbsp;&nbsp;总共:<%=totalrec%>条留言 [<%=msg_per_page%>条/页]</font></p>

<%end sub%>

