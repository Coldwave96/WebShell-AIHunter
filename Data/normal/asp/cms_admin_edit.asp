<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_admin"
Call check_admin_purview("cms_admin")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_admin where id ="&rq("id")&"")
	rs("a_enable") = iif(rs("id")=1,1,rf("a_enable"))
	rs("a_name") = rf("a_name")
	rs("a_password") = iif(rf("a_password") = "",rf("password"),md5(rf("a_password")))
	If rf("a_password") <> rf("a_cpassword") Then 
		Call alert_back("两次密码不一致,请重新输入！")
	End If 
	rs("a_tname") = rf("a_tname")
	rs("a_penname") = rf("a_penname")
	rs("a_des") = rf("a_des")
	If rq("id") <> 1 Then
	rs("a_purview") = rf("a_purview")
	End If
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("修改成功","cms_admin.asp")
End If 
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">修改用户</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_admin where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="a_enable">状态</label></div>
								<div class="field">
									<div class="btn"><input type="radio" name="a_enable" value="1" <%=iif(rs("a_enable")=1,"checked=""checked""","")%>/> 启用</div>
									<div class="btn"><input type="radio" name="a_enable" value="0" <%=iif(rs("a_enable")=0,"checked=""checked""","")%>/> 禁用</div>
								</div>
							</div>
						</div>						
						<div class="x9">
							<div class="form-group">
								<div class="label"><label for="a_name">用户名</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
									<input id="a_name" class="input" type="text" name="a_name" value="<%=rs("a_name")%>" data-validate="required:必填" size="100"/> 
								</div>
							</div>
						</div>						
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="a_password">新的密码</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
									<input id="password" type="hidden" name="password" value="<%=rs("a_password")%>" />
									<input id="a_password" class="input" type="password" name="a_password" value=""  size="100"/> 
								</div>
							</div>
						</div>						
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="a_cpassword">确认密码</label></div>
								<div class="field">
									<input id="a_cpassword" class="input" type="password" name="a_cpassword" value="" data-validate="repeat#a_password:两次输入的密码不一致" size="100"/> 
								</div>
							</div>
						</div>	
						<div class="fc"></div>		
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="a_tname">真实姓名</label></div>
								<div class="field">
									<input id="a_tname" class="input" type="text" name="a_tname" value="<%=rs("a_tname")%>" size="100"/>
								</div>
							</div>
						</div>				
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="a_penname">笔名</label></div>
								<div class="field">
									<input id="a_penname" class="input" type="text" name="a_penname" value="<%=rs("a_penname")%>" size="100"/>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="a_des">描述</label></div>
								<div class="field">
									<input id="a_des" class="input" type="text" name="a_des" value="<%=rs("a_des")%>" size="100"/>
								</div>
							</div>
						</div>
						<div class="fc"></div>			
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改用户" />
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
