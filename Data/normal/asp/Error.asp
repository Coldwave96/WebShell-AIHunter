<!--#include file="inc/Conn.asp"-->
 
 <%
Public Function ServerPath 
Dim Path
Dim Pos
Path=Request.ServerVariables("script_name")
Pos=InStrRev(Path,"/")
ServerPath=Left(Path,Pos)
End Function
%> 

<%
Response.Write "<script Language=Javascript>alert(' 发生错误!可能登陆已经超时，请重新登陆.....');location.href = '"&ServerPath&"';</script>"
%>