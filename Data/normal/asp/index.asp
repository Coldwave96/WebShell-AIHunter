<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>后台管理系统</title>
<link rel="stylesheet" href="css/login.css">
<script language=javascript>
<!--
function SetFocus()
{
if (document.Login.admin_name.value=="")
	document.Login.admin_name.focus();
else
	document.Login.admin_name.select();
}
function CheckForm()
{
	if(document.Login.admin_name.value=="")
	{
		alert("请输入用户名！");
		document.Login.admin_name.focus();
		return false;
	}
	if(document.Login.admin_pass.value == "")
	{
		alert("请输入密码！");
		document.Login.admin_pass.focus();
		return false;
	}
	if (document.Login.numcode.value==""){
       alert ("请输入您的验证码！");
       document.Login.numcode.focus();
       return(false);
    }
}

//-->
</script>
</head>
<body>
	<div id="login_top">
		<div id="welcome">
			欢迎使用网站管理系统
		</div>
		<div id="back">
			<a href="/">返回首页</a>&nbsp;&nbsp; | &nbsp;&nbsp;
			<a href="#">帮助</a>
		</div>
	</div>
	<div id="login_center">
		<div id="login_area">
			<div id="login_form">
	<form action="checklogin.asp"  method="post" name="Login" target="_parent" id="Login" onsubmit="return CheckForm();">					<div id="login_tip">
						<div align="center">管理员用户登录</div>
					</div>
					<div><input name="admin_name" type="text" class="username" id="admin_name" >
					</div>
					<div><input name="admin_pass" type="password" class="pwd" id="admin_pass">
					</div>
					<div id="btn_area">
						<input type="submit" name="submit" id="sub_btn" value="登&nbsp;&nbsp;录">&nbsp;&nbsp;
						<input name="numcode" type="text" class="verify" id="numcode">
						<img src="inc/numcode.asp">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="login_bottom">欢迎使用........</div>
</body>
</html>
