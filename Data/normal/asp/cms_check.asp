<%
	If inull(Request.Cookies("login_name")) Or inull(Request.Cookies("login_password")) Then
		Response.Redirect("cms_login.asp")
	Else
		Set rs = ado_query("select * from cms_admin where a_name = '"&Request.Cookies("login_name")&"' and a_password = '"&Request.Cookies("login_password")&"'")
		If Not rs.EOF Then
			admin_name = rs("a_name")
			admin_password = rs("a_password")
			admin_id = rs("id")
		Else
		Call alert_back("µÇÂ¼Ê§°Ü")
			Response.Redirect("cms_login.asp")
		End If
	End If
	rs.Close
	Set rs = Nothing
%>