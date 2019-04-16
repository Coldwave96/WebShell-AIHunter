<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_template"
Call check_admin_purview("cms_template")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
Set rs = ado_query("select * from cms_template where t_path = '"&str_trim(rf("t_path"))&"' and id <> "&rq("id")&"")
If Not rs.EOF Then
    Call alert_back("已经存在相同模板名称或相同路径，请更换名称或路径")
End If
Call null_back(rf("t_path"),"请填写模板路径")
Set rs = ado_mquery("select * from cms_template where id="&rq("id")&"")
rs("t_name") = rf("t_name")
rs("t_name") = rf("t_name")
rs("t_logo") = rf("t_logo")
rs.Update
rs.Close
Set rs = Nothing
Call alert_href("修改成功","cms_template.asp")
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
			<div class="content_h pl10">模板修改</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_template where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="t_name">模板名称</label> <span class="badge bg-dot ">必填</span> <span class="input-note">请填写模板名称</span></div>
								<div class="field">
									<input id="t_name" class="input" type="text" name="t_name" value="<%=rs("t_name")%>"  data-validate="required:必填" size="60"/>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="t_path">模板路径</label> <span class="badge bg-dot ">必填</span></div>
								<div class="field">
									<input id="t_path" class="input" type="text" name="t_path" value="<%=rs("t_path")%>"  data-validate="required:必填" size="60"/>
								</div>
								<div class="input-note">请填写模板路径</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="t_logo">模板LOGO</label> <span class="badge bg-green" id="picture"> 上传图片 </span></div>
								<div class="field">
									<input id="t_logo" class="input" type="text" name="t_logo" value="<%=rs("t_logo")%>" data-validate="required:必选" size="80"/>
								</div>
								<div class="input-note">请选择模板LOGO</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改模板" />
								</div>
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
