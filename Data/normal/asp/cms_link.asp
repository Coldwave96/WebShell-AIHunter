<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_link"
Call check_admin_purview("cms_link")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_link")
	rs.AddNew
	rs("l_enable") = rf("l_enable")
	rs("l_name") = rf("l_name")
	rs("l_url") = rf("l_url")
	rs("l_picture") = rf("l_picture")
	rs.Update
	rs("l_order") = rs("id")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("添加成功","cms_link.asp")
End If 	
If Not inull(rq("del")) Then 
	conn.Execute("delete from cms_link where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_link.asp")
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
			imageUrl : K('#l_picture').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#l_picture').val(url);
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
			<div class="content_h pl10">添加链接</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="l_enable">状态</label></div>
								<div class="field">
									<lable class="btn"><input type="radio" name="l_enable" value="1" checked="checked"/> 发布</lable>
									<lable class="btn"><input type="radio" name="l_enable" value="0"/> 暂存</lable>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="l_name">链接名称</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="l_name" class="input" type="text" name="l_name" value="" data-validate="required:必填" size="40"/> 
								</div>
								<div class="input-note">请填写链接名称</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="l_url">链接地址</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="l_url" class="input" type="text" name="l_url" value="" data-validate="required:必填" size="40"/> 
									<div class="input-note">例如：http://www.baidu.com</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_picture">链接图片</label> <span class="badge bg-green cp" id="picture" > 上传图片</span></div>
								<div class="field">
									<input id="l_picture" class="input" type="text" name="l_picture" value="" size="60"/>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label> </div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加新链接" />
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="content_f"></div>
			<div class="content_h pl10">管理链接</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th>ID</th>
						<th>排序</th>
						<th>状态</th>
						<th>链接名称</th>
						<th>链接地址</th>
						<th>操作</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_link order by l_order desc,id desc")
					Do While Not rs.EOF
					%>
					<tr align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("l_order")%></td>
						<td><%=iif(rs("l_enable")=1,"<span class=""badge bg-dot"">发布</span>","<span class=""badge bg-green"">暂存</span>")%></td>
						<td><%=rs("l_name")%></td>
						<td><%=rs("l_url")%></td>
						<td><a class="btn bg-main" href="cms_link_edit.asp?id=<%=rs("id")%>"> <span class="fa fa-edit"></span> 编辑</a> <a class="btn bg-red" href="cms_link.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此链接吗？')"><span class="fa fa-trash"></span> 删除</a></td>
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
