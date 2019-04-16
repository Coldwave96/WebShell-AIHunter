<!--#include File="inc/Conn.asp"-->
<!--#include file="inc/md5.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
end if
%>
<%
if request ("action")="adduser" then
Set rs=Server.CreateObject("ADODB.Recordset")
sql="SELECT * FROM admin"
rs.Open sql,conn,1,3
rs.Addnew
rs("admin_name")=Server.Htmlencode(Request("admin_name"))
rs("admin_pass")=MD5(trim(request("admin_pass")))
rs.Update
rs.Close
Set rs=Nothing
   response.Write"恭喜你，你已经提交成功!"
   response.write"<br>"
Response.Redirect"admin_user.asp"
response.end

elseif request("action")="edituser" then
if request("id")=empty then
response.Write"请选择要编辑的内容!"
response.end
else
Set rs = Server.CreateObject("ADODB.Recordset")
    sql="select * from admin where id="&request("id")
    rs.open sql,conn,3,3
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" href="css/main.css">
<title>用户管理</title>
</head>
<SCRIPT language=JavaScript>
function data2(form){
         if (form.admin_name.value =='') {
              alert ("用户名没有填写...")
            return false;
			 //break;
		  }
		  if (form.admin_pass.value =='') {
              alert ("用户密码没有填写...")
            return false;
			 //break;
		  }		 

	form.submit();
        //break
 }
 </SCRIPT><body><div class="box_top">
              <div align="center"><strong>网站管理员修改</strong></div>
            </div>
<form name="qyuser" method="post" action="admin_user.asp">
<table  border="0" cellpadding="0" class="list_table">   
  <tr>
    <td width="14%"><input name="action" type=hidden id="action" value="edituserok">
      <input type=hidden name="id" value="<%=Request("id")%>">
用户名： </td>
    <td width="86%"><input name="admin_name" type="text" class="input-text" id="admin_name" value="<%=rs("admin_name")%>" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td>密&nbsp;&nbsp;码： </td>
    <td><input name="admin_pass" type="password" class="input-text" id="admin_pass" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><INPUT name=SubmitSave   type=button id="SubmitSave" onclick=data2(this.form) value=编辑></td>
  </tr>
</table>
<br>
</form>
<%
end if

elseif request("action")="edituserok" then
id=cstr(server.HTMLEncode(Request.Form("id")))
admin_name=cstr(server.HTMLEncode(Request.Form("admin_name")))
admin_pass=MD5(trim(request("admin_pass")))
Set rs = Server.CreateObject("ADODB.Recordset")
rs.open "select * from admin where id="&id,conn,3,2
rs("admin_name")=admin_name
rs("admin_pass")=admin_pass
rs.update 
rs.close
Set rs=Nothing
   response.Write"您好，您已经顺利完成本次操作！"
   response.write"<br>"
Response.Redirect"admin_user.asp"
response.end
else
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css/main.css">
<title>网站管理员</title>

<SCRIPT language=JavaScript>
function data(form){
         if (form.admin_name.value =='') {
              alert ("用户名没有填写...")
            return false;
			 //break;
		  }
		  if (form.admin_pass.value =='') {
              alert ("用户密码没有填写...")
            return false;
			 //break;
		  }
		 
	form.submit();
        //break
 }
 
 
 </SCRIPT>
<body>
<div class="box_top">
              <div align="center"><strong>网站管理员</strong></div>
 </div>

<table width="100%" class="list_table"><form name="qyuser" method="post" action="admin_user.asp">
  <tr>
    <td width="12%"><input type=hidden name=action value="adduser">
用户名：</td>
    <td width="88%"><input name="admin_name" type="text" class="input-text" id="admin_name" value="" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td>密&nbsp;&nbsp;码：</td>
    <td><input name="admin_pass" type="password" class="input-text" id="admin_pass" value="" size="20" maxlength="20"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><INPUT onclick=data(this.form) type=button value=添加  name=SubmitSave></td>
  </tr></form>
</table>
<br>
<table  border="0" cellpadding="0" class="list_table">   
<tr>
<td align=center  width=30 height=20>ID</td>
<td align=center  width=135 height=20>用户名</td>
<td align=center  width=135>登录次数</td>
<td align=center  width=135 height=20>常规操作</td>
</tr>                                 
<%
jb="0"
Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from admin where admin_jb='"&jb&"' order by id desc"
rs.open sql,conn,3,3
if rs.eof then
response.Write""
else
do while not rs.eof
%>
<tr><td bgcolor="#FFFFFF" align=center height=20><%=rs("id")%></td>
<td bgcolor="#FFFFFF" align=center><%=rs("admin_name")%></td>
<td bgcolor="#FFFFFF" align=center><%=rs("hits")%></td>
<td bgcolor="#FFFFFF" align=center>
<a href=admin_user.asp?action=edituser&id=<%=rs("id")%>>编辑</a> 
<a href=?action=deluser&id=<%=rs("id")%>>删除</a></td>
</tr>
<%
rs.movenext
loop
end if
rs.close
%>
</table>
<%
end if
%>
</body>
</html><!-- -->
<%
if request("action")="deluser" then
if request("id")=empty then
response.write "请选定要删除的用户"
response.end
end if
Set rs = Server.CreateObject("ADODB.Recordset")
    sql="select * from admin where id="&request("id")
    rs.open sql,conn,3,3
if rs.eof and rs.bof then
       response.write "<p align='center'>没有找到你要删的内容</p>"
   else
            rs.delete
        rs.update
Response.Write "<script>alert('删除成功!');window.location.href='admin_user.asp';</script>" end if
response.end

end if%>