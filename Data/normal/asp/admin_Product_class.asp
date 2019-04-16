<!--#include File="inc/Conn.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
Else
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>产品类别管理</title>
<link rel="stylesheet" href="css/main.css">
<body>
<table width="95%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <form name="form1" method="post" action="admin_Product_class_save.asp?action=add">
  <tr>
      <th width="20%">产品分类名称</th>
		  <th width="10%">排序 </th>
		  <th width="10%">添加 </th>
  </tr>
  <tr>
      <td height="30"> <div align="center">
        <input name="classid" type="hidden" id="classid" value="0">
        <input name="name" type="text" class="input-text" id="name"  value="" size="30" maxlength="100">
</div></td>
      <td> <div align="center">
        <input name="px_id" type="text" class="input-text" id="px_id" size="5" maxlength="5" >
      </div></td>
      <td> <div align="center">
        <input name="Submit2" type="submit" class="btn btn82 btn_save2" value="添加">
      </div></td>
  </tr>
  </form> 
</table>

<table width="95%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <tr>

      <th width="5%">分类ID</th>
		<th width="30%">产品分类名称</th>
		  <th width="10%">排序/数值越小越排前 </th>
   <th width="10%">修改 </th>
     <th width="10%">删除 </th>
  </tr><%
Set Rs=Server.Createobject("Adodb.Recordset")
Sql="Select * From ProductClass where classid='0' order by px_id asc"
Rs.open Sql,Conn,1,3
Do While not Rs.Eof
%>
  <Form Method="post" action="admin_Product_class_save.asp?action=edit&id=<%=rs("id")%>">
    <tr> 
      <td width="80" height="38"> <div align="center"><%=rs("id")%></div></td>
      <td><div align="center">
        <input name="classid" type="hidden" id="classid" value="0">
        <input name="name" type="Text" class="input-text" id="name" value="<%=rs("name")%>" size="30" maxlength="100">
      </div></td>
	  <td width="10%" height="38"><div align="center">
	    <input name="px_id" type="text"  class="input-text" id="px_id" value="<%=rs("px_id")%>" size="6">
      </div></td>
      <td><div align="center">
        <Input Type="Submit" Name="Submit" value="修改" class="btn btn82 btn_add"> 
      </div></td>
      <td colspan="3"> <div align="left"><input type="button" class="btn btn82 btn_del" name="button" value="删除" onClick="javascript:if(confirm('亲：确定要删除吗！\n\n此操作将删除所有与之相关的产品且无法恢复!')){window.location.href='admin_Product_class_save.asp?action=delyi&Classid=<%=rs("id")%>';}else{history.go(0);}"  /></div></td>
    </tr>
  </form>
  <%
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
Conn.Close
Set Conn=nothing
%>
</table>
</body>
</html>
<%end if%>
<!-- -->