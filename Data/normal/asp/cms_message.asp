<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_message"
Call check_admin_purview("cms_message")
If Not inull(rf("execute")) Then
    Call null_back(rf("method"), "请选择一项操作方式")
    Call null_back(rf("id"), "请至少选中一项")
    Select Case rf("method")
        Case "delete"
            sql = "delete from cms_message where id in ("&rf("id")&")"
    End Select
    conn.Execute(sql)
    Call alert_href("执行成功！","cms_message.asp")
End If

If Not  inull(rq("del")) Then 
	conn.Execute("delete from cms_message where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_message.asp")
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
			<div class="content_h pl10">管理留言</div>
			<div class="content_b mtb10">
				<form method="post" class="form-auto">
					<table class="table table-bordered table-hover">
					<tr>
						<th width="60">选择</th>
						<th width="60">排序</th>
						<th>留言人</th>
						<th>电话</th>
						<th>QQ</th>
						<th>微信</th>
						<th>留言日期</th>
						<th>审核状态</th>
						<th>回复</th>
					</tr>
					<%
					sql = "select * from cms_message order by m_date desc,id desc"
					page_size = 20
					pager = pageturner_handle(sql, "id", page_size)
					Set rs = pager(0)
					Do While Not rs.EOF				
					%>
					<tr align="center">
						<td><input name="id" type="checkbox" value="<%=rs("id")%>" /></td>
						<td><%=rs("id")%></td>
						<td><%=rs("m_name")%></td>
						<td><%=rs("m_tel")%></td>
						<td><%=rs("m_qq")%></td>
						<td><%=rs("m_weixin")%></td>
						<td><%=str_time("y-m-d",rs("m_date"))%></td>
						<td><%=iif(rs("m_enable") =0,"<span class=""bg-red badge"">未审核</span>","<span class=""bg-green badge"">审核</span>")%></td>
						<td><a href="cms_message_answer.asp?id=<%=rs("id")%>" class="btn bg-blue"><span class="fa fa-comment"></span> 详情/回复</a> <a class="btn bg-red" href="cms_message.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此留言吗？')"><span class="fa fa-trash"></span> 删除</a></td>
					</tr>
					<%
					rs.MoveNext
					Loop
					rs.Close
					Set rs = Nothing
					%>
					<tr>
						<td></td>
						<td colspan="8">
							<div class="l10">
								<div class="x12">
									<input type="button" class="btn bg-red" id="check_all" value="全选" />
									<input type="button" class="btn bg-red" id="check_none" value="不选" />
									<input type="button" class="btn bg-red" id="check_invert" value="反选" />
									<select class="input" name="method">
										<option value="">请选择操作</option>
										<option value="delete">删除选中</option>
									</select>
									<input type="submit" class="btn bg-red" id="execute" name="execute" onclick="return confirm('确定要执行吗')" value="执行" />
								</div>
								<div class="fc"></div>
							</div>
						</td>
					</tr>					
				</table>
				</form>
				<%=pageturner_show(pager(1),pager(2),pager(3),page_size,5)%>
			</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
