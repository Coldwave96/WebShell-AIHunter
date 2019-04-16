<!--#include File="inc/Conns.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>在线留言 - <%=List("WebName")%></title>
<link href="css<%=List("fengge")%>/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/img.js"></script>
</head>
<body>
<!-- header-->
<!--#include file="top.asp" -->
<!-- /header-->
<!-- mainbody-->
<div class="banner"><span style="background:url(images<%=List("fengge")%>/banner_a.jpg) center top no-repeat;height:220px;display:block;"></span></div>
<div class="main">
<div class="wrap">
<!--#include File="left.asp" -->
<div class="content_box">
<div class="content_top"><span>您当前位置：<a href="/">首页</a>&nbsp;&gt;&nbsp;在线留言 </span>在线留言</div>
<div class="info_box">
<div class="about"><iframe src="liuyan/book.asp" name="aa" width="95%" height="665" scrolling="No" frameborder="0" id="aa" onload="timer=window.setInterval('IfIframeOnload()',10);"></iframe></div>
</div>
</div>
<div class="blank80"></div>
</div>
<div class="clear"></div>
</div>
<!-- /mainbody-->
<!-- footer-->
<!--#include File="foot.asp" -->
<!-- /footer-->
</body>
</html>