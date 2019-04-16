<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_chip"
Call check_admin_purview("cms_chip")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_chip")
	rs.AddNew
	rs("c_safe") = rf("c_safe")
	rs("c_name") = rf("c_name")
	rs("c_content") = rf("c_content")
	rs.Update
	rs("c_order") = rs("id")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("添加成功","cms_chip.asp")
End If 
If Not inull(rq("del")) Then 
	conn.Execute("Delete from cms_chip where id = "&rq("del")&"")
	Call alert_href("删除成功","cms_chip.asp")
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
			<div class="content_h pl10">添加碎片</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_safe">状态</label></div>
								<div class="field">
									<label class="btn"><input id="c_safe" name="c_safe" type="radio" value="1" checked="checked"/> 受保护 </label>
									<label class="btn"><input name="c_safe" type="radio" value="0" /> 不保护 </label>
								</div>
								<div class="input-note">受保护的碎片内容不能删除</div>
							</div>
						</div>
						<div class="x9">
							<div class="form-group">
								<div class="label"><label for="c_name">碎片名称</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="c_name" class="input" type="text" name="c_name" value="" size="60" data-validate="required:必填"/>
								</div>
								<div class="input-note">请填写碎片名称</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="c_content">碎片内容</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<textarea id="c_content" class="input" name="c_content" row="5" data-validate="required:必填"></textarea>
								</div>
								<div class="input-note">描述碎片内容</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加碎片" />
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="content_f"></div>
			<div class="content_h pl10">管理碎片</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">ID</th>
						<th width="60">排序</th>
						<th>状态</th>
						<th>碎片名称</th>
						<th>碎片代码</th>
						<th>操作</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_chip order by c_order asc ,id desc")
					Do While Not rs.EOF
					%>
					<tr align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("c_order")%></td>
						<td><%=iif(rs("c_safe")=1,"<span class=""badge bg-green"">受保护</span>","<span class=""badge bg-green"">不保护</span>")%></td>
						<td><%=rs("c_name")%></td>
						<td>&lt;%=get_chip(<%=rs("id")%>)%&gt;</br><span class="badge bg-gray color-white">碎片代码，请复制到代码处</span></td>
						<td><a class="btn bg-main" href="cms_chip_edit.asp?id=<%=rs("id")%>"><span class="fa fa-edit"></span> 编辑</a>
							<%
							If rs("c_safe") <> 1 then
							%>
							<a class="btn bg-red" href="cms_chip.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此碎片吗？')"><span class="fa fa-trash"></span> 删除</a>
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
			<div class="quote border-red mt10">注：排序数字越小越靠前</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
