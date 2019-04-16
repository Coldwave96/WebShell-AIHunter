<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_banner"
Call check_admin_purview("cms_banner")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_banner where id ="&rq("id")&"")
	rs("b_enable") = rf("b_enable")
	rs("b_parent") = rf("b_parent")
	rs("b_name") = rf("b_name")
	rs("b_content") = rf("b_content")
	rs("b_url") = rf("b_url")
	rs("b_picture") = rf("b_picture")
	If rf("b_order") = 0 Then
		rs("b_order") = rs("id")
	Else
		rs("b_order") = rf("b_order")
	End If
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("修改成功","cms_banner.asp")
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
			<div class="content_h pl10">修改幻灯片</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_banner where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="b_enable">状态</label></div>
								<div class="field">
									<label class="btn"><input id="b_enable" name="b_enable" type="radio" value="1" <%=iif(rs("b_enable") = 1,"checked=""checked""","")%>/>生效</label>
									<label class="btn"><input name="b_enable" type="radio" value="0" <%=iif(rs("b_enable") = 0,"checked=""checked""","")%>/>暂存</label>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="b_picture">幻灯图片</label> <span class="badge bg-dot cp" id="picture">上传</span></div>
								<div class="field">
									<input id="b_picture" class="input" name="b_picture" type="text" size="60" value="<%=rs("b_picture")%>" data-validate="required:必选"/>
									<div class="input-note">电脑端建议1920*500的图片</div>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="b_name">名称</label></div>
								<div class="field">
									<input id="b_name" class="input" name="b_name" type="text" size="60" value="<%=rs("b_name")%>" />
								</div>
								<div class="input-note">填写后调用</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="b_url">链接</label></div>
								<div class="field">
									<input id="b_url" class="input" name="b_url" type="text" size="60" value="<%=rs("b_url")%>" />
								</div>
								<div class="input-note">示例:http://www.baidu.com</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="form-group">
							<div class="label"><label for="b_content">内容</label></div>
							<div class="field">
								<textarea id="b_content" class="input" name="b_content" row="5" /><%=str_editor(rs("b_content"))%></textarea>
							</div>
							<div class="input-note">填写后调用</div>
						</div>
						<div class="form-group">
							<div class="label"><label for="b_order">排序</label></div>
							<div class="field">
								<input id="b_order" class="input" type="text" name="b_order" value="<%=rs("b_order")%>" data-validate="required:必填,plusinteger:必须为正整数" size="20"/>
							</div>
						</div>
						<div class="form-group">
						<div class="label"><label></label></div>
						<div class="field">
							<input id="save" class="btn bg-dot" name="save" type="submit" value="修改幻灯片" />
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
