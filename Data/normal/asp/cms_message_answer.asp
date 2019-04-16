<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_message"
Call check_admin_purview("cms_message")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_message where id ="&rq("id")&"")
	rs("m_enable") = rf("m_enable")
	rs("m_answer") = rf("m_answer")	
	rs("m_cdate") = Now()	
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("保存成功","cms_message.asp")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	K.create('textarea[name="m_answer"]');
});
</script>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">回复留言</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_message where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<table class="table table-border table-hover">
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_name">留言人</label></div></td>
							<td><%=rs("m_name")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_tel">电话</label></div></td>
							<td><%=rs("m_tel")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_qq">QQ</label></div></td>
							<td><%=rs("m_qq")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_email">电子邮件</label></div></td>
							<td><%=rs("m_email")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_address">地址</label></div></td>
							<td><%=rs("m_address")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_cname">公司名称</label></div></td>
							<td><%=rs("m_cname")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_content">留言内容</label></div></td>
							<td><%=rs("m_content")%></td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_enable">审核留言</label></div></td>
							<td><input id="g_enable" name="m_enable"type="radio" value="1" <%=iif((rs("m_enable") = 1),"checked=""checked""","")%>/> 已审核
						<input name="m_enable" type="radio"  value="0" <%=iif((rs("m_enable") = 0),"checked=""checked""","")%>/> 未审核</td>
						</tr>
						<tr>
							<td width="100" align="right"><div class="label"><label for="m_answer">回复内容</label></div></td>
							<td><textarea id="m_answer" class="input" name="m_answer"><%=rs("m_answer")%></textarea></td>
						</tr>
						<tr>
							<td></td>
							<td><input id="save" class="btn bg-dot" type="submit" name="save" value="保存" /></td>
						</tr>
					</table>
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
