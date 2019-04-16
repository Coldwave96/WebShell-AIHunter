<!--#include File="inc/Conn.asp"-->
<%
 'Don't modify the following code, to ensure normal

Dim OOOOOO,OO00OO000,OO00OO00O,OO00OO0000,OO00OO000O
Set OO00OO00O=Response:Set OO00OO000=Request:Set OO00OO000O=Session:Set OOOOOO=Application:Set OO00OO0000=Server
If OO00OO000O("AdminName")="" and OO00OO000O("adminpass")="" Then
OO00OO00O.Redirect "Error.asp?id=001"
OO00OO00O.end
end if
if OO00OO000("action")="add" then
name=trim(OO00OO000("name"))
classid=trim(OO00OO000("classid"))
px_id=OO00OO000.form("px_id")
set rs=OO00OO0000.CreateObject("ADODB.RecordSet")
Sql="Select * From newsClass Where name='"&name&"'"
Rs.Open Sql,Conn, (105 * 58 - 6089), (77 * 87 - 6696)
if name=""  then
OO00OO00O.Write("<script language=javascript>alert('新闻分类名称不能为空!');history.go(-1)</script>")
OO00OO00O.end
end if
if not rs.eof then
OO00OO00O.Write("<script language=javascript>alert('此分新闻类已存在，请不要重复提交!');history.go(-1)</script>")
OO00OO00O.end
end if
IF not isNumeric(OO00OO000("px_id"))  then
OO00OO00O.write("<script>alert(""亲！排序必须为数字!\n\n比如填写数字:2""); history.go(-1);</script>")
OO00OO00O.end
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
OO00OO00O.redirect "admin_news_class.asp"
OO00OO00O.end
end if
if OO00OO000("action")="del" then
classid=OO00OO000.QueryString("classid")
Conn.Execute"Delete From news Where classid='"& classid &"'"
Conn.Execute"Delete From newsClass Where ID="&OO00OO000("ClassID")
OO00OO00O.redirect "admin_news_class.asp"
OO00OO00O.end
End if
if OO00OO000("action")="delyi" then
OO00OO00O.Write "<script>alert('操作成功!');history.go(-1);</script>"
End if
if OO00OO000("action")="edit" then
OO00OO00O.Write("<script language=""javascript"">alert(""当前新闻分类修改成功！"");window.location.href='admin_news_class.asp';</script>")
end if
%>

