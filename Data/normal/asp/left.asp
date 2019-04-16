 <!--#include file="inc/Checkpost.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>左侧导航menu</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden; overflow-y:scroll;}
body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="images/main/a.png" width="24" height="24" /></div>
    <span>用户：<%=session("AdminName")%> </span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
       <div>
        <span>产品管理</span>
    <a href="admin_Product_add.asp" target="mainFrame" onFocus="this.blur()">添加产品</a>
	<a href="admin_Product.asp" target="mainFrame" onFocus="this.blur()">产品管理</a>
	<a href="admin_Product_class.asp" target="mainFrame" onFocus="this.blur()">分类管理</a>
      </div>
   
        
		      <div>
        <span>新闻管理</span>
<a href="admin_news_add.asp" target="mainFrame" onFocus="this.blur()">添加新闻</a>
<a href="admin_news.asp" target="mainFrame" onFocus="this.blur()">新闻管理</a>
<a href="admin_news_class.asp" target="mainFrame" onFocus="this.blur()">分类管理</a>
</div>
    
		
		  <div>
        <span>企业信息管理</span>
<a href="admin_about.asp" target="mainFrame" onFocus="this.blur()">企业信息管理</a>
<a href="admin_about_add.asp" target="mainFrame" onFocus="this.blur()">添加企业信息</a>

</div>

 <div>
        <span>人才招聘管理</span>
<a href="admin_job.asp" target="mainFrame" onFocus="this.blur()">人才招聘管理</a>
<a href="admin_job_add.asp" target="mainFrame" onFocus="this.blur()">人才招聘信息</a>

</div>

 <div>
        <span>企业荣誉证书管理</span>
<a href="admin_honor_add.asp" target="mainFrame" onFocus="this.blur()">添加荣誉证书</a>
<a href="admin_honor.asp" target="mainFrame" onFocus="this.blur()">企业荣誉证书管理</a>

</div>

 <div>
        <span>工程案例管理</span>
<a href="admin_anli_add.asp" target="mainFrame" onFocus="this.blur()">添加工程案例</a>
<a href="admin_anli.asp" target="mainFrame" onFocus="this.blur()">工程案例管理</a>

</div>
 <div>
        <span>网站高级设置</span>
<a href="admin_user.asp" target="mainFrame" onFocus="this.blur()">管理员</a>
<a href="admin_xitong.asp" target="mainFrame" onFocus="this.blur()">网站设置</a>
<a href="admin_flash.asp" target="mainFrame" onFocus="this.blur()">幻灯片管理</a>
<a href="admin_link.asp" target="mainFrame" onFocus="this.blur()">链接管理</a>
<a target="mainFrame" onFocus="this.blur()" href="../liuyan/guanli.asp"><font color="000000">留言管理</font></a>
<a href="../liuyan/guanli2.asp" target="mainFrame" onFocus="this.blur()">留言设置</a>
</div>
 
    </div>
</body>
</html>