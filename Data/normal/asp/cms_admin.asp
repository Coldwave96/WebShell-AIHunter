<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_admin"
Call check_admin_purview("cms_admin")
If Not inull(rf("save")) Then
	Call null_back(rf("a_name"),"请填写用户名")
	Set rs = ado_mquery("select * from cms_admin")
	If rf("a_name") = rs("a_name") Then
		Call alert_back("已有同名用户存在请更换！")
	End If  
	rs.Update
	rs.Close
	Set rs = Nothing
	Set rs = ado_mquery("select * from cms_admin")
	rs.AddNew
	rs("a_enable") = rf("a_enable")
	rs("a_name") = rf("a_name")
	rs("a_password") = md5(rf("a_password"))
	rs("a_tname") = rf("a_tname")
	rs("a_penname") = rf("a_penname")
	rs("a_des") = rf("a_des")
	rs("a_purview") = rf("a_purview")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("新用户添加成功","cms_admin.asp")
End If 	
If Not inull(rq("del")) Then 
	conn.Execute("delete from cms_admin where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_admin.asp")
End If 
If Not inull(rq("pwd")) Then 
	Call non_numeric_back(rq("pwd"),"参数非法")
	conn.Execute("update cms_admin set a_password = '"&md5("123456")&"' where id = "&rq("pwd")&"")
	Call alert_href("密码重置成功","cms_admin.asp")
End If 
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">管理用户</div>
			<div class="content_b mtb10">
				<form method="post" class="form-auto">
					<table class="table table-bordered table-striped table-hover">
						<tr>
						<th width="60">ID</th>
						<th width="60">状态</th>
						<th>用户名</th>
						<th>真实姓名</th>
						<th>笔名</th>
						<th>描述</th>
						<th>操作</th>
						</tr>
						<%
						Set rs = ado_query("select * from cms_admin order by id desc")
						Do While Not rs.EOF
						%>
						<tr>
							<td align="center"><%=rs("id")%></td>
							<td align="center"><%=iif(rs("a_enable") = 1,"启用","<span class=""badge"">禁用</span>")%></td>
							<td align="center"><%=rs("a_name")%></td>
							<td align="center"><%=rs("a_tname")%></td>
							<td align="center"><%=rs("a_penname")%></td>
							<td align="center"><%=rs("a_des")%></td>
							<td align="center"><a class="btn bg-blue" href="cms_admin_edit.asp?id=<%=rs("id")%>"> <span class="fa fa-edit"></span> 编辑</a> <a class="btn bg-main" href="cms_admin.asp?pwd=<%=rs("id")%>" onclick="return confirm('确定要把此用户的密码重置成123456吗？')"><span class="fa fa-key"> </span> 重置密码</a> <a class="btn bg-red" <%=iif(rs("id") = 1,"style=""display:none;""","")%> href="cms_admin.asp?del=<%=rs("id")%>" onclick="return confirm('确定要删除此用户吗？')"><span class="fa fa-trash"></span> 删除</a></td>
						</tr>
						<%
						rs.MoveNext
						Loop
						rs.Close
						Set rs = Nothing
						%>	
					</table>
				</form>
			</div>
			<div class="content_f">	
				<div class="quote border-red mb10">ID为"1"的用户不能删除、禁用</div>
			</div>			
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
