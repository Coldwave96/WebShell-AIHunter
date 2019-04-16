<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_banner"
Call check_admin_purview("cms_banner")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_banner")
	rs.AddNew
	rs("b_enable") = rf("b_enable")
	rs("b_name") = rf("b_name")
	rs("b_parent") = 0
	rs("b_url") = rf("b_url")
	rs("b_picture") = rf("b_picture")
	rs("b_content") = rf("b_content")
	rs.Update
	rs("b_order") = rs("id")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("幻灯片添加成功","cms_banner.asp")
End If 	
If Not  inull(rq("del")) Then 
	conn.Execute("delete from cms_banner where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_banner.asp")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	var editor = K.editor({
		allowFileManager : true
	});
	K.create('textarea[name="b_content"]');
	K('#picture').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#b_picture').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#b_picture').val(url);
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
			<div class="content_h pl10">添加新幻灯片</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="b_enable">状态</label></div>
								<div class="field">
									<label class="btn"><input id="b_enable" name="b_enable" type="radio" value="1" checked="checked"/> 生效 </label>
									<label class="btn"><input name="b_enable" type="radio" value="0" /> 暂存 </label>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="b_picture">幻灯图片</label> <span class="badge bg-green cp" id="picture">上传图片</span></div>
								<div class="field">
									<input id="b_picture" class="input" name="b_picture" type="text" size="60" value="" data-validate="required:必选"/>
									<div class="input-note">电脑端建议1920*500的图片</div>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="b_name">名称</label></div>
								<div class="field">
									<input id="b_name" class="input" name="b_name" type="text" size="60" value="" />
								</div>
								<div class="input-note">填写后调用</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="b_url">链接</label></div>
								<div class="field">
									<input id="b_url" class="input" name="b_url" type="text" size="60" value="" />
								</div>
								<div class="input-note">示例:http://www.baidu.com</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="form-group">
							<div class="label"><label for="b_content">内容</label></div>
							<div class="field">
								<textarea id="b_content" class="input" name="b_content" row="5" /></textarea>
							</div>
							<div class="input-note">填写后调用</div>
						</div>
						<div class="form-group">
						<div class="label"><label></label></div>
						<div class="field">
							<input id="save" class="btn bg-dot" name="save" type="submit" value="添加新幻灯" />
						</div>
					</div>
					</div>
				</form>
			</div>
			<div class="content_f"></div>
			<div class="content_h pl10">管理幻灯片</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">ID</th>
						<th width="60">排序</th>
						<th>是否启用</th>
						<th>手机端/PC端</th>
						<th>幻灯名称</th>
						<th>幻灯地址</th>
						<th>幻灯图片</th>
						<th>操作</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_banner order by b_order desc,id desc")
					Do While Not rs.EOF
					%>
					<tr>
						<td align="center"><%=rs("id")%></td>
						<td align="center"><%=rs("b_order")%></td>
						<td align="center"><%=iif(rs("b_enable") =1,"<span class=""bg-red badge"">启用</span>","<span class=""bg-green badge"">禁用</span>")%></td>
						<td align="center"><%=iif(rs("b_parent") =1,"<span class=""fa fa-mobile color-green""></span> 手机端","<span class=""fa fa-desktop color-blue""></span> 电脑端")%></td>
						<td align="center"><%=rs("b_name")%></td>
						 
						<td align="center"><%=rs("b_url")%></td>
						<td align="center"><a href="<%=rs("b_picture")%>" target="_blank"><img src="<%=rs("b_picture")%>" width="90" height="30" alt="<%=rs("b_name")%>" /></a></td>
						<td align="center"><a class="btn bg-main" href="cms_banner_edit.asp?id=<%=rs("id")%>"><span class="fa fa-edit"></span> 编辑</a> <a href="cms_banner.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此幻灯吗？')" class="btn bg-red"><span class="fa fa-trash"></span> 删除</a></td>
					</tr>
					<%
					rs.MoveNext
					Loop
					rs.Close
					Set rs = Nothing
					%>
				</table>
			</div>
			<div class="quote border-red mt10">注：排序数字越小越靠前</div>
			<div class="content_f"></div>			
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
