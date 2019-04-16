 <!--#include File="inc/Conn.asp" -->
<%
 Set OO00OO0O0O=Response:Set OO00OO0O00=Request:Set OO00OO0OOO=Session:Set OO00OO0OO=Application:Set OO00OO0OO0=Server
If OO00OO0OOO("AdminName")="" and OO00OO0OOO("adminpass")="" Then
OO00OO0O0O.Redirect "Error.asp?id=005"
Else
OO00OO0O0O.Write(vbCrLf)
OO00OO0O0O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO0O0O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO0O0O.Write("<head>" & vbCrLf)
OO00OO0O0O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO0O0O.Write("<title>添加企业链接</title>" & vbCrLf)
OO00OO0O0O.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO0O0O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO0O0O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO0O0O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO0O0O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO0O0O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO0O0O.Write("	<script>" & vbCrLf)
OO00OO0O0O.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0O0O.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO0O0O.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO0O0O.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO0O0O.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO0O0O.Write("				allowFileManager : true," & vbCrLf)
OO00OO0O0O.Write("				afterCreate : function() {" & vbCrLf)
OO00OO0O0O.Write("					var self = this;" & vbCrLf)
OO00OO0O0O.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO0O0O.Write("						self.sync();" & vbCrLf)
OO00OO0O0O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0O0O.Write("					});" & vbCrLf)
OO00OO0O0O.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO0O0O.Write("						self.sync();" & vbCrLf)
OO00OO0O0O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0O0O.Write("					});" & vbCrLf)
OO00OO0O0O.Write("				}" & vbCrLf)
OO00OO0O0O.Write("			});" & vbCrLf)
OO00OO0O0O.Write("			prettyPrint();" & vbCrLf)
OO00OO0O0O.Write("		});" & vbCrLf)
OO00OO0O0O.Write("	</script>" & vbCrLf)
OO00OO0O0O.Write("			<script>" & vbCrLf)
OO00OO0O0O.Write("KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0O0O.Write("  var editor = K.editor({" & vbCrLf)
OO00OO0O0O.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OO00OO0O0O.Write("  });" & vbCrLf)
OO00OO0O0O.Write("  K('#filemanager').click(function() {" & vbCrLf)
OO00OO0O0O.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OO00OO0O0O.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OO00OO0O0O.Write("              viewType : 'VIEW'," & vbCrLf)
OO00OO0O0O.Write("              dirName : 'image'," & vbCrLf)
OO00OO0O0O.Write("              clickFn : function(url, title) {" & vbCrLf)
OO00OO0O0O.Write("                  K('#url').val(url);" & vbCrLf)
OO00OO0O0O.Write("                  editor.hideDialog();" & vbCrLf)
OO00OO0O0O.Write("              }" & vbCrLf)
OO00OO0O0O.Write("          });" & vbCrLf)
OO00OO0O0O.Write("      });" & vbCrLf)
OO00OO0O0O.Write("  });" & vbCrLf)
OO00OO0O0O.Write("});" & vbCrLf)
OO00OO0O0O.Write("</script>" & vbCrLf)
OO00OO0O0O.Write("</head>" & vbCrLf)
OO00OO0O0O.Write("<body>" & vbCrLf)
OO00OO0O0O.Write("             <div class=""box_top"">" & vbCrLf)
OO00OO0O0O.Write("              <div align=""center""><strong>添加企业链接</strong></div>" & vbCrLf)
OO00OO0O0O.Write("            </div>" & vbCrLf)
OO00OO0O0O.Write("   <form onSubmit=""return CheckForm();"" action=""?action=add"" id=""myform"" class=""jqtransform"" name=""myform"" method=""post"">" & vbCrLf)
OO00OO0O0O.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO0O0O.Write("    <tr>" & vbCrLf)
OO00OO0O0O.Write("      <td><div align=""right""><font color=""#FF0000"">*</font>名称：</div></td>" & vbCrLf)
OO00OO0O0O.Write("      <td><input name=""linkname"" type=""text"" id=""linkname"" class=""input-text"" size=""60"" maxlength=""150""></td>" & vbCrLf)
OO00OO0O0O.Write("    </tr>" & vbCrLf)
OO00OO0O0O.Write("    <TR>" & vbCrLf)
OO00OO0O0O.Write("      <TD><div align=""right"">添加人：</div></TD>" & vbCrLf)
OO00OO0O0O.Write("      <TD><input  name=user class=""input-text lh30"" value=admin size=20 maxlength=""22""></TD>" & vbCrLf)
OO00OO0O0O.Write("    </TR>" & vbCrLf)
OO00OO0O0O.Write("    <tr>" & vbCrLf)
OO00OO0O0O.Write("      <td><div align=""right"">链接：</div></td>" & vbCrLf)
OO00OO0O0O.Write("      <td><input  name=""lianjie"" class=""input-text lh30"" id=""lianjie"" value=""#"" size=""60"" maxlength=""80"" /> " & vbCrLf)
OO00OO0O0O.Write("        如: http://www.baidu.com</td>" & vbCrLf)
OO00OO0O0O.Write("    </tr>" & vbCrLf)
OO00OO0O0O.Write(" " & vbCrLf)
OO00OO0O0O.Write("    <tr> " & vbCrLf)
OO00OO0O0O.Write("      <td><div align=""right"">添加时间：</div></td>" & vbCrLf)
OO00OO0O0O.Write("      <td><input name=""sj"" type=""text"" readonly class=""input-text lh30"" id=""sj"" value=""")
OO00OO0O0O.Write (Date)()
OO00OO0O0O.Write(""" size=""20"" maxlength=""19"">&nbsp;  &nbsp;  <input type=""submit"" class=""btn btn82 btn_save2""  name=""Submit"" value=""确 定"">" & vbCrLf)
OO00OO0O0O.Write("        &nbsp;  " & vbCrLf)
OO00OO0O0O.Write("       <input type=""reset"" class=""btn btn82 btn_res"" name=""Submit2"" value=""重置"">       </td>" & vbCrLf)
OO00OO0O0O.Write("    </tr>" & vbCrLf)
OO00OO0O0O.Write("</table>" & vbCrLf)
OO00OO0O0O.Write("</form> " & vbCrLf)
OO00OO0O0O.Write("</body>" & vbCrLf)
OO00OO0O0O.Write("</html>" & vbCrLf)
end if
if OO00OO0O00("action")="add" then
linkname=OO00OO0O00.Form("linkname")
action=OO00OO0O00.QueryString("action")
if action="add" then
set rsadd=OO00OO0OO0.CreateObject("adodb.recordset")
rsadd.open"select * from link where linkname='"&linkname&"'",conn, (65 * 55 - 3574), (12 * 88 - 1053)
if not rsadd.eof or not rsadd.bof then
OO00OO0O0O.Write("<script language=javascript>alert('有这篇企业友情链接了，为了搜索引擎优化，请不要重名!');history.go(-1)</script>")
OO00OO0O0O.End()
end if
end if
linkname=trim(OO00OO0O00("linkname"))
user=trim(OO00OO0O00("user"))
lianjie=trim(OO00OO0O00("lianjie"))
sj=trim(OO00OO0O00("sj"))
if linkname=""  then
OO00OO0O0O.Write("<script language=javascript>alert('企业友情链接标题不能为空!');history.go(-1)</script>")
OO00OO0O0O.end
end if
if lianjie=""  then
OO00OO0O0O.Write("<script language=javascript>alert('企业友情链接网址不能为空!');history.go(-1)</script>")
OO00OO0O0O.end
end if
set rs=OO00OO0OO0.CreateObject("ADODB.RecordSet")
Sql="Select * from link"
Rs.Open Sql,Conn, (65 * 55 - 3574), (12 * 88 - 1053)
Rs.AddNew
rs("linkname")=linkname
rs("user")=user
rs("lianjie")=lianjie
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
set rs4=OO00OO0OO0.createobject("adodb.recordset")
sql4="select top 1 * from link order by id desc"
SET Rs4=conn.execute(sql4)
if not rs4.eof then
do while not rs4.eof
id=rs4("id")
rs4.movenext
loop
end if
rs4.close
OO00OO0O0O.Redirect "admin_link.asp"
OO00OO0O0O.end
else
end if
OO00OO0O0O.end
%>