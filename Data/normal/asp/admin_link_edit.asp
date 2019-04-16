<!--#include File="inc/Conn.asp" -->
<%
 Set OO00OO000O=Response:Set OO00OO0000=Request:Set OO00OO00OO=Session:Set OO00OO00O=Application:Set OO00OO00O0=Server
If OO00OO00OO("AdminName")="" and OO00OO00OO("adminpass")="" Then
OO00OO000O.Redirect "Error.asp?id=005"
Else
Sql="Select * from link where ID="&OO00OO0000("ID")
Set Rs1=OO00OO00O0.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn, (14 * 18 - 251), (14 * 18 - 251)
if rs1.bof or rs1.eof then
OO00OO000O.Write"<center>暂无友情链接<a href='admin_link_add.asp'><font color=red>添加友情链接!</a></center>"
OO00OO000O.end
else
end if
OO00OO000O.Write(vbCrLf)
OO00OO000O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO000O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO000O.Write("<head>" & vbCrLf)
OO00OO000O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO000O.Write("<title>修改数据</title>" & vbCrLf)
OO00OO000O.Write("    <link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO000O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO000O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO000O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO000O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO000O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO000O.Write("	<script>" & vbCrLf)
OO00OO000O.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO000O.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO000O.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO000O.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO000O.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO000O.Write("				allowFileManager : true," & vbCrLf)
OO00OO000O.Write("				afterCreate : function() {" & vbCrLf)
OO00OO000O.Write("					var self = this;" & vbCrLf)
OO00OO000O.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO000O.Write("						self.sync();" & vbCrLf)
OO00OO000O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO000O.Write("					});" & vbCrLf)
OO00OO000O.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO000O.Write("						self.sync();" & vbCrLf)
OO00OO000O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO000O.Write("					});" & vbCrLf)
OO00OO000O.Write("				}" & vbCrLf)
OO00OO000O.Write("			});" & vbCrLf)
OO00OO000O.Write("			prettyPrint();" & vbCrLf)
OO00OO000O.Write("		});" & vbCrLf)
OO00OO000O.Write("	</script>" & vbCrLf)
OO00OO000O.Write("		<script>" & vbCrLf)
OO00OO000O.Write("KindEditor.ready(function(K) {" & vbCrLf)
OO00OO000O.Write("  var editor = K.editor({" & vbCrLf)
OO00OO000O.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OO00OO000O.Write("  });" & vbCrLf)
OO00OO000O.Write("  K('#filemanager').click(function() {" & vbCrLf)
OO00OO000O.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OO00OO000O.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OO00OO000O.Write("              viewType : 'VIEW'," & vbCrLf)
OO00OO000O.Write("              dirName : 'image'," & vbCrLf)
OO00OO000O.Write("              clickFn : function(url, title) {" & vbCrLf)
OO00OO000O.Write("                  K('#url').val(url);" & vbCrLf)
OO00OO000O.Write("                  editor.hideDialog();" & vbCrLf)
OO00OO000O.Write("              }" & vbCrLf)
OO00OO000O.Write("          });" & vbCrLf)
OO00OO000O.Write("      });" & vbCrLf)
OO00OO000O.Write("  });" & vbCrLf)
OO00OO000O.Write("});" & vbCrLf)
OO00OO000O.Write("</script>" & vbCrLf)
OO00OO000O.Write("</head>" & vbCrLf)
OO00OO000O.Write("<body>" & vbCrLf)
OO00OO000O.Write("            <div class=""box_top"">" & vbCrLf)
OO00OO000O.Write("              <div align=""center""> 修改")
OO00OO000O.Write rs1("linkname")
OO00OO000O.Write("</div>" & vbCrLf)
OO00OO000O.Write("            </div>" & vbCrLf)
OO00OO000O.Write("            <div class=""box_center"">" & vbCrLf)
OO00OO000O.Write("  <form id=""myform"" name=""myform""  method=""post"" action=""?action=edit&id=")
OO00OO000O.Write OO00OO0000("id")
OO00OO000O.Write(""">" & vbCrLf)
OO00OO000O.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO000O.Write("    <tr>" & vbCrLf)
OO00OO000O.Write("      <td width=""20%""><div align=""right""><font color=""#FF0000"">*</font>友情链接名称：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td width=""45%""><input name=""linkname"" class=""input-text lh30"" type=""text"" id=""linkname"" value=""")
OO00OO000O.Write rs1("linkname")
OO00OO000O.Write(""" size=""40"" maxlength=""150""></td>" & vbCrLf)
OO00OO000O.Write("      <td width=""35%"" rowspan=""2""><a href=""")
OO00OO000O.Write rs1("pic")
OO00OO000O.Write(""" target=""_blank""></a></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("    " & vbCrLf)
OO00OO000O.Write("    " & vbCrLf)
OO00OO000O.Write("    <tr>" & vbCrLf)
OO00OO000O.Write("      <td><div align=""right"">添加人：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td><input name=""user"" type=""text"" class=""input-text lh30"" id=""user"" value=""")
OO00OO000O.Write rs1("user")
OO00OO000O.Write(""" size=""22"" maxlength=""22""></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("    <tr> " & vbCrLf)
OO00OO000O.Write("      <td> <div align=""right"">链接：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td colspan=""4""><input name=""lianjie"" type=""text"" class=""input-text lh30"" id=""lianjie"" value=""")
OO00OO000O.Write rs1("lianjie")
OO00OO000O.Write(""" size=""50"" maxlength=""80"" /></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("    <tr> " & vbCrLf)
OO00OO000O.Write("      <td><div align=""right"">发布时间：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td colspan=""4""><span class=""td"">" & vbCrLf)
OO00OO000O.Write("        <input name=""sj"" type=""text"" class=""input-text lh30"" id=""sj"" value=""")
OO00OO000O.Write rs1("sj")
OO00OO000O.Write(""" size=""22"" maxlength=""22""  />" & vbCrLf)
OO00OO000O.Write("        <input name=button type=button class=""input-text lh30"" onClick=""document.myform.sj.value='")
OO00OO000O.Write (date())
OO00OO000O.Write("'"" value=""设为当前时间"">" & vbCrLf)
OO00OO000O.Write("      (请输入正确的日期格式)</span></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("    <tr> " & vbCrLf)
OO00OO000O.Write("      <td>&nbsp;</td>" & vbCrLf)
OO00OO000O.Write("      <td><input type=""submit"" class=""btn btn82 btn_save2"" name=""Submit"" value=""确 定""></td>" & vbCrLf)
OO00OO000O.Write("      <td>&nbsp;</td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("</table>  " & vbCrLf)
OO00OO000O.Write("</form>" & vbCrLf)
OO00OO000O.Write(" " & vbCrLf)
OO00OO000O.Write("</body>" & vbCrLf)
OO00OO000O.Write("</html>" & vbCrLf)
Rs1.Close
Set Rs1=nothing
end if
OO00OO000O.Write(vbCrLf)
OO00OO000O.Write("<!--修改 -->" & vbCrLf)
if OO00OO0000("action")="edit" then
if OO00OO0000("id")="" then
OO00OO000O.write "参数不正确<a href=admin_link_edit.asp?id="&OO00OO0000("id")&">返回</a>"
OO00OO000O.end
end if
linkname=trim(OO00OO0000("linkname"))
user=trim(OO00OO0000("user"))
lianjie=trim(OO00OO0000("lianjie"))
if lianjie="" then
lianjie="#"
end if
sj=trim(OO00OO0000("sj"))
Set Rs=OO00OO00O0.Createobject("Adodb.Recordset")
Sql="Select * from link Where ID="&OO00OO0000("ID")
Rs.open Sql,Conn, (14 * 18 - 251), (72 * 102 - 7341)
if rs.eof and rs.bof then
OO00OO000O.Write "<script>alert('参数不正确，ID值不存在！');history.go(-1);</script>"
OO00OO000O.End()
end if
if linkname=""  then
OO00OO000O.Write("<script language=javascript>alert('友情链接标题不能为空!');history.go(-1)</script>")
OO00OO000O.end
end if
if lianjie=""  then
OO00OO000O.Write("<script language=javascript>alert('友情链接 网址 不能为空!');history.go(-1)</script>")
OO00OO000O.end
end if
rs("linkname")=linkname
rs("user")=user
rs("lianjie")=lianjie
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OO00OO000O.Redirect "admin_link.asp"
OO00OO000O.end
end if
%>