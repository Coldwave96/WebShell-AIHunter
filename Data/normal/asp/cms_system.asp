<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_system"
Call check_admin_purview("cms_system")
If Not inull(rf("save")) Then 
	Set rs = ado_mquery("select * from cms_system where id =1")
	rs("s_mode") = rf("s_mode")
	rs("s_name") = rf("s_name")
	rs("s_sname") = rf("s_sname")
	rs("s_domain") = rf("s_domain")
	rs("s_phone") = rf("s_phone")
	rs("s_weixin") = rf("s_weixin")
	rs("s_qq") = rf("s_qq")
	rs("s_message") = rf("s_message")
	rs("s_service") = rf("s_service")
	rs("s_mservice") = rf("s_mservice")
	rs("s_keyword") = rf("s_keyword")
	rs("s_seoname") = rf("s_seoname")
	rs("s_description") = rf("s_description")
	rs("s_key") = rf("s_key")
	rs("s_copyright") = rf("s_copyright")
	rs("s_mcopyright") = rf("s_mcopyright")
	rs("s_m_prompt") = rf("s_m_prompt")
	rs("s_s2") = rf("s_s2")
	rs("s_s3") = rf("s_s3")
	rs("s_s4") = rf("s_s4")
	rs("s_s5") = rf("s_s5")
	rs("s_s6") = rf("s_s6")
	rs("s_c1") = rf("s_c1")
	rs("s_c2") = rf("s_c2")
	rs("s_c3") = rf("s_c3")
	rs("s_c4") = rf("s_c4")
	rs("s_c5") = rf("s_c5")
	rs.Update
	rs.Close
	Set rs = Nothing
	Call alert_href("保存成功","cms_system.asp")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	K.create('textarea[name="s_m_prompt"]');
	K.create('textarea[name="s_copyright"]');
	K.create('textarea[name="s_mcopyright"]');
	var editor = K.editor();
	var editor = K.editor({
		allowFileManager : true
	});
	K('#picture').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#s_weixin').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#s_weixin').val(url);
				editor.hideDialog();
				}
			});
		});
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
			<div class="content_h pl10">系统设置</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_system where id =1 ")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="s_mode">运行模式</label></div>
								<div class="field">
									<select class="input" name="s_mode">
										<option value="1"<%=iif(rs("s_mode") = 1," selected=""selected""","")%>>动态</option>
										<option value="2"<%=iif(rs("s_mode") = 2," selected=""selected""","")%>>伪静态</option>
									</select>
								</div>
								<div class="input-note badge bg-red">网站运营后不建议切换运行模式。</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="s_name">网站名称</label></div>
								<div class="field">
									<input id="s_name" class="input" type="text" name="s_name" value="<%=rs("s_name")%>" data-validate="required:必填" size="60"/> 
								</div>
								<div class="input-note">请填写网站名称</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="s_sname">网站别名</label></div>
								<div class="field">
									<input id="s_sname" class="input" type="text" name="s_sname" value="<%=rs("s_sname")%>" data-validate="required:必填" size="60"/> 
								</div>
								<div class="input-note">建议用于简单的广告语，配合模板使用</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="s_domain">站点域名</label></div>
								<div class="field">
									<input id="s_domain" class="input" type="text" name="s_domain" value="<%=rs("s_domain")%>" data-validate="required:必填" size="60"/> 
								</div>
								<div class="input-note">请填写域名。示例:http://www.baidu.com</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_weixin">站点微信</label> <span class="badge bg-green" id="picture"> 上传图片 </span></div>
								<div class="field">
									<input id="s_weixin" class="input" type="text" name="s_weixin" value="<%=rs("s_weixin")%>" size="80" data-validate="required:必选"/>
								</div>
								<div class="input-note">请上传二维码</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_qq">站点QQ</label></div>
								<div class="field">
									<input id="s_qq" class="input" type="text" name="s_qq" value="<%=rs("s_qq")%>" size="80" data-validate="required:必填"/>
								</div>
								<div class="input-note">请填写QQ号</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_phone">站点手机</label> </div>
								<div class="field">
									<input id="s_phone" class="input" type="text" name="s_phone" value="<%=rs("s_phone")%>" size="80" data-validate="required:必填"/>
								</div>
								<div class="input-note">请填写手机号</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="s_message">留言设置</label> </div>
								<div class="field">
									<select class="input" id="s_message" name="s_message">
									<option value="0" <%=iif(rs("s_message") =0 ,"selected=""selected""","")%>>需要审核</option>
									<option value="1" <%=iif(rs("s_message") =1 ,"selected=""selected""","")%>>不需审核</option>
									<option value="2" <%=iif(rs("s_message") =2 ,"selected=""selected""","")%>>禁止留言</option>
									</select>
								</div>
								<div class="input-note">请选择留言的控制方式</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_service">电脑端浮动客服</label> </div>
								<div class="field">
									<select class="input" id="s_service" name="s_service">
										<!--<option value="0" <%=iif(rs("s_service") =0 ,"selected=""selected""","")%>>隐藏</option>-->
										<option value="1"<%=iif(rs("s_service") =1 ,"selected=""selected""","")%>>左侧显示</option>
										<option value="2" <%=iif(rs("s_service") =2 ,"selected=""selected""","")%>>右侧显示</option>
									</select>
								</div>
								<div class="input-note">电脑客服浮动位置</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="">栏目显示开关</label> </div>
								<div class="field">
									<div class="form-group x12">
										<div class="field">
											<label class="btn btn-small">网站地图 <input name="s_s2" type="checkbox" value="1" <%=iif(rs("s_s2") = 1,"checked=""checked""","")%>/></label>
											<label class="btn btn-small">访客留言 <input name="s_s3" type="checkbox" value="1" <%=iif(rs("s_s3") = 1,"checked=""checked""","")%>/></label>
											<label class="btn btn-small">设为首页 <input name="s_s4" type="checkbox" value="1" <%=iif(rs("s_s4") = 1,"checked=""checked""","")%>/></label>
											<label class="btn btn-small">加入收藏 <input name="s_s5" type="checkbox" value="1" <%=iif(rs("s_s5") = 1,"checked=""checked""","")%>/></label>
											<label class="btn btn-small">繁體中文 <input name="s_s6" type="checkbox" value="1" <%=iif(rs("s_s6") = 1,"checked=""checked""","")%>/></label>
										</div> 
									</div>
								</div>
								<div class="input-note">网站顶部显示按钮</div>
							</div>
						</div>						
						<div class="fc"></div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_keyword">关键字</label> </div>
								<div class="field">
									<textarea id="s_keyword" class="input" name="s_keyword" rows="5"><%=rs("s_keyword")%></textarea>		
								</div>
								<div class="input-note">请填写关键词</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_seoname">优化标题</label> </div>
								<div class="field">
									<textarea id="s_seoname" class="input" name="s_seoname" rows="5"><%=rs("s_seoname")%></textarea>		
								</div>
								<div class="input-note">优先显示在网站名称前</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="s_description">关键描述</label> </div>
								<div class="field">
									<textarea id="s_description" class="input" name="s_description" rows="5"><%=rs("s_description")%></textarea>									 
								</div>
								<div class="input-note">请填写关键描述</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="s_key">热门关键字</label> </div>
								<div class="field">
									<input id="s_key" class="input" type="text" name="s_key" value="<%=rs("s_key")%>" size="80" data-validate="required:必填"/>
								</div>
								<div class="input-note">每个词之间用"|"分割</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="s_m_prompt">留言提示</label> </div>
								<div class="field">
									<textarea id="s_m_prompt" class="input" name="s_m_prompt" rows="5"><%=str_editor(rs("s_m_prompt"))%></textarea>
								</div>
								<div class="input-note">留言提示</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="s_copyright">电脑版权信息</label> </div>
								<div class="field">
									<textarea id="s_copyright" class="input" name="s_copyright"><%=str_editor(rs("s_copyright"))%></textarea>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label> </div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="保存设置" />
								</div>
							</div>
						</div>
					</div>
				</form>
				<%
				Else 
				echo "暂无此信息"
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
