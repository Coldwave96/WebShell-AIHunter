<!--#include File="inc/Conn.asp" -->
<%
 Set OOO00O=Response:Set OOO000=Request:Set OOO0OO=Session:Set OOO0O=Application:Set OOO0O0=Server
If OOO0OO("AdminName")="" and OOO0OO("adminpass")="" Then
OOO00O.Redirect "Error.asp?id=005"
Else
Sql="Select * from honor where ID="&OOO000("ID")
Set Rs1=OOO0O0.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn, (63 * 67 - 4220), (63 * 67 - 4220)
if rs1.bof or rs1.eof then
OOO00O.Write"<center>暂无产荣誉<a href='admin_honor_add.asp'><font color=red>添加荣誉!</a></center>"
OOO00O.end
else
end if
OOO00O.Write(vbCrLf)
OOO00O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OOO00O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OOO00O.Write("<head>" & vbCrLf)
OOO00O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OOO00O.Write("<title>修改数据</title>" & vbCrLf)
OOO00O.Write("    <link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OOO00O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OOO00O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OOO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OOO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OOO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OOO00O.Write("	<script>" & vbCrLf)
OOO00O.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OOO00O.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OOO00O.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OOO00O.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OOO00O.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OOO00O.Write("				allowFileManager : true," & vbCrLf)
OOO00O.Write("				afterCreate : function() {" & vbCrLf)
OOO00O.Write("					var self = this;" & vbCrLf)
OOO00O.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OOO00O.Write("						self.sync();" & vbCrLf)
OOO00O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OOO00O.Write("					});" & vbCrLf)
OOO00O.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OOO00O.Write("						self.sync();" & vbCrLf)
OOO00O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OOO00O.Write("					});" & vbCrLf)
OOO00O.Write("				}" & vbCrLf)
OOO00O.Write("			});" & vbCrLf)
OOO00O.Write("			prettyPrint();" & vbCrLf)
OOO00O.Write("		});" & vbCrLf)
OOO00O.Write("	</script>" & vbCrLf)
OOO00O.Write("		<script>" & vbCrLf)
OOO00O.Write("KindEditor.ready(function(K) {" & vbCrLf)
OOO00O.Write("  var editor = K.editor({" & vbCrLf)
OOO00O.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OOO00O.Write("  });" & vbCrLf)
OOO00O.Write("  K('#filemanager').click(function() {" & vbCrLf)
OOO00O.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OOO00O.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OOO00O.Write("              viewType : 'VIEW'," & vbCrLf)
OOO00O.Write("              dirName : 'image'," & vbCrLf)
OOO00O.Write("              clickFn : function(url, title) {" & vbCrLf)
OOO00O.Write("                  K('#url').val(url);" & vbCrLf)
OOO00O.Write("                  editor.hideDialog();" & vbCrLf)
OOO00O.Write("              }" & vbCrLf)
OOO00O.Write("          });" & vbCrLf)
OOO00O.Write("      });" & vbCrLf)
OOO00O.Write("  });" & vbCrLf)
OOO00O.Write("});" & vbCrLf)
OOO00O.Write("</script>" & vbCrLf)
OOO00O.Write("</head>" & vbCrLf)
OOO00O.Write("<body>" & vbCrLf)
OOO00O.Write("            <div class=""box_top"">" & vbCrLf)
OOO00O.Write("              <div align=""center""> 修改")
OOO00O.Write rs1("honorname")
OOO00O.Write("</div>" & vbCrLf)
OOO00O.Write("            </div>" & vbCrLf)
OOO00O.Write("            <div class=""box_center"">" & vbCrLf)
OOO00O.Write("  <form id=""myform"" name=""myform""  method=""post"" action=""?action=edit&id=")
OOO00O.Write OOO000("id")
OOO00O.Write(""">" & vbCrLf)
OOO00O.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OOO00O.Write("    <tr>" & vbCrLf)
OOO00O.Write("      <td width=""20%""><div align=""right"">荣誉名称：</div></td>" & vbCrLf)
OOO00O.Write("      <td width=""45%""><input name=""honorname"" class=""input-text lh30"" type=""text"" id=""honorname"" value=""")
OOO00O.Write rs1("honorname")
OOO00O.Write(""" size=""40"" maxlength=""150""></td>" & vbCrLf)
OOO00O.Write("      <td width=""35%"" rowspan=""4""><a href=""")
OOO00O.Write rs1("pic")
OOO00O.Write(""" target=""_blank""><img src=""")
OOO00O.Write rs1("pic")
OOO00O.Write(""" alt=""点击放大"" width=""270"" height=""200"" border=""0""></a></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr>" & vbCrLf)
OOO00O.Write("      <td><div align=""right"">图片：</div></td>" & vbCrLf)
OOO00O.Write("      <td><input name=""pic"" type=""text"" class=""input-text lh30""  id=""url"" value=""")
OOO00O.Write rs1("pic")
OOO00O.Write(""" size=""50"" maxlength=""150"">" & vbCrLf)
OOO00O.Write("      <input name=""button2"" type=""button"" id=""filemanager"" class=""input-text lh30"" value=""选取已上传图片"" /></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr>" & vbCrLf)
OOO00O.Write("      <td><div align=""right"">重新上传新图片：</div></td>" & vbCrLf)
OOO00O.Write("      <td><iframe src=""upload.asp?action=simg"" class=""input-text lh30"" width=""350"" height=""25"" frameborder=""0"" scrolling=""no""></iframe></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr>" & vbCrLf)
OOO00O.Write("      <td><div align=""right"">添加人：</div></td>" & vbCrLf)
OOO00O.Write("      <td><input name=""user"" type=""text"" class=""input-text lh30"" id=""user"" value=""")
OOO00O.Write rs1("user")
OOO00O.Write(""" size=""22"" maxlength=""22""></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr> " & vbCrLf)
OOO00O.Write("      <td> <div align=""right"">内容简介：</div></td>" & vbCrLf)
OOO00O.Write("      <td colspan=""4""><textarea name=""body"" style=""width:80%;height:400px;visibility:hidden;"">")
OOO00O.Write rs1("body")
OOO00O.Write("</textarea></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr> " & vbCrLf)
OOO00O.Write("      <td><div align=""right"">发布时间：</div></td>" & vbCrLf)
OOO00O.Write("      <td colspan=""4""><span class=""td"">" & vbCrLf)
OOO00O.Write("        <input name=""sj"" type=""text"" class=""input-text lh30"" id=""sj"" value=""")
OOO00O.Write rs1("sj")
OOO00O.Write(""" size=""22"" maxlength=""22""  />" & vbCrLf)
OOO00O.Write("        <input name=button type=button class=""input-text lh30"" onClick=""document.myform.sj.value='")
OOO00O.Write (date())
OOO00O.Write("'"" value=""设为当前时间"">" & vbCrLf)
OOO00O.Write("      (请输入正确的日期格式)</span></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    <tr> " & vbCrLf)
OOO00O.Write("      <td>&nbsp;</td>" & vbCrLf)
OOO00O.Write("      <td><input type=""submit"" class=""btn btn82 btn_save2"" name=""Submit"" value=""确 定""></td>" & vbCrLf)
OOO00O.Write("      <td>&nbsp;</td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("</table>  " & vbCrLf)
OOO00O.Write("</form>" & vbCrLf)
OOO00O.Write(" " & vbCrLf)
OOO00O.Write("</body>" & vbCrLf)
OOO00O.Write("</html>" & vbCrLf)
Rs1.Close
Set Rs1=nothing
end if
OOO00O.Write(vbCrLf)
OOO00O.Write("<!--修改 -->" & vbCrLf)
if OOO000("action")="edit" then
if OOO000("id")="" then
OOO00O.write "参数不正确<a href=admin_honor_edit.asp?id="&OOO000("id")&">返回</a>"
OOO00O.end
end if
honorname=trim(OOO000("honorname"))
user=trim(OOO000("user"))
pic=trim(OOO000("pic"))
body=trim(OOO000("body"))
sj=trim(OOO000("sj"))
Set Rs=OOO0O0.Createobject("Adodb.Recordset")
Sql="Select * from honor Where ID="&OOO000("ID")
Rs.open Sql,Conn, (63 * 67 - 4220), (102 * 66 - 6729)
if rs.eof and rs.bof then
OOO00O.Write "<script>alert('参数不正确，ID值不存在！');history.go(-1);</script>"
OOO00O.End()
end if
if honorname=""  then
OOO00O.Write("<script language=javascript>alert('荣誉标题不能为空!');history.go(-1)</script>")
OOO00O.end
end if
if pic=""  then
OOO00O.Write("<script language=javascript>alert('荣誉 图片 不能为空!');history.go(-1)</script>")
OOO00O.end
end if
rs("honorname")=honorname
rs("pic")=pic
rs("user")=user
rs("body")=body
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OOO00O.Redirect "admin_honor.asp"
OOO00O.end
end if
%>