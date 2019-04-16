<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_admin"
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_admin where id ="&rq("id")&"")
	rs("a_password") = iif(rf("a_password") = "",rf("password"),md5(rf("a_password")))
	If rf("a_password") <> rf("a_cpassword") Then 
		Call alert_back("两次密码不一致,请重新输入！")
	End If 
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("修改成功","cms_login.asp")
End If 
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">修改密码</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_admin where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="a_password">新的密码</label></div>
								<div class="field">
									<input id="password" type="hidden" name="password" value="<%=rs("a_password")%>" />
									<input id="a_password" class="input" type="password" name="a_password" value="" placeholder="请填写新的密码" size="60"/>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="a_cpassword">确认密码</label></div>
								<div class="field">
									<input id="a_cpassword" class="input" type="password" name="a_cpassword" value="" placeholder="请确认密码" size="60"/>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
										<input id="save" class="btn bg-dot" type="submit" name="save" value="修改密码" />
								</div>
							</div>
						</div>
					</div>
				</form>
				<%
				Else 
					echo "暂无此数据"
				End If 
				rs.Close
				Set rs = Nothing
				%>
			</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
