<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_content"
cid = Int(rq("cid"))
Call check_admin_purview("cms_content")
If Not  inull(rq("del")) Then 
	conn.Execute("delete from cms_content where id ="&rq("del")&"")
	Call alert_href("删除成功","cms_content.asp")
End If
If Not inull(rf("execute")) Then
    Call null_back(rf("method"), "请选择一项操作方式")
    Call null_back(rf("id"), "请至少选中一项")
    Select Case rf("method")
	    Case "delete"
            sql = "delete from cms_content where id in ("&rf("id")&")"
        Case "rec"
            sql = "update cms_content set c_rec = 1 where id in ("&rf("id")&")"
        Case "crec"
            sql = "update cms_content set c_rec = 0 where id in ("&rf("id")&")"
        Case "hot"
            sql = "update cms_content set c_hot = 1 where id in ("&rf("id")&")"
        Case "chot"
            sql = "update cms_content set c_hot = 0 where id in ("&rf("id")&")"
        Case "top"
            sql = "update cms_content set c_top = 1 where id in ("&rf("id")&")"
        Case "ctop"
            sql = "update cms_content set c_top = 0 where id in ("&rf("id")&")"
        Case "bold"
            sql = "update cms_content set c_bold = 'font-weight: bold;' where id in ("&rf("id")&")"
        Case "cbold"
            sql = "update cms_content set c_bold = '' where id in ("&rf("id")&")"
        Case "italic"
            sql = "update cms_content set c_italic = 'font-style: italic;' where id in ("&rf("id")&")"
        Case "citalic"
            sql = "update cms_content set c_italic = '' where id in ("&rf("id")&")"
        Case "ccolor"
			sql = "update cms_content set c_color = '' where id in ("&rf("id")&")"
        Case "enable"
            sql = "update cms_content set c_enable = 1 where id in ("&rf("id")&")"
        Case "cenable"
            sql = "update cms_content set c_enable = 0 where id in ("&rf("id")&")"

    End Select
    conn.Execute(sql)
    Call alert_href("执行成功！","cms_content.asp")
End If
If Not inull(rf("shift")) Then
    Call null_back(rf("shift_target"), "请选择目标频道")
    Call null_back(rf("id"), "请至少选中一项")
    conn.Execute("update cms_content set c_parent = "&rf("shift_target")&" where id in ("&rf("id")&")")
    Call alert_href("转移成功！", "cms_content.asp?"&str_query(""))
End If


isql = "select * from cms_content order by c_order desc , id desc"
If Not inull(rq("search")) Then
	If inull(rq("key")) And rq("cid") = 0 And inull(rq("type")) Then
		Call alert_back("至少选择一个查询条件")
	End If
	isql = "select * from cms_content where true"
	If Not inull(rq("key")) Then
		isql = isql & " and c_name like '%"&rqs("key")&"%'"
	End If
	If rq("cid") <> 0 Then
		isql = isql & " and c_parent in ("&get_field("cms_nav", Int(rq("cid")), "n_child")&")"
	End If
	If Not inull(rq("type")) Then
		Select Case rq("type")
			Case "rec"
				isql = isql & " and c_rec  = 1"
			Case "hot"
				isql = isql & " and c_hot  = 1"
			Case "top"
				isql = isql & " and c_top  = 1"
			Case "picture"
				isql = isql & " and c_picture <> ''"
			Case "slideshow"
				isql = isql & " and c_slide <> ''"
			Case "attach"
				isql = isql & " and c_attach <> ''"
			Case "link"
				isql = isql & " and c_link <> ''"
			Case "enable"
				isql = isql & " and c_enable  = 0"
			Case "bold"
				isql = isql & " and c_bold <> ''"
			Case "italic"
				isql = isql & " and c_italic <> ''"
			Case "color"
				isql = isql & " and c_color <> ''"
		End Select
	End If
	isql = isql & " order by c_order desc , id desc"
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
	$('input[name="shift"]').click(function(){
		if($('select[name="shift_target"]').val() == ''){
			alert('请选择目标频道!');
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
			<div class="content_h pl10">管理信息</div>
			<div class="content_b mtb10">
				<form method="get">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="key">关键词</label></div>
								<div class="field">
									<input id="key" class="input" name="key" type="text" size="60" value="<%=rq("key")%>" />
								</div>
							</div>
						</div>	
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="cid">频道</label></div>
								<div class="field">
									<select id="cid" class="input" name="cid">
										<%=iif(inull(rq("key")),"","<option value=""0"">搜索结果</option>")%>
										<option value="0">不限制</option>
										<%=nav_select_list(0,0,Int(rq("cid")),0)%>
									</select>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="type">属性</label></div>
								<div class="field">
									<select id="type" class="input" name="type">
										<option value="">不限制</option>
										<option <%=iif (rq("type") = "rec","selected=""selected""","")%> value="rec" >推荐</option>
										<option <%=iif (rq("type") = "hot","selected=""selected""","")%> value="hot" >热门</option>
										<option <%=iif (rq("type") = "top","selected=""selected""","")%> value="top" >置顶</option>
										<option <%=iif (rq("type") = "cov","selected=""selected""","")%> value="cov" >封面</option>
										<option <%=iif (rq("type") = "picture","selected=""selected""","")%> value="picture" >带缩略图</option>
										<option <%=iif (rq("type") = "slideshow","selected=""selected""","")%> value="slideshow" >带多图</option>
										<option <%=iif (rq("type") = "attach","selected=""selected""","")%> value="attach" >带附件</option>
										<option <%=iif (rq("type") = "link","selected=""selected""","")%> value="link" >外链</option>
										<option <%=iif (rq("type") = "enable","selected=""selected""","")%> value="enable" >禁用</option>
										<option <%=iif (rq("type") = "bold","selected=""selected""","")%> value="bold" >标题粗体</option>
										<option <%=iif (rq("type") = "italic","selected=""selected""","")%> value="italic" >标题斜体</option>
										<option <%=iif (rq("type") = "color","selected=""selected""","")%> value="color" >标题有色</option>
									</select>
								</div>
							</div>
						</div>					
						<div class="x3">
							<div class="form-group">
								<div class="label"><label>　</label></div>
								<div class="field">
									<input id="search" class="btn bg-red btn-block" name="search" type="submit" value="综合查询" />
								</div>
							</div>
						</div>
						<div class="fc"></div>
					</div>
					<div class="mt10"></div>
				</form>
				<form method="post" class="form_auto">
					<table class="table table-bordered table-striped table-hover">
						<tr align="center">
							<th width="60">选择</th>
							<th width="60">ID</th>
							<th width="60">排序</th>
							<th width=" ">缩略图</th>
							<th>信息标题</th>
							<th width="100">所属频道</th>
							<th>发布日期</th>
							<th>操作</th>
						</tr>
							<%
							page_size = 20
							pager = pageturner_handle(isql, "id", page_size)
							Set rs = pager(0)
							Do While Not rs.EOF
							%>
						<tr align="center">
							<td><input name="id" type="checkbox" value="<%=rs("id")%>" /></td>
							<td><%=rs("id")%></td>
							<td><%=rs("c_order")%></td>
							<td><%=iif(rs("c_picture")="","","<a href="""&rs("c_picture")&"""><img src="""&rs("c_picture")&""" width=""50"" height=""50""></a>")%></td>
							<td align="left"><a style="<%=rs("c_bold")%><%=rs("c_italic")%><%=rs("c_color")%>" href="<%=c_url(rs("id"),rs("id"))%>" target="_blank" class="cut"><%=str_left(rs("c_name"),48,"...")%></a>
							<div>							
							<%=iif(rs("c_hot")=0,"","<span class=""badge bg-dot"" > 热 </span> ")%>
							<%=iif(rs("c_rec")=0,"","<span class=""badge bg-green""> 荐 </span> ")%>
							<%=iif(rs("c_slide")="","","<span class=""badge bg-blue""> 图 </span> ")%>
							<%=iif(rs("c_attach")="","","<span class=""badge bg-yellow""> 附 </span> ")%>
							<%=iif(rs("c_top")=0,"","<span class=""badge bg-black""> 顶 </span> ")%>
							<%=iif(rs("c_bold")="font-weight: bold;","<span class=""badge bg-sub""> 粗 </span> ","")%>
							<%=iif(rs("c_italic")="font-style: italic;","<span class=""badge bg-mix""> 斜 </span> ","")%>
							<%=IIf(Not inull(rs("c_link")), "<span class=""badge bg-main""> 外 </span> ", "")%>
							<%=iif(rs("c_cover")=0,"","<span class=""badge bg-gray""> 封 </span> ")%>
							<%=iif(rs("c_enable")=1,"","<span class=""badge bg-red""> 暂存 </span> ")%>
							</div>
							</td>
							<td><%=get_field("cms_nav",rs("c_parent"),"n_name")%></td>
							<td><%=str_time("y-mm-dd",rs("c_date"))%></td>
							<td><a href="cms_content_edit.asp?id=<%=rs("id")%>" class="btn bg-main"> <span class="fa fa-edit"></span> 编辑</a> <a href="cms_content.asp?del=<%=rs("id")%>" onclick="return confirm('您确定要删除此条信息吗？')" class="btn bg-red"><span class="fa fa-trash"></span> 删除</a></td>
						</tr>
						<%
							rs.MoveNext
							Loop
							rs.Close
							Set rs = Nothing
							%>							
						<tr class="form-auto">
							<td></td>
							<td colspan="7">
								<div class="l10">
									<div class="x6">
										<select class="input" name="method">
											<option value="">请选择操作</option>
											<option value="delete">删除信息</option>
											<option value="rec">设为推荐</option>
											<option value="crec">取消推荐</option>
											<option value="hot">设为热门</option>
											<option value="chot">取消热门</option>
											<option value="top">设为置顶</option>
											<option value="ctop">取消置顶</option>
											<option value="bold">设为加粗</option>
											<option value="cbold">取消加粗</option>
											<option value="italic">设为斜体</option>
											<option value="citalic">取消斜体</option>
											<option value="ccolor">取消颜色</option>
											<option value="enable">设为发布</option>
											<option value="cenable">设为暂存</option>
										</select>
										<input type="button" class="btn bg-red" id="check_all" value="全选" />
										<input type="button" class="btn bg-red form_button" id="check_none" value="不选" />
										<input type="button" class="btn bg-red " id="check_invert" value="反选" />
										<input type="submit" class="btn bg-red" id="execute" name="execute" onclick="return confirm('确定要执行吗')" value="执行" />
										
									</div>
									<div class="x6">
										转移到:<select class="input" name="shift_target">
											<option value="">请选择目标频道</option>
											<%=nav_select_list(0, 0, 0, 0)%>
											</select>
											<input type="submit" class="btn bg-red" name="shift" onclick="return confirm('确定要转移吗')" value="转移" />
									</div>
									<div class="fc"></div>
									
								</div>
							</td>
						</tr>

					</table>
				</form>
				<%=pageturner_show(pager(1),pager(2),pager(3),page_size,5)%> </div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
