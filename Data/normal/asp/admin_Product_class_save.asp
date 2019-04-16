 <!--#include File="inc/Conn.asp"-->
<%
 Dim OO0O00,OO0O0O,OO0OO0,OO0OOO,OOO00
Set OO0OO0=Response:Set OO0O0O=Request:Set OOO00=Session:Set OO0O00=Application:Set OO0OOO=Server
If OOO00("AdminName")="" and OOO00("adminpass")="" Then
OO0OO0.Redirect "Error.asp?id=001"
OO0OO0.end
end if
if OO0O0O("action")="add" then
name=trim(OO0O0O("name"))
classid=trim(OO0O0O("classid"))
px_id=OO0O0O.form("px_id")
set rs=OO0OOO.CreateObject("ADODB.RecordSet")
Sql="Select * From ProductClass Where name='"&name&"'"
Rs.Open Sql,Conn, (73 * 88 - 6423), (71 * 14 - 991)
if name=""  then
OO0OO0.Write("<script language=javascript>alert('产品分类名称不能为空!');history.go(-1)</script>")
OO0OO0.end
end if
if not rs.eof then
OO0OO0.Write("<script language=javascript>alert('此分产品类已存在，请不要重复提交!');history.go(-1)</script>")
OO0OO0.end
end if
IF not isNumeric(OO0O0O("px_id"))  then
OO0OO0.write("<script>alert(""亲！排序必须为数字!\n\n比如填写数字:2""); history.go(-1);</script>")
OO0OO0.end
end if
If Rs.Eof And Rs.Bof Then
Rs.AddNew
End If
rs("name")=name
rs("classID")=classid
rs("px_id")=px_id
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OO0OO0.redirect "admin_Product_class.asp"
OO0OO0.end
end if
if OO0O0O("action")="del" then
OO0OO0.Write "<script>alert('操作成功!');history.go(-1);</script>"
End if
if OO0O0O("action")="delyi" then
OO0OO0.Write "<script>alert('操作成功!');history.go(-1);</script>"
End if
if OO0O0O("action")="edit" then
OO0OO0.Write("<script language=""javascript"">alert(""当前产品分类修改成功！"");window.location.href='admin_Product_class.asp';</script>")
end if
%>
