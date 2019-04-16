<%
session.Timeout=1000
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=00v"
response.end
end if
%>