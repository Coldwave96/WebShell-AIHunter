<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_service"
Call check_admin_purview("cms_service")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_service")
	rs.AddNew
	rs("s_launch") = rf("s_launch")
	rs("s_name") = rf("s_name")
	rs("s_type") = rf("s_type")
	rs("s_num") = rf("s_num")
	rs.Update
	rs("s_order") = rs("id")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("客服添加成功","cms_service.asp")
End If 
If Not inull(rq("del")) Then 
	conn.Execute("delete from cms_service where id = "&rq("del")&"")
	Call alert_href("删除成功","cms_service.asp")
End If 	
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">添加客服</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_launch">状态</label></div>
								<div class="field">
									<label class="btn"><input class="form_radio" type="radio" name="s_launch" value="1" checked="checked"/> 启用 </label>
									<label class="btn"><input class="form_radio" type="radio" name="s_launch" value="0" /> 禁用 </label>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_name">名称</label></div>
								<div class="field">
									<input id="s_name" class="input" type="text" name="s_name" value="" size="60"/>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_type">社交类型</label> <span class="badge bg-dot cp">必选</span></div>
								<div class="field">
									<select name="s_type" class="input" data-validate="required:必选">
										<option value="" selected="selected">--请选择--</option>
										<option value="0">QQ</option>
										<option value="1">微信</option>
									</select>
								</div>
								<div class="input-note">请选择社交类型</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_num">社交号码</label> <span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="s_num" class="input" type="text" name="s_num" value="" data-validate="required:必填" size="60"/>
								</div>
								<div class="input-note">请填写社交号码</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加新客服" />
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="content_f"></div>
			<div class="content_h pl10">管理客服</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">ID</th>
						<th width="60">排序</th>
						<th>名称</th>
						<th>状态</th>
						<th>社交类型</th>
						<th>社交号码</th>
						<th>操作</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_service order by s_order asc,id desc")
					Do While Not rs.EOF
					%>
					<tr align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("s_order")%></td>
						<td><%=rs("s_name")%></td>
						<td><%=iif(rs("s_launch")=1,"<span class=""badge bg-green"">启用</span>","<span class=""badge bg-red"">禁用</span>")%></td>
						<td><%=iif(rs("s_type")=0,"QQ","微信")%></td>
						<td><%=rs("s_num")%></td>
						<td width="200"><a class="btn bg-main" href="cms_service_edit.asp?id=<%=rs("id")%>"><span class="fa fa-edit"></span> 编辑</a> <a class="btn bg-red" href="cms_service.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此QQ吗？')"><span class="fa fa-trash"></span> 删除</a></td>
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
