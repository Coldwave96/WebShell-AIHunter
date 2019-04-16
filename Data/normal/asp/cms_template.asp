<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_template"
Call check_admin_purview("cms_template")
If Not inull(rf("save")) Then 
Set rs = ado_query("select * from cms_template where t_path = '"&str_trim(rf("t_path"))&"'")
If Not rs.EOF Then
    Call alert_back("已经存在相同模板路径，请更换路径")
End If
Set rs = ado_mquery("select * from cms_template")
rs.AddNew
rs("t_name") = rf("t_name")
rs("t_path") = rf("t_path")
rs("t_logo") = rf("t_logo")
rs.Update
rs.Close
Set rs = Nothing
Call alert_href("添加成功","cms_template.asp")
End If 
If Not inull(rq("del")) Then
    Call non_numeric_back(rq("del"), "参数不合法")
    conn.Execute("delete * from cms_template where id = "&rq("del")&"")
    Call alert_href("删除成功", "cms_template.asp")
End If

If Not inull(rq("skin")) Then
   conn.Execute("update cms_system set s_template='"&str_trim(rq("skin"))&"' where id = 1")
   Call alert_href("电脑模板设置成功，请刷新网站首页查看效果", "cms_template.asp")
End If
If Not inull(rq("mskin")) Then
   conn.Execute("update cms_system set s_mtemplate='"&str_trim(rq("mskin"))&"' where id = 1")
   Call alert_href("手机模板设置成功，请刷新网站首页查看效果", "cms_template.asp")
End If
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	var editor = K.editor({
		allowFileManager : true
	});
	K('#picture').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#t_logo').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#t_logo').val(url);
				editor.hideDialog();
				}
			});
		});
	});
});
</script>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">电脑模板管理</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">排序</th>
						<th width="120">模板名称</th>
						<th>模板路径</th>
						<th>模板LOGO</th>
						<th>状态</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_template where t_type= 1 order by id asc")
					Do While Not rs.EOF
					%>
					<tr align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("t_name")%></td>
						<td><%=rs("t_path")%></td>
						<td><img src="<%=rs("t_logo")%>" width="100" height="40" alt="" /></td>
						<td>
							<a class="btn bg-blue" href="cms_template_edit.asp?id=<%=rs("id")%>"><span class="fa fa-edit"></span> 编辑</a>
							<%
							If rs("t_path") = system_template Then
							    echo "<span class=""color-red"">正在使用</span>"
							Else
							%>
							<a class="btn bg-red" href="cms_template.asp?skin=<%=rs("t_path")%>" onclick="return confirm('确认要使用此电脑模板吗？')"><span class="fa fa-ok"></span> 使用此电脑模板</a> <a class="btn bg-green"  href="cms_template.asp?del=<%=rs("id")%>&path=<%=rs("t_path")%>" onclick="return confirm('确定要删除此模板吗？')"><span class="fa fa-trash"></span> 删除</a>
							<%
							End If
							%>
						</td>
					</tr>
					<%
					rs.MoveNext
					Loop
					rs.Close
					Set rs = Nothing
					%>
				</table>
			</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
