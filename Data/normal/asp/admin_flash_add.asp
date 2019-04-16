<!--#include File="inc/Conn.asp" -->
<%
 Set OO00OO000O=Response:Set OO00OO0000=Request:Set OO00OO00OO=Session:Set OO00OO00O=Application:Set OO00OO00O0=Server
If OO00OO00OO("AdminName")="" and OO00OO00OO("adminpass")="" Then
OO00OO000O.Redirect "Error.asp?id=005"
Else
OO00OO000O.Write(vbCrLf)
OO00OO000O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO000O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO000O.Write("<head>" & vbCrLf)
OO00OO000O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO000O.Write("<title>添加企业幻灯片</title>" & vbCrLf)
OO00OO000O.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
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
OO00OO000O.Write("			<script>" & vbCrLf)
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
OO00OO000O.Write("             <div class=""box_top"">" & vbCrLf)
OO00OO000O.Write("              <div align=""center""><strong>添加企业幻灯片</strong></div>" & vbCrLf)
OO00OO000O.Write("            </div>" & vbCrLf)
OO00OO000O.Write("   <form onSubmit=""return CheckForm();"" action=""?action=add"" id=""myform"" class=""jqtransform"" name=""myform"" method=""post"">" & vbCrLf)
OO00OO000O.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO000O.Write("    <tr>" & vbCrLf)
OO00OO000O.Write("      <td><div align=""right""><font color=""#FF0000"">*</font>名称：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td><input name=""flashname"" type=""text"" id=""flashname"" class=""input-text"" size=""60"" maxlength=""150""></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("    <TR>" & vbCrLf)
OO00OO000O.Write("      <TD><div align=""right""><font color=""#FF0000"">*</font>图片地址：</div></TD>" & vbCrLf)
OO00OO000O.Write("      <TD><span class=""b1_1"">" & vbCrLf)
OO00OO000O.Write("        <input name=""pic"" type=""text"" class=""input-text"" id=""url"" size=""50"" maxlength=""150"">" & vbCrLf)
OO00OO000O.Write("        <input name=""button2"" type=""button"" id=""filemanager"" class=""input-text"" value=""选择图库空间"" />" & vbCrLf)
OO00OO000O.Write("        请上传图片图片类型为：jpg/jpeg/gif/png/bmp</span></TD>" & vbCrLf)
OO00OO000O.Write("    </TR>" & vbCrLf)
OO00OO000O.Write("    <TR>" & vbCrLf)
OO00OO000O.Write("      <TD><div align=""right"">上传图片：</div></TD>" & vbCrLf)
OO00OO000O.Write("      <TD><iframe src=""upload.asp?action=simg"" class=""input-text lh30"" width=""400"" height=""28"" frameborder=""0"" scrolling=""no""></iframe></TD>" & vbCrLf)
OO00OO000O.Write("    </TR>" & vbCrLf)
OO00OO000O.Write("    <TR>" & vbCrLf)
OO00OO000O.Write("      <TD><div align=""right"">添加人：</div></TD>" & vbCrLf)
OO00OO000O.Write("      <TD><input  name=user class=""input-text lh30"" value=admin size=20 maxlength=""22""></TD>" & vbCrLf)
OO00OO000O.Write("    </TR>" & vbCrLf)
OO00OO000O.Write("    <tr>" & vbCrLf)
OO00OO000O.Write("      <td><div align=""right"">链接：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td><input  name=""lianjie"" class=""input-text lh30"" id=""lianjie"" value=""#"" size=""60"" maxlength=""80"" /></td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write(" " & vbCrLf)
OO00OO000O.Write("    <tr> " & vbCrLf)
OO00OO000O.Write("      <td><div align=""right"">添加时间：</div></td>" & vbCrLf)
OO00OO000O.Write("      <td><input name=""sj"" type=""text"" readonly class=""input-text lh30"" id=""sj"" value=""")
OO00OO000O.Write (Date)()
OO00OO000O.Write(""" size=""20"" maxlength=""19"">&nbsp;  &nbsp;  <input type=""submit"" class=""btn btn82 btn_save2""  name=""Submit"" value=""确 定"">" & vbCrLf)
OO00OO000O.Write("        &nbsp;  " & vbCrLf)
OO00OO000O.Write("       <input type=""reset"" class=""btn btn82 btn_res"" name=""Submit2"" value=""重置"">       </td>" & vbCrLf)
OO00OO000O.Write("    </tr>" & vbCrLf)
OO00OO000O.Write("</table>" & vbCrLf)
OO00OO000O.Write("</form> " & vbCrLf)
OO00OO000O.Write("</body>" & vbCrLf)
OO00OO000O.Write("</html>" & vbCrLf)
end if
if OO00OO0000("action")="add" then
flashname=OO00OO0000.Form("flashname")
action=OO00OO0000.QueryString("action")
if action="add" then
set rsadd=OO00OO00O0.CreateObject("adodb.recordset")
rsadd.open"select * from flash where flashname='"&flashname&"'",conn, (49 * 85 - 4164), (61 * 28 - 1705)
if not rsadd.eof or not rsadd.bof then
OO00OO000O.Write("<script language=javascript>alert('有这篇企业幻灯片了，为了搜索引擎优化，请不要重名!');history.go(-1)</script>")
OO00OO000O.End()
end if
end if
flashname=trim(OO00OO0000("flashname"))
pic=trim(OO00OO0000("pic"))
user=trim(OO00OO0000("user"))
lianjie=trim(OO00OO0000("lianjie"))
sj=trim(OO00OO0000("sj"))
if flashname=""  then
OO00OO000O.Write("<script language=javascript>alert('企业幻灯片标题不能为空!');history.go(-1)</script>")
OO00OO000O.end
end if
if pic=""  then
OO00OO000O.Write("<script language=javascript>alert('企业幻灯片图片不能为空!');history.go(-1)</script>")
OO00OO000O.end
end if
set rs=OO00OO00O0.CreateObject("ADODB.RecordSet")
Sql="Select * from flash"
Rs.Open Sql,Conn, (49 * 85 - 4164), (61 * 28 - 1705)
Rs.AddNew
rs("flashname")=flashname
rs("pic")=pic
rs("user")=user
rs("lianjie")=lianjie
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
set rs4=OO00OO00O0.createobject("adodb.recordset")
sql4="select top 1 * from flash order by id desc"
SET Rs4=conn.execute(sql4)
if not rs4.eof then
do while not rs4.eof
id=rs4("id")
rs4.movenext
loop
end if
rs4.close
OO00OO000O.Redirect "admin_flash.asp"
OO00OO000O.end
else
end if
OO00OO000O.end
%>