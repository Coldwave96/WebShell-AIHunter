<!--#include File="inc/Conn.asp" -->
<%
 Set OO00OO0OO=Response:Set OO00OO0O0=Request:Set OO00OO0O0O=Session:Set OO00OO00OO=Application:Set OO00OO0O00=Server
If OO00OO0O0O("AdminName")="" and OO00OO0O0O("adminpass")="" Then
OO00OO0OO.Redirect "Error.asp?id=005"
Else
Sql="Select * from flash where ID="&OO00OO0O0("ID")
Set Rs1=OO00OO0O00.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn, (47 * 70 - 3289), (47 * 70 - 3289)
if rs1.bof or rs1.eof then
OO00OO0OO.Write"<center>暂无产幻灯片<a href='admin_flash_add.asp'><font color=red>添加幻灯片!</a></center>"
OO00OO0OO.end
else
end if
OO00OO0OO.Write(vbCrLf)
OO00OO0OO.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO0OO.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO0OO.Write("<head>" & vbCrLf)
OO00OO0OO.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO0OO.Write("<title>修改数据</title>" & vbCrLf)
OO00OO0OO.Write("    <link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO0OO.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO0OO.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO0OO.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO0OO.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO0OO.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO0OO.Write("	<script>" & vbCrLf)
OO00OO0OO.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0OO.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO0OO.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO0OO.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO0OO.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO0OO.Write("				allowFileManager : true," & vbCrLf)
OO00OO0OO.Write("				afterCreate : function() {" & vbCrLf)
OO00OO0OO.Write("					var self = this;" & vbCrLf)
OO00OO0OO.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO0OO.Write("						self.sync();" & vbCrLf)
OO00OO0OO.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0OO.Write("					});" & vbCrLf)
OO00OO0OO.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO0OO.Write("						self.sync();" & vbCrLf)
OO00OO0OO.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0OO.Write("					});" & vbCrLf)
OO00OO0OO.Write("				}" & vbCrLf)
OO00OO0OO.Write("			});" & vbCrLf)
OO00OO0OO.Write("			prettyPrint();" & vbCrLf)
OO00OO0OO.Write("		});" & vbCrLf)
OO00OO0OO.Write("	</script>" & vbCrLf)
OO00OO0OO.Write("		<script>" & vbCrLf)
OO00OO0OO.Write("KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0OO.Write("  var editor = K.editor({" & vbCrLf)
OO00OO0OO.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OO00OO0OO.Write("  });" & vbCrLf)
OO00OO0OO.Write("  K('#filemanager').click(function() {" & vbCrLf)
OO00OO0OO.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OO00OO0OO.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OO00OO0OO.Write("              viewType : 'VIEW'," & vbCrLf)
OO00OO0OO.Write("              dirName : 'image'," & vbCrLf)
OO00OO0OO.Write("              clickFn : function(url, title) {" & vbCrLf)
OO00OO0OO.Write("                  K('#url').val(url);" & vbCrLf)
OO00OO0OO.Write("                  editor.hideDialog();" & vbCrLf)
OO00OO0OO.Write("              }" & vbCrLf)
OO00OO0OO.Write("          });" & vbCrLf)
OO00OO0OO.Write("      });" & vbCrLf)
OO00OO0OO.Write("  });" & vbCrLf)
OO00OO0OO.Write("});" & vbCrLf)
OO00OO0OO.Write("</script>" & vbCrLf)
OO00OO0OO.Write("</head>" & vbCrLf)
OO00OO0OO.Write("<body>" & vbCrLf)
OO00OO0OO.Write("            <div class=""box_top"">" & vbCrLf)
OO00OO0OO.Write("              <div align=""center""> 修改")
OO00OO0OO.Write rs1("flashname")
OO00OO0OO.Write("</div>" & vbCrLf)
OO00OO0OO.Write("            </div>" & vbCrLf)
OO00OO0OO.Write("            <div class=""box_center"">" & vbCrLf)
OO00OO0OO.Write("  <form id=""myform"" name=""myform""  method=""post"" action=""?action=edit&id=")
OO00OO0OO.Write OO00OO0O0("id")
OO00OO0OO.Write(""">" & vbCrLf)
OO00OO0OO.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO0OO.Write("    <tr>" & vbCrLf)
OO00OO0OO.Write("      <td width=""20%""><div align=""right""><font color=""#FF0000"">*</font>幻灯片名称：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td width=""45%""><input name=""flashname"" class=""input-text lh30"" type=""text"" id=""flashname"" value=""")
OO00OO0OO.Write rs1("flashname")
OO00OO0OO.Write(""" size=""40"" maxlength=""150""></td>" & vbCrLf)
OO00OO0OO.Write("      <td width=""35%"" rowspan=""4""><a href=""")
OO00OO0OO.Write rs1("pic")
OO00OO0OO.Write(""" target=""_blank""><img src=""")
OO00OO0OO.Write rs1("pic")
OO00OO0OO.Write(""" alt=""点击放大"" width=""270"" height=""200"" border=""0""></a></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr>" & vbCrLf)
OO00OO0OO.Write("      <td><div align=""right""><font color=""#FF0000"">*</font>图片：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td><input name=""pic"" type=""text"" class=""input-text lh30""  id=""url"" value=""")
OO00OO0OO.Write rs1("pic")
OO00OO0OO.Write(""" size=""50"" maxlength=""150"">" & vbCrLf)
OO00OO0OO.Write("      <input name=""button2"" type=""button"" id=""filemanager"" class=""input-text lh30"" value=""选取已上传图片"" /></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr>" & vbCrLf)
OO00OO0OO.Write("      <td><div align=""right"">重新上传新图片：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td><iframe src=""upload.asp?action=simg"" class=""input-text lh30"" width=""350"" height=""25"" frameborder=""0"" scrolling=""no""></iframe></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr>" & vbCrLf)
OO00OO0OO.Write("      <td><div align=""right"">添加人：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td><input name=""user"" type=""text"" class=""input-text lh30"" id=""user"" value=""")
OO00OO0OO.Write rs1("user")
OO00OO0OO.Write(""" size=""22"" maxlength=""22""></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr> " & vbCrLf)
OO00OO0OO.Write("      <td> <div align=""right"">链接：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td colspan=""4""><input name=""lianjie"" type=""text"" class=""input-text lh30"" id=""lianjie"" value=""")
OO00OO0OO.Write rs1("lianjie")
OO00OO0OO.Write(""" size=""50"" maxlength=""80"" /></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr> " & vbCrLf)
OO00OO0OO.Write("      <td><div align=""right"">发布时间：</div></td>" & vbCrLf)
OO00OO0OO.Write("      <td colspan=""4""><span class=""td"">" & vbCrLf)
OO00OO0OO.Write("        <input name=""sj"" type=""text"" class=""input-text lh30"" id=""sj"" value=""")
OO00OO0OO.Write rs1("sj")
OO00OO0OO.Write(""" size=""22"" maxlength=""22""  />" & vbCrLf)
OO00OO0OO.Write("        <input name=button type=button class=""input-text lh30"" onClick=""document.myform.sj.value='")
OO00OO0OO.Write (date())
OO00OO0OO.Write("'"" value=""设为当前时间"">" & vbCrLf)
OO00OO0OO.Write("      (请输入正确的日期格式)</span></td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("    <tr> " & vbCrLf)
OO00OO0OO.Write("      <td>&nbsp;</td>" & vbCrLf)
OO00OO0OO.Write("      <td><input type=""submit"" class=""btn btn82 btn_save2"" name=""Submit"" value=""确 定""></td>" & vbCrLf)
OO00OO0OO.Write("      <td>&nbsp;</td>" & vbCrLf)
OO00OO0OO.Write("    </tr>" & vbCrLf)
OO00OO0OO.Write("</table>  " & vbCrLf)
OO00OO0OO.Write("</form>" & vbCrLf)
OO00OO0OO.Write(" " & vbCrLf)
OO00OO0OO.Write("</body>" & vbCrLf)
OO00OO0OO.Write("</html>" & vbCrLf)
Rs1.Close
Set Rs1=nothing
end if
OO00OO0OO.Write(vbCrLf)
OO00OO0OO.Write("<!--修改 -->" & vbCrLf)
if OO00OO0O0("action")="edit" then
if OO00OO0O0("id")="" then
OO00OO0OO.write "参数不正确<a href=admin_flash_edit.asp?id="&OO00OO0O0("id")&">返回</a>"
OO00OO0OO.end
end if
flashname=trim(OO00OO0O0("flashname"))
user=trim(OO00OO0O0("user"))
pic=trim(OO00OO0O0("pic"))
lianjie=trim(OO00OO0O0("lianjie"))
if lianjie="" then
lianjie="#"
end if
sj=trim(OO00OO0O0("sj"))
Set Rs=OO00OO0O00.Createobject("Adodb.Recordset")
Sql="Select * from flash Where ID="&OO00OO0O0("ID")
Rs.open Sql,Conn, (47 * 70 - 3289), (96 * 13 - 1245)
if rs.eof and rs.bof then
OO00OO0OO.Write "<script>alert('参数不正确，ID值不存在！');history.go(-1);</script>"
OO00OO0OO.End()
end if
if flashname=""  then
OO00OO0OO.Write("<script language=javascript>alert('幻灯片标题不能为空!');history.go(-1)</script>")
OO00OO0OO.end
end if
if pic=""  then
OO00OO0OO.Write("<script language=javascript>alert('幻灯片 图片 不能为空!');history.go(-1)</script>")
OO00OO0OO.end
end if
rs("flashname")=flashname
rs("pic")=pic
rs("user")=user
rs("lianjie")=lianjie
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OO00OO0OO.Redirect "admin_flash.asp"
OO00OO0OO.end
end if
%>