<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_service"
Call check_admin_purview("cms_service")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_service where id="&rq("id")&"")
	rs("s_launch") = rf("s_launch")
	rs("s_name") = rf("s_name")
	rs("s_num") = rf("s_num")
	rs("s_type") = rf("s_type")
	rs("s_order") =rf("s_order")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("客服修改成功","cms_service.asp")
End If 
%>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">修改客服</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_service where id ="&rq("id")&"") 
				If Not rs.EOF Then 
				%>
				<form method="post">
				<form method="post">
					<div class="l10">
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_launch">状态</label></div>
								<div class="field">
									<label class="btn"><input class="form_radio" type="radio" name="s_launch" value="1" <%=iif(rs("s_launch") = 1,"checked=""checked""","")%>/> 启用 </label>
									<label class="btn"><input class="form_radio" type="radio" name="s_launch" value="0" <%=iif(rs("s_launch") = 0,"checked=""checked""","")%>/> 禁用 </label>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_name">名称</label></div>
								<div class="field">
									<input id="s_name" class="input" type="text" name="s_name" value="<%=rs("s_name")%>" size="60"/>
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
										<option value="0" <%=iif(rs("s_type")=0,"selected=""selected""","")%>>QQ</option>
										<option value="1" <%=iif(rs("s_type")=1,"selected=""selected""","")%>>微信</option>
									</select>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="s_num">社交号码</label> <span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="s_num" class="input" type="text" name="s_num" value="<%=rs("s_num")%>" data-validate="required:必填" size="60"/>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="s_order">排序</label></div>
								<div class="field">
									<input id="s_order" class="input" type="text" name="s_order" value="<%=rs("s_order")%>" data-validate="required:必填,plusinteger:必须为正整数" />
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改客服" />
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
