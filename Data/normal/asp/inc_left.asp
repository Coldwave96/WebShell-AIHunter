<div id="side_bar">
	<dl>
		<dt><span class="fa fa-pencil"></span> 信息管理</dt>
		<dd><a<%=iif(current_navigation = "cms_content_add"," class=""current_navigation""","")%> href="cms_content_add.asp">添加信息</a></dd>
		<dd><a<%=iif(current_navigation = "cms_content"," class=""current_navigation""","")%> href="cms_content.asp?cid=0">管理信息</a></dd>
		<dd><a<%=iif(current_navigation = "cms_nav_add"," class=""current_navigation""","")%> href="cms_nav_add.asp">添加频道</a></dd>
		<dd><a<%=iif(current_navigation = "cms_nav"," class=""current_navigation""","")%> href="cms_nav.asp">管理频道</a></dd>
		<dd><a<%=iif(current_navigation = "cms_banner"," class=""current_navigation""","")%> href="cms_banner.asp">管理幻灯</a></dd>
		<dd><a<%=iif(current_navigation = "cms_service"," class=""current_navigation""","")%> href="cms_service.asp">管理客服</a></dd>
		<dd><a<%=iif(current_navigation = "cms_chip"," class=""current_navigation""","")%> href="cms_chip.asp">管理碎片</a></dd>		
		<dt><span class="fa fa-cog"></span> 交互管理</dt>
		<dd><a<%=iif(current_navigation = "cms_message"," class=""current_navigation""","")%> href="cms_message.asp">管理留言</a></dd>
		<dd><a<%=iif(current_navigation = "cms_link"," class=""current_navigation""","")%> href="cms_link.asp">管理链接</a></dd>
		<dt><span class="fa fa-globe"></span> 基本设置</dt>
		<dd><a<%=iif(current_navigation = "cms_system"," class=""current_navigation""","")%> href="cms_system.asp">系统设置</a></dd>
		<dd><a<%=iif(current_navigation = "cms_admin"," class=""current_navigation""","")%> href="cms_admin.asp">管理用户</a></dd>
		<dd><a<%=iif(current_navigation = "cms_template"," class=""current_navigation""","")%> href="cms_template.asp">模板管理</a></dd>	
		<dd><a<%=iif(current_navigation = "cms_welcome"," class=""current_navigation""","")%> href="cms_welcome.asp">后台首页</a></dd>
	</dl>
</div>
