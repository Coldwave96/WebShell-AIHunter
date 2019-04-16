<%
session.Abandon()
	Response.Write("<script language=""JavaScript"">alert(""亲！己安全退出了系统！"");</script>")
	response.write "<Meta http-equiv='refresh' content='0;URL=../'>"
%>