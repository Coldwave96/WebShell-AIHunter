<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_nav"
Call check_admin_purview("cms_nav")
If Not inull(rq("del")) Then
	Call non_numeric_back(rq("del"),"非法参数")
	Set rs = ado_mquery("select * from cms_nav where id = "&rq("del")&"")
	If rs("n_ifchild") = 1 Then
		Call alert_back("此频道含有子级不能直接删除！")
	Else
        rs.Delete
        rs.Update
        rs.Close
        Set rs = Nothing
		conn.Execute("delete from cms_content where c_parent = "&rq("del")&"")
		Call update_nav()
		Call alert_href("删除成功", "cms_nav.asp")
	End If
End If
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">管理频道</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">ID</th>
						<th width="60">排序</th>
						<th>频道名称</th>
						<th>电脑频道模型/详情模型</th>
						<th>详情操作</th>
						<th>操作</th>
					</tr>
					<%=nav_view_list(0,0)%>
				</table>
				<div class="quote border-red mt10">注：排序数字越小越靠前<br>受保护的频道一般都是首页调用了数据，不能直接删除，如果确定要删除，请先修改去掉保护。</div>
			</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
