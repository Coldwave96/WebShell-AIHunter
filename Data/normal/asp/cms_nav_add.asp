<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_nav_add"
Call check_admin_purview("cms_nav_add")
If Not inull(rf("save")) Then 
	set rs = ado_query("select * from cms_nav where n_name = '"&str_trim(rf("n_name"))&"'")
	If not rs.eof then
		call alert_back("已存在相同的频道名称，请更换")
	End if
	set rs = ado_query("select * from cms_nav where n_nname = '"&str_trim(rf("n_nname"))&"'")
	If not rs.eof then
		call alert_back("已存在相同的导航名称，请更换")
	End if
	Set rs = ado_mquery("select * from cms_nav")
	rs.AddNew
	rs("n_safe") = rf("n_safe")
	rs("n_parent") = rf("n_parent")
	rs("n_name") = rf("n_name")
	rs("n_aname") = rf("n_aname")
	rs("n_nname") = rf("n_nname")
	rs("n_ifnav") = rf("n_ifnav")
	rs("n_model") = rf("n_model")
	rs("n_dmodel") = rf("n_dmodel")
	rs("n_imodel") = rf("n_imodel")
	rs("n_idmodel") = rf("n_idmodel")
	rs("n_content") = rf("n_content")
	rs("n_scontent") = rf("n_scontent")
	rs("n_mcontent") = rf("n_mcontent")
	rs("n_mscontent") = rf("n_mscontent")
	rs("n_seoname") = rf("n_seoname")
	rs("n_keyword") = rf("n_keyword")
	rs("n_description") = rf("n_description")
	rs("n_page") = rf("n_page")
	rs("n_sname") = rf("n_sname")
	rs("n_cover") = rf("n_cover")
	rs("n_picture") = rf("n_picture")
	rs("n_link") = rf("n_link")
	rs("n_afname") = rf("n_afname")
	rs("n_target") = rf("n_target")
	rs("n_enable") = rf("n_enable")
	rs("n_date") = Now()
	rs.Update
	rs("n_fname") = rs("id")
	rs("n_order") = iif(rf("n_order")=0,rs("id"),rf("n_order"))
	rs.Update
	rs.Close
	Set rs = Nothing
	Call update_nav()
	Call alert_href("新频道添加成功","cms_nav_add.asp?cid="&rf("n_parent")&"")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	K.create('textarea[name="n_scontent"]');
	K.create('textarea[name="n_content"]');
	K.create('textarea[name="n_mscontent"]');
	K.create('textarea[name="n_mcontent"]');
	var editor = K.editor();
	K('#cover').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#n_cover').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#n_cover').val(url);
				editor.hideDialog();
				}
			});
		});
	});
	K('#npicture').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#n_picture').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#n_picture').val(url);
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
			<div class="content_h pl10">添加频道</div>
			<div class="content_b mtb10">
				<form method="post">
					<div class="l10">
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_parent">所属频道</label><span class="badge bg-dot cp">必选</span></div>
								<div class="field">
									<select id="n_parent" class="input" name="n_parent">
										<option value="0">作为主频道</option>
										<%=nav_select_list(0,0,0,0)%>
									</select>
									<div class="input-note">请选择上级频道</div>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_name">频道名称</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="n_name" class="input" name="n_name" type="text" size="60" onChange="n_aname.value=($('#n_name').toPinyin());n_nname.value=$('#n_name').val();" onKeydown="n_aname.value=($('#n_name').toPinyin());n_nname.value=$('#n_name').val();" value="" data-validate="required:必填" />
								</div>
								<div class="input-note">请填写频道名称</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_aname">静态名称</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input name="n_aname" type="text" class="input" id="n_aname" size="60" data-validate="required:必填"/>
									<div class="input-note">静态名称不能是纯数字</div>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_nname">导航名称</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="n_nname" class="input" type="text" name="n_nname" value="" data-validate="required:必填" size="60"/>
								</div>
								<div class="input-note">可与频道名称不一样</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_ifnav">导航显示</label></div>
								<div class="field">
									<select name="n_ifnav" id="n_ifnav" class="input">
										<option value="1" selected="selected">显示</option>
										<option value="0">隐藏</option>
									</select>
									<div class="input-note">航显示方式</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="n_mmodel">电脑频道模型</label></div>
								<div class="field">
									<div class="l4">
										<div class="x6">
											<select id="n_mmodel" class="input" name="n_mmodel" onChange="n_model.value=this.value">
												<option value="">--选择或填写--</option>
												<%=nav_model_select_list("",1)%>
											</select>
										</div>
										<div class="x6"><input type="text" id="n_model" class="input" name="n_model" value="n_simple_s.asp" size="40" data-validate="required:必填"/></div>
										<div class="fc"></div>
									</div>
									<div class="input-note">选择或填写电脑版频道模型</div>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="n_ddmodel">电脑内容模型</label></div>
								<div class="field">
									<div class="l4">
										<div class="x6">
											<select id="n_ddmodel" class="input" name="n_ddmodel" onChange="n_dmodel.value=this.value">
												<option value="">--选择或填写--</option>
												<%=nav_dmodel_select_list("",1)%>
											</select> 
										</div>
										<div class="x6"><input type="text" id="n_dmodel" class="input" name="n_dmodel" value="n_normal.asp" size="40" data-validate="required:必填"/></div>
										<div class="fc"></div>
									</div>
									<div class="input-note">选择或填写电脑版详情模型</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="n_seoname">优化标题</label></div>
								<div class="field">
									<textarea id="n_seoname" class="input" name="n_seoname" row="5"></textarea>
									<div class="input-note">请填写优化标题</div>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="n_keyword">关键字</label></div>
								<div class="field">
									<textarea id="n_keyword" class="input" name="n_keyword" row="5"></textarea>
									<div class="input-note">请填写关键字</div>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="n_description">关键描述</label></div>
								<div class="field">
									<textarea id="n_description" class="input" name="n_description" row="5"></textarea>
									<div class="input-note">请填写关键描述</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for=""></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加新频道" />
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="border-green quote  mb10">以下为选填内容</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="n_scontent">电脑详细内容</label></div>
								<div class="field">
									<textarea id="n_scontent" class="input" name="n_scontent" row="5" ></textarea>
									<div class="input-note">多用于单页显示</div>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="n_content">电脑简短内容</label></div>
								<div class="field">
									<textarea id="n_content" class="input" name="n_content" row="5"></textarea>
									<div class="input-note">多用于首页显示部分内容</div>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_sname">简短名称</label></div>
								<div class="field">
									<div class="l4">
										<div class="x6">
											<select class="input" onChange="n_sname.value=this.value">
												<option value="">常用短名</option>
												<option value="文章">文章</option>
												<option value="产品">产品</option>
												<option value="图片">图片</option>
												<option value="视频">视频</option>
											</select>
											<div class="input-note">推荐/热门XX 下一XX</div>
										</div>
										<div class="x6">
											<input name="n_sname" type="text" class="input" value="文章" size="40"/>
										</div>
										<div class="fc"></div>
									</div>
								</div>
							</div>
						</div>						
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_page">分页</label></div>
								<div class="field">
									<input id="n_page" class="input" type="text" name="n_page" value="20"  data-validate="required:必填,plusinteger:必须为正整数" size="20"/>
									<div class="input-note">每页显示多少个详情</div>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_order">排序</label></div>
								<div class="field">
									<input id="n_order" class="input" type="text" name="n_order" value="0"  data-validate="required:必填,plusinteger:必须为正整数" size="20"/>
									<div class="input-note">填写0自动识别频道ID</div>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_cover">封面</label> <span id="cover" class="badge bg-green cp">选择图片</span></div>
								<div class="field">
									<input name="n_cover" type="text" class="input" id="n_cover" size="60"/>
									<div class="input-note">显示在导航下</div>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_picture">缩略图</label> <span id="npicture" class="badge bg-green cp">选择图片</span></div>
								<div class="field">
									<input name="n_picture" type="text" class="input" id="n_picture" size="60"/>
									<div class="input-note">配合模板使用</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_link">链接地址</label></div>
								<div class="field">
									<input name="n_link" type="text" class="input" id="n_link" size="60"/>
									<div class="input-note">外链请用http://开始，填写后会跳转</div>
								</div>
							</div>
						</div>
						
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_afname">频道别名</label></div>
								<div class="field">
									<input id="n_afname" class="input" name="n_afname" type="text" size="60" value="" />
									<div class="input-note">一般填写英文配合模板显示</div>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_target">打开方式</label></div>
								<div class="field">
									<select name="n_target" id="n_target" class="input">
										<option value="_blank">新窗口</option>
										<option value="_self" selected="selected">原窗口</option>
									</select>
								</div>
							</div>
						</div> 
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="n_safe">是否保护</label></div>
								<div class="field">
									<select name="n_safe" id="n_safe" class="input">
										<option value="0" selected="selected">不保护</option>
										<option value="1">受保护</option>
									</select>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="n_enbale">频道启用</label></div>
								<div class="field">
									<select id="n_enable" class="input" name="n_enable">
										<option value="1">启用</option>
										<option value="0">禁用</option>
									</select>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="添加新频道" />
								</div>
							</div>
						</div> 
					</div>
				</form>
			</div>
			<div class="content_f"></div>
		</div>
		<div class="fc"></div>
	</div>
	<!--#include file="inc_footer.asp"-->
</div>
</body>
</html>
