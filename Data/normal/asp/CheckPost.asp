<%
Dim Server_v1,Server_v2
Chkpost=False
Server_v1=Cstr(Request.ServerVariables("HTTP_REFERER"))
Server_v2=Cstr(Request.ServerVariables("SERVER_NAME"))
If Mid(Server_v1,8,Len(Server_v2))<>Server_v2 Then
Chkpost=False
Else
Chkpost=True
End If
If Chkpost=False Then
Response.Write "Ç×£¬ÄãÏë¸ÉÊ²Ã´............"
Response.End
End If
%> 