<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_sitelink"
Call check_admin_purview("cms_sitelink")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_sitelink")
	rs.AddNew
	rs("l_enable") = rf("l_enable")
	rs("l_name") = rf("l_name")
	rs("l_url") = rf("l_url")
	rs("l_date") = Now()
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("新站内链接添加成功","cms_sitelink.asp")
End If 	
If Not inull(rf("execute")) Then
    Call null_back(rf("method"), "请选择一项操作方式")
    Call null_back(rf("id"), "请至少选中一项")
    Select Case rf("method")
        Case "delete"
            sql = "delete from cms_sitelink where id in ("&rf("id")&")"
    End Select
    conn.Execute(sql)
    Call alert_href("执行成功！","cms_sitelink.asp")
End If

If Not  inull(rq("del")) Then 
	conn.Execute("delete from cms_sitelink where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_sitelink.asp")
End If
%>
<script type="text/javascript">
$(function(){
 	$('#check_all').click(function(){
		$('input[name="id"]:checkbox').attr('checked',true);
	});
	$('#check_none').click(function(){
		$('input[name="id"]:checkbox').attr('checked',false);
	});
	$('#check_invert').click(function(){
		$('input[name="id"]:checkbox').each(function(){
			this.checked = !this.checked;
		});
	});
	$('input[name="execute"]').click(function(){
		if($('select[name="method"]').val() == ''){
			alert('请选择一项操作方式!');
			return false;
		};	
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
			<div class="content_h pl10">添加站内链接</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_enable">状态</label></div>
								<div class="field">
									<lable class="btn"><input type="radio" name="l_enable" value="1" checked="checked"/> 发布</lable>
									<lable class="btn"><input type="radio" name="l_enable" value="0"/> 暂存</lable>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_name">站内链接名称</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
								 <input id="l_name" class="input" type="text" name="l_name" value="" data-validate="required:必填" size="60"/>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_url">站内链接地址</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
								 <input id="l_url" class="input" type="text" name="l_url" value="" data-validate="required:必填" size="60"/>
								<div class="input-note"> 示例：http://www.baidu.com</div>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加站内链接" />
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
			<div class="content_f"></div>
			<div class="content_h pl10">管理站内链接</div>
			<div class="content_b mtb10">
				<form class="form-auto" method="post">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th width="60">选择</th>
						<th width="60">ID</th>
						<th>状态</th>
						<th>链接名称</th>
						<th>链接地址</th>
						<th>操作</th>
					</tr>
					<%
					Set rs = ado_query("select * from cms_sitelink order by id desc")
					Do While Not rs.EOF
					%>
					<tr>
						<td align="center"><input name="id" type="checkbox" value="<%=rs("id")%>" /></td>
						<td align="center"><%=rs("id")%></td>
						<td align="center"><%=iif(rs("l_enable")= 0,"<span class=""badge bg-dot"">暂存</span>","<span class=""badge bg-green"">发布</span>")%></td>
						<td align="center"><%=rs("l_name")%></td>
						<td align="center"><%=rs("l_url")%></td>
						<td align="center"><a class="btn bg-main" href="cms_sitelink_edit.asp?id=<%=rs("id")%>"> <span class="fa fa-edit"></span> 编辑</a> <a class="btn bg-red" href="cms_sitelink.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此站内链接吗？')"><span class="fa fa-trash"></span> 删除</a></td>
					</tr>
					<%
					rs.MoveNext
					Loop
					rs.Close
					Set rs = Nothing
					%>
					<tr>
						<td></td>
						<td colspan="5">
							<input type="button" class="btn bg-red" id="check_all" value="全选" />
							<input type="button" class="btn bg-red" id="check_none" value="不选" />
							<input type="button" class="btn bg-red" id="check_invert" value="反选" />
							<select class="input" name="method">
								<option value="">请选择操作</option>
								<option value="delete">删除选中</option>
							</select>
							<input type="submit" class="btn bg-red" id="execute" name="execute" onclick="return confirm('确定要执行吗')" value="执行" /></td>
					</tr>
				</table>
				</form>
			</div>
			<div class="content_f"></div>			
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
