<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="inc.asp"-->
<%
current_navigation = "cms_content"
Call check_admin_purview("cms_content")
Call non_numeric_back(rq("id"),"参数非法")
If Not inull(rf("save")) Then 
Set rs = ado_mquery("select * from cms_content where id ="&rq("id")&"")
rs("c_name") = rf("c_name")
rs("c_color") = iif((inull(rf("c_color"))),"","color: "&rf("c_color")&";")
rs("c_bold") = rf("c_bold")
rs("c_italic") =rf("c_italic")
rs("c_parent") = rf("c_parent")
rs("c_picture") = rf("c_picture")
rs("c_scontent") = rf("c_scontent")
rs("c_mscontent") = rf("c_mscontent")
rs("c_content") = rf("c_content")
rs("c_mcontent") = rf("c_mcontent")
rs("c_slide") = rf("c_slide")
rs("c_video") = rf("c_video")
rs("c_attach") = rf("c_attach")
rs("c_seoname") = rf("c_seoname")
rs("c_keyword") = rf("c_keyword")
rs("c_description") = rf("c_description")
rs("c_1") = rf("c_1")
rs("c_2") = rf("c_2")
rs("c_3") = rf("c_3")
rs("c_4") = rf("c_4")
rs("c_5") = rf("c_5")
rs("c_source") = rf("c_source")
rs("c_hot") = iif((rf("c_hot") = 1),1,0)
rs("c_rec") = iif((rf("c_rec") = 1),1,0)
rs("c_top") = iif((rf("c_top") = 1),1,0)
rs("c_writer") = rf("c_writer")
rs("c_hits") = rf("c_hits")
rs("c_order") = rf("c_order")
rs("c_link") = rf("c_link")
rs("c_cover") = rf("c_cover")
rs("c_target") = rf("c_target")
rs("c_enable") = rf("c_enable")
rs("c_date") = rf("c_date")
rs("c_mdate") = Now()
rs.Update
rs.Close
Set rs = Nothing
Call alert_href("修改成功","cms_content.asp")
End If 
%>
<script type="text/javascript">
KindEditor.ready(function(K) {
	K.create('textarea[name="c_scontent"]');
	K.create('textarea[name="c_mscontent"]');
	K.create('textarea[name="c_mcontent"]');
	K.create('textarea[name="c_content"]');
	var editor = K.editor();
	var colorpicker;
	K('#color').bind('click', function(e) {
			e.stopPropagation();
			if (colorpicker) {
				colorpicker.remove();
				colorpicker = null;
				return;
			}
			var colorpickerPos = K('#color').pos();
			colorpicker = K.colorpicker({
				x : colorpickerPos.x,
				y : colorpickerPos.y + K('#color').height(),
				z : 19811214,
				selectedColor : 'default',
				noColor : '无颜色',
				click : function(color) {
					K('#c_color').val(color);
					colorpicker.remove();
					colorpicker = null;
				}
			});
		});
	K('#picture').click(function() {
		editor.loadPlugin('image', function() {
			editor.plugin.imageDialog({
			imageUrl : K('#c_picture').val(),
			clickFn : function(url, title, width, height, border, align) {
				K('#c_picture').val(url);
				editor.hideDialog();
				}
			});
		});
	});
	K('#attach').click(function() {
		editor.loadPlugin('insertfile', function() {
			editor.plugin.fileDialog({
			imageUrl : K('#c_attach').val(),  
			clickFn : function(url, title) {
				K('#c_attach').val(url);
				editor.hideDialog();
				}
			});
		});
	});
	K('#slide').click(function() {
		editor.loadPlugin('multiimage', function() {
			editor.plugin.multiImageDialog({
				clickFn : function(urlList) {
					var tem_val = '';
					var tem_s = '';
					K.each(urlList, function(i, data) {
						tem_val = tem_val + tem_s + data.url;
						tem_s = '|';
					});
					K('#c_slide').val(tem_val);
					editor.hideDialog();
				}
			});
		});
	});
	K('#video').click(function() {
		editor.loadPlugin('multiimage', function() {
			editor.plugin.multiImageDialog({
				clickFn : function(urlList) {
					var tem_val = '';
					var tem_s = '';
					K.each(urlList, function(i, data) {
						tem_val = tem_val + tem_s + data.url;
						tem_s = '|';
					});
					K('#c_video').val(tem_val);
					editor.hideDialog();
				}
			});
		});
	});
	laydate.render({
  		elem: '#c_date' //指定元素
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
			<div class="content_h pl10">修改信息</div>
			<div class="content_b mtb10">
				<%
				Set rs = ado_query("select * from cms_content where id ="&rq("id")&"")
				If Not rs.EOF Then 
				%>
				<form method="post">
					<div class="l10">
						<div class="x8">
							<div class="form-group">
								<div class="label"><label for="c_name">内容标题</label><span class="badge bg-dot cp">必填</span></div>
								<div class="field">
									<input id="c_name" class="input" type="text" name="c_name" value="<%=rs("c_name")%>" placeholder="请填写内容标题" data-validate="required:必填"/>
								</div>
								<div class="input-note">请填写内容标题</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="c_color">颜色</label> <span class="badge bg-dot cp" id="color">选色</span></div>
								<div class="field">
									<input id="c_color" class="input" type="text" name="c_color" value="<%=left(right(rs("c_color"),8),7)%>" />
								</div>
								<div class="input-note">选择设置标题颜色</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="i_ifrec">属性</label></div>
								<div class="field">
									<label class="btn"><input name="c_bold" type="checkbox" value="font-weight: bold;" <%=iif((rs("c_bold") = "font-weight: bold;"),"checked=""checked""","")%> /> 粗体 </label>
									<label class="btn"><input name="c_italic" type="checkbox" value="font-style: italic;" <%=iif((rs("c_italic") = "font-weight: italic;"),"checked=""checked""","")%>/> 斜体 </label>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_parent">所属频道</label></div>
								<div class="field">
									<select id="c_parent" class="input" name="c_parent" data-validate="required:必选">
										<option value="">请选择</option>
										<%=nav_select_list(0,0,rs("c_parent"),0)%>
									</select>
									<div class="input-note">请选择此信息的所属频道</div>
								</div>
							</div>
						</div>
						<div class="x6">
							<div class="form-group">
								<div class="label"><label for="c_picture">缩略图</label> <span class="badge bg-green cp" id="picture">上传缩略图</span></div>
								<div class="field">
									<input id="c_picture" class="input" type="text" name="c_picture" value="<%=rs("c_picture")%>" />
								</div>
								<div class="input-note">为了美观，建议使用正方形图或者同频道的缩略图比例一致。</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="c_scontent">电脑详细内容</label></div>
								<div class="field">
									<textarea id="c_scontent" class="input" name="c_scontent" row="5"/><%=str_editor(rs("c_scontent"))%></textarea>
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="name"></label></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改信息" />
								</div>
							</div>
						</div>
						<div class="x12">
							<div class="quote border-green mb10">以下为选填内容</div>
						</div>
						<div class="x12">
							<div class="form-group">
								<div class="label"><label for="c_content">电脑简短内容</label></div>
								<div class="field">
									<textarea id="c_content" class="input" name="c_content" row="5" /><%=rs("c_content")%></textarea>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_slide">多图</label> <span class="badge bg-green cp" id="slide" >批量上传</span></div>
								<div class="field">
									<textarea id="c_slide" class="input" name="c_slide"  row="5"><%=rs("c_slide")%></textarea>
									<div class="input-note">每张图之间用"|"分割</div>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_video">视频</label></div>
								<div class="field">
									<textarea id="c_video" class="input" name="c_video"  row="5"><%=rs("c_video")%></textarea>
									<div class="input-note">请填写外部视频代码</div>
								</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_attach">附件</label> <span class="badge bg-green cp" id="attach" >选择</span></div>
								<div class="field">
									<textarea id="c_attach" class="input" name="c_attach"  row="5"><%=rs("c_attach")%></textarea>
									<div class="input-note">多个附件地址间用“|”分割</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_seoname">优化标题</label></div>
								<div class="field">
									<textarea id="c_seoname" class="input" name="c_seoname"  row="5"><%=rs("c_seoname")%></textarea>
								</div>
								<div class="input-note">请填写优化标题</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_keyword">关键字</label></div>
								<div class="field">
									<textarea id="c_keyword" class="input" name="c_keyword"  row="5"><%=rs("c_keyword")%></textarea>
								</div>
								<div class="input-note">请填写关键字</div>
							</div>
						</div>
						<div class="x4">
							<div class="form-group">
								<div class="label"><label for="c_description">关键描述</label></div>
								<div class="field">
									<textarea id="c_description" class="input" name="c_description"  row="5"><%=rs("c_description")%></textarea>
								</div>
								<div class="input-note">请填写关键描述</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_1"><%=system_c1%></label> </div>
								<div class="field">
									<input class="input" name="c_1" id="c_1" type="text" value="<%=rs("c_1")%>" />
								</div>
								<div class="input-note">请填写<%=system_c1%></div>
							</div>
						</div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_2"><%=system_c2%></label> </div>
								<div class="field">
									<input class="input" name="c_2" id="c_2" type="text" value="<%=rs("c_2")%>" />
								</div>
								<div class="input-note">请填写<%=system_c2%></div>
							</div>
						</div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_3"><%=system_c3%></label> </div>
								<div class="field">
									<input class="input" name="c_3" id="c_3" type="text" value="<%=rs("c_3")%>" />
								</div>
								<div class="input-note">请填写<%=system_c3%></div>
							</div>
						</div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_4"><%=system_c4%></label> </div>
								<div class="field">
									<input class="input" name="c_4" id="c_4" type="text" value="<%=rs("c_4")%>" />
								</div>
								<div class="input-note">请填写<%=system_c4%></div>
							</div>
						</div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_5"><%=system_c5%></label> </div>
								<div class="field">
									<input class="input" name="c_5" id="c_5" type="text" value="<%=rs("c_5")%>" />
								</div>
								<div class="input-note">请填写<%=system_c5%></div>
							</div>
						</div>
						<div class="xx20">
							<div class="form-group">
								<div class="label"><label for="c_source">来源</label></div>
								<div class="field">
									<input id="c_source" class="input" name="c_source" type="text" size="60" value="<%=rs("c_source")%>" />
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="i_ifrec">属性</label></div>
								<div class="field">
									<label class="btn"><input name="c_rec" type="checkbox" value="1" <%=iif(rs("c_rec") = 1,"checked=""checked""","")%>/> 推荐 </label>
									<label class="btn"><input name="c_hot" type="checkbox" value="1" <%=iif(rs("c_hot") = 1,"checked=""checked""","")%>/> 热门 </label>
									<label class="btn"><input name="c_top" type="checkbox" value="1" <%=iif(rs("c_top") = 1,"checked=""checked""","")%>/> 置顶 </label>
								</div>
							</div>
						</div>						
					    <div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_writer">作者</label></div>
								<div class="field">
									<input id="c_writer" class="input" type="text" name="c_writer" value="<%=rs("c_writer")%>"  size="100"/>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_hits">访问量</label></div>
								<div class="field">
									<input id="c_hits" class="input" name="c_hits" type="text" size="60" value="<%=rs("c_hits")%>" data-validate="required:必填,plusinteger:必须为正整数" />
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_order">排序</label></div>
								<div class="field">
									<input id="c_order" class="input" name="c_order" type="text" size="60" value="<%=rs("c_order")%>" data-validate="required:必填,plusinteger:必须为正整数" />
									<div class="input-note">填写0自动识别为信息ID</div>
								</div>
							</div>
						</div>
						<div class="fc"></div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_link">链接地址</label></div>
								<div class="field">
									<input id="c_link" class="input" type="text" name="c_link" value="<%=rs("c_link")%>"/>
									<div class="input-note">外链请用http://开始</div>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="c_target">打开方式</label></div>
								<div class="field"> 
									<select id="c_target" class="input" name="c_target">
										<option value="_self" <%=iif(rs("c_target") = "_self","selected=""selected""","")%>>原窗口</option>
										<option value="_blank" <%=iif(rs("c_target") = "_blank","selected=""selected""","")%>> 新窗口</option>
									</select>
								</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="c_cover">封面</label></div>
								<div class="field"> 
									<select id="c_cover" class="input" name="c_cover">
										<option value="0" <%=iif(rs("c_cover")=0,"selected=""selected""","")%>>不显示</option>
										<option value="1" <%=iif(rs("c_cover")=1,"selected=""selected""","")%>>显示</option>
									</select>
								</div>
								<div class="input-note">首页幻灯片显示</div>
							</div>
						</div>
						<div class="x2">
							<div class="form-group">
								<div class="label"><label for="c_enable">信息状态</label></div>
								<div class="field"> 
									<select id="c_enable" class="input" name="c_enable">
										<option value="1" <%=iif(rs("c_enable")=1,"selected=""selected""","")%>>信息发布</option>
										<option value="0" <%=iif(rs("c_enable")=0,"selected=""selected""","")%>>信息暂存</option>
									</select>
									<div class="input-note">暂存状态不可访问</div>
								</div>
							</div>
						</div>
						<div class="x3">
							<div class="form-group">
								<div class="label"><label for="c_enable">添加日期</label></div>
								<div class="field">
								<input id="c_date" class="input laydate-icon" name="c_date" type="text" size="60" readonly="readonly" value="<%=str_time("y-mm-dd",rs("c_date"))%>" onclick="laydate({istime: true, format: 'YYYY/MM/DD hh:mm:ss'})" data-validate="required:必填" />
							</div>
							<div class="input-note">请选择日期</div>	 
							</div>
						</div>						
						<div class="fc"></div>
						<div class="12">
							<div class="form-group">
								<div class="label"></div>
								<div class="field">
									<input id="save" class="btn bg-dot" type="submit" name="save" value="修改新信息" />
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