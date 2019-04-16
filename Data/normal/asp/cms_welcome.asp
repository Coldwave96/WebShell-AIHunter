<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_welcome"
%>
</head>
<body>
<div id="content_main">
	<!--#include file="inc_header.asp"-->
	<div id="content">
		<div id="left"><!--#include file="inc_left.asp"--></div>
		<div id="right">
			<div class="content_h pl10">网站统计</div>
			<div class="content_b mtb10">
				<table class="table table-bordered table-striped table-hover">
					<tr>
						<th>频道</th>
						<th>信息</th>
						<th>幻灯</th>
						<th>留言</th>
						<th>链接</th>
						<th>内链</th>
						<th>碎片</th>
					</tr>
					<tr align="center">
						<td><%=get_count("cms_nav")%></td>
						<td><%=get_count("cms_content")%></td>
						<td><%=get_count("cms_banner")%></td>
						<td><%=get_count("cms_message")%></td>
						<td><%=get_count("cms_link")%></td>
						<td><%=get_count("cms_sitelink")%></td>
						<td><%=get_count("cms_chip")%></td>
					</tr>
				</table>
			</div>
			<div class="content_f"></div>
			<div class="line-big">
				<div class="x12">
					<div class="content_h pl10">最新留言</div>
					<div class="content_b mtb10">
						<table class="table table-bordered table-striped table-hover">
							<tr>
								<th>ID</th>
								<th>留言人</th>
								<th>电话</th>
								<th>留言日期</th>
								<th>审核</th>
								<th>操作</th>
							</tr>
							<%
							sql = "select top 3 *  from cms_message order by m_date desc,id desc"
							page_size = 20
							pager = pageturner_handle(sql, "id", page_size)
							Set rs = pager(0)
							Do While Not rs.EOF				
							%>
							<tr align="center">
								<td><%=rs("id")%></td>
								<td><%=rs("m_name")%></td>
								<td><%=rs("m_tel")%></td>
								<td><%=str_time("y-m-d",rs("m_date"))%></td>
								<td><%=iif((rs("m_enable") = 1),"<span class=""bg-red badge"">未审核</span>","<span class=""bg-red badge"">审核</span>")%></td>
								<td><a href="cms_message_answer.asp?id=<%=rs("id")%>" class="btn bg-main"> <span class="fa fa-eye"></span> 查看</a></td>
							</tr>
							<%
							rs.MoveNext
							Loop
							rs.Close
							Set rs = Nothing
							%>
						</table>
					</div>
					<div class="content_f"></div>
				</div>
			</div>
			<div class="content_h pl10">说明</div>
			<div class="content_b mtb10 plr10">		
				<p class="tl">说明</p>
				<p class="tl">1.此版本为功能完整的商业版，您可以放心使用，有任何问题请联系技术。</p>
				<p class="tl">2.收费版本包含三套电脑模板和三套手机模板。</p>
				<p>官网：<a href="http://huakecms.com" class="badge bg-red">http://www.huakecms.com</a></p>
				<p>QQ：<a href="http://wpa.qq.com/msgrd?v=3&uin=804255562&site=qq&menu=yes"><span class="icon-qq"> 技术咨询 </span> <span class="badge bg-dot">804255562</span></a></p>
				<p>电话：13903172710</p>
				<p>	微信：13903172710 </p>
				<img src="images/weixin.png" alt="" width="200" height="200">
			</div>
			<div class="content_f"></div>
 		</div>
	</div>
	
<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
