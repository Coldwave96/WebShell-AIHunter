<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_sitelink"
Call check_admin_purview("cms_sitelink")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_sitelink where id ="&rq("id")&"")
	rs("l_name") = rf("l_name")
	rs("l_url") = rf("l_url")
	rs("l_enable") = rf("l_enable")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("站内链接修改成功","cms_sitelink.asp")
End If 	
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">修改站内链接</div>
			<div class="content_b mtb10">
				<form method="post" class="form_auto">
					<%
					Set rs = ado_query("select * from cms_sitelink where id ="&rq("id")&"")
					If Not rs.EOF then
					%>
					<div class="l10">
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_enable">状态</label></div>
								<div class="field">
									<lable class="btn"><input type="radio" name="l_enable" value="1" <%=iif(rs("l_enable") = 1,"checked=""checked""","")%>/> 发布</lable>
									<lable class="btn"><input type="radio" name="l_enable" value="0" <%=iif(rs("l_enable") = 0,"checked=""checked""","")%>/> 暂存</lable>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_name">站内链接名称</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
								 <input id="l_name" class="input" type="text" name="l_name" value="<%=rs("l_name")%>" data-validate="required:必填" size="60"/>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="l_url">站内链接地址</label> <span class="badge bg-dot">必填</span></div>
								<div class="field">
								 <input id="l_url" class="input" type="text" name="l_url" value="<%=rs("l_url")%>" data-validate="required:必填" size="60"/>
								<div class="input-note"> 示例：http://www.baidu.com</div>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改站内链接" />
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
