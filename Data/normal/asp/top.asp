<!--#include file="inc/Checkpost.asp" -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>后台页面头部</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
</head>
<body onselectstart="return false" oncontextmenu=return(false) style="overflow-x:hidden;">
<!--禁止网页另存为-->
<noscript><iframe scr="*.htm"></iframe></noscript>
<!--禁止网页另存为-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="header">
  <tr>
    <td rowspan="2" align="left" valign="middle" id="logo"><img src="images/main/logo.png"  ></td>
    <td align="left" valign="bottom">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
         
        <td align="right" valign="top" id="header-right">
        	<a href="amin_tui.asp" target="_top" class="admin-out" onFocus="this.blur()">退出登录</a>
            
        	<a href="../" target="_blank" onFocus="this.blur()" class="admin-index">预览网站</a>        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
         
        <td align="left" valign="bottom" id="header-menu">
        <a href="Manage.asp" target="_top" onFocus="this.blur()" >后台首页</a>
		<a href="admin_xitong.asp" target="mainFrame" onFocus="this.blur()">站点设置</a>
        <a href="admin_user.asp" target="mainFrame" onFocus="this.blur()">用户管理</a>
        <a href="../liuyan/guanli.asp"" target="mainFrame" onFocus="this.blur()">留言管理</a>
		
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>