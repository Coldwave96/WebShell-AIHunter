<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="../system/conn.asp"-->
<!--#include file="../system/library.asp"-->
<!--#include file="../system/config.asp"-->
<%
If Not inull(rf("submit")) Then 
	Call null_back(rf("login_name"),"请填写用户名")
	Call null_back(rf("login_password"),"请填写密码")
	login_name = str_safe(rf("login_name"))
	login_password = md5(str_safe(rf("login_password")))
	Set rs = ado_query("select * from cms_admin where a_name = '"&login_name&"' and a_password = '"&login_password&"' and a_enable =1")
		If rs.EOF Then 
			Call alert_href("用户名或密码错误,请核对后重新输入！","cms_login.asp")
		Else
			Response.Cookies("login_name") = login_name
			Response.Cookies("login_password") = login_password
			Response.Redirect("cms_welcome.asp")
			Call alert_href("登录成功","cms_welcome.asp")
		End If 
	rs.Close
	Set rs = Nothing
End If 
%>
<title>登录后台</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="<%=s_path%>common/css/ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=s_path%>common/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=s_path%>common/js/ui.js"></script>
</head> 
<body style="background:#30B58A url(images/login.jpg) center no-repeat;; height: 1080px; overflow: hidden; padding-top: 100px;">
<div>
	<div class="login" style="background: #222; height: 500px; width: 400px; padding: 50px; margin: 0 auto;">
		<p style="font-size: 30px; text-align: center; line-height: 80px;">华科企业网站管理系统</p>
		<p class="tc"><span class="badge"><%=cms_version%></span></p>
		<form method="post" action="cms_login.asp" class="mt30">
			<div class="form-group">
				<div class="label"><label for="login_name">用户名</label></div>
				<div class="field">
					<input id="login_name" class="input" name="login_name" type="text" data-validate="required:请填写用户名" value="" />
				</div>
			</div>
			<div class="form-group">
				<div class="label"><label for="login_password">密码</label></div>
				<div class="field">
					<input id="login_password" class="input" name="login_password" type="password" data-validate="required:请填写密码" value="" />
				</div>
			</div>
			<div class="form-group">
				<div class="label"><label for="login_verifycode">验证码</label> <img src="../system/verifycode.asp" onclick="javascript:this.src='../system/verifycode.asp?tm='+Math.random()" style="background:#EEEEEE; padding:5px; cursor:pointer;" alt="点击更换" title="点击更换" /></div>
				<div class="field">
					<span class="fa fa-user"></span><input id="login_verifycode" class="input" name="login_verifycode" type="text" data-validate="required:请填写验证码" value="" />
				</div>
			</div>
			<div class="form-group">
				<div class="label"><label></label></div>
				<div class="field">
					<input id="submit" class="btn btn-block bg-dot" name="submit" type="submit" value="登录后台" />
				</div>
			</div>
		</form>

	</div>
</div>
</body>
</html>
