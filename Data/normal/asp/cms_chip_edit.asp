<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_chip"
Call check_admin_purview("cms_chip")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_chip where id ="&rq("id")&"")
	rs("c_safe") = rf("c_safe")
	rs("c_name") = rf("c_name")
	rs("c_content") = rf("c_content")
	rs("c_order") = rf("c_order")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("修改成功","cms_chip.asp")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	K.create('textarea[name="c_content"]');
	var editor = K.editor();
});
</script>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">修改碎片</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_chip where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_safe">状态</label></div>
								<div class="field">
									<label class="btn"><input id="c_safe" name="c_safe" type="radio" value="1" <%=iif(rs("c_safe") =1 ,"checked=""checked""","")%>/> 受保护 </label>
									<label class="btn"><input name="c_safe" type="radio" value="0" <%=iif(rs("c_safe") =0 ,"checked=""checked""","")%>/> 不保护 </label>
								</div>
								<div class="input-note">受保护的碎片内容不能删除</div>
							</div>
						</div>
						<div class="x7">
							<div class="form-group">
								<div class="label"><label for="c_name">碎片名称</label></div>
								<div class="field">
									<input id="c_name" class="input" type="text" name="c_name" value="<%=rs("c_name")%>" size="60" data-validate="required:必填"/>
								</div>
								<div class="input-note">请填写碎片名称</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="c_order">排序</label></div>
								<div class="field">
									<input id="c_order" class="input" type="text" name="c_order"  data-validate="required:必填,plusinteger:必须为正整数" value="<%=rs("c_order")%>" />
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="c_content">碎片内容</label></div>
								<div class="field">
									<textarea id="c_content" class="input" name="c_content" row="5"  data-validate="required:必填"><%=str_editor(rs("c_content"))%></textarea>
								</div>
								<div class="input-note">描述碎片内容</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改碎片" />
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
</div>
<!--#include file="inc_footer.asp"-->
</body>
</html>
