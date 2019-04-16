<!--#include File="inc/Conn.asp" --> 
<%
 Set OOOO00=Response:Set OOOOO=Request:Set OOOOO0=Session:Set OOOO0=Application:Set OOOO0O=Server
If OOOOO0("AdminName")="" and OOOOO0("adminpass")="" Then
OOOO00.Redirect "Error.asp?id=005"
Else
Sql="Select * From Product where ID="&OOOOO("ID")
Set Rs1=OOOO0O.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn, (47 * 39 - 1832), (47 * 39 - 1832)
if rs1.bof or rs1.eof then
OOOO00.Write"<center>暂无产产品<a href='admin_Product_add.asp'><font color=red>添加产品!</a></center>"
OOOO00.end
else
end if
OOOO00.Write(vbCrLf)
OOOO00.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OOOO00.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OOOO00.Write("<head>" & vbCrLf)
OOOO00.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OOOO00.Write("<title>修改数据</title>" & vbCrLf)
OOOO00.Write("    <link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OOOO00.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OOOO00.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OOOO00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OOOO00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OOOO00.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OOOO00.Write("	<script>" & vbCrLf)
OOOO00.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OOOO00.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OOOO00.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OOOO00.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OOOO00.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OOOO00.Write("				allowFileManager : true," & vbCrLf)
OOOO00.Write("				afterCreate : function() {" & vbCrLf)
OOOO00.Write("					var self = this;" & vbCrLf)
OOOO00.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OOOO00.Write("						self.sync();" & vbCrLf)
OOOO00.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OOOO00.Write("					});" & vbCrLf)
OOOO00.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OOOO00.Write("						self.sync();" & vbCrLf)
OOOO00.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OOOO00.Write("					});" & vbCrLf)
OOOO00.Write("				}" & vbCrLf)
OOOO00.Write("			});" & vbCrLf)
OOOO00.Write("			prettyPrint();" & vbCrLf)
OOOO00.Write("		});" & vbCrLf)
OOOO00.Write("	</script>" & vbCrLf)
OOOO00.Write("	" & vbCrLf)
OOOO00.Write("	<script>" & vbCrLf)
OOOO00.Write("KindEditor.ready(function(K) {" & vbCrLf)
OOOO00.Write("  var editor = K.editor({" & vbCrLf)
OOOO00.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OOOO00.Write("  });" & vbCrLf)
OOOO00.Write("  K('#filemanager').click(function() {" & vbCrLf)
OOOO00.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OOOO00.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OOOO00.Write("              viewType : 'VIEW'," & vbCrLf)
OOOO00.Write("              dirName : 'image'," & vbCrLf)
OOOO00.Write("              clickFn : function(url, title) {" & vbCrLf)
OOOO00.Write("                  K('#url').val(url);" & vbCrLf)
OOOO00.Write("                  editor.hideDialog();" & vbCrLf)
OOOO00.Write("              }" & vbCrLf)
OOOO00.Write("          });" & vbCrLf)
OOOO00.Write("      });" & vbCrLf)
OOOO00.Write("  });" & vbCrLf)
OOOO00.Write("});" & vbCrLf)
OOOO00.Write("</script>" & vbCrLf)
OOOO00.Write("</head>" & vbCrLf)
OOOO00.Write("<body>" & vbCrLf)
OOOO00.Write("            <div class=""box_top"">" & vbCrLf)
OOOO00.Write("              <div align=""center""> 修改")
OOOO00.Write rs1("Productname")
OOOO00.Write("</div>" & vbCrLf)
OOOO00.Write("            </div>" & vbCrLf)
OOOO00.Write("            <div class=""box_center"">" & vbCrLf)
OOOO00.Write("  <form id=""myform"" name=""myform""  method=""post"" action=""?action=edit&id=")
OOOO00.Write OOOOO("id")
OOOO00.Write(""">" & vbCrLf)
OOOO00.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OOOO00.Write("    <tr bgcolor=""#FFFFFF"">" & vbCrLf)
OOOO00.Write("      <td width=""18%""><div align=""right"">产品所属类别：</div></td>" & vbCrLf)
OOOO00.Write("      <td height=""25"" colspan=""3""><select class=""input-text"" name=""classid"" id=""classid"">" & vbCrLf)
OOOO00.Write("        ")
Set Rs=OOOO0O.Createobject("Adodb.Recordset")
Sql="Select * From ProductClass"
Rs.open Sql,Conn, (47 * 39 - 1832), (56 * 21 - 1173)
Do While not Rs.Eof
OOOO00.Write(vbCrLf)
OOOO00.Write("        <option value=""")
OOOO00.Write rs("id")
OOOO00.Write(""" ")
if rs("name")=rs1("classname") then
OOOO00.Write("selected")
end if
OOOO00.Write(">")
OOOO00.Write rs("name")
OOOO00.Write("</option>" & vbCrLf)
OOOO00.Write("        ")
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
OOOO00.Write(vbCrLf)
OOOO00.Write("      </select></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("    <tr>" & vbCrLf)
OOOO00.Write("      <td><div align=""right"">产品名称：</div></td>" & vbCrLf)
OOOO00.Write("      <td width=""45%""><input name=""Productname"" class=""input-text lh30"" type=""text"" id=""Productname"" value=""")
OOOO00.Write rs1("Productname")
OOOO00.Write(""" size=""80"" maxlength=""150""></td>" & vbCrLf)
OOOO00.Write("      <td width=""37%"" rowspan=""7""><a href=""")
OOOO00.Write rs1("pic")
OOOO00.Write(""" target=""_blank""><img src=""")
OOOO00.Write rs1("pic")
OOOO00.Write(""" alt=""点击放大"" width=""270"" height=""200"" border=""0"" /></a></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("	<tr>" & vbCrLf)
OOOO00.Write("	  <td><div align=""right"">产品关键词：</div></td>" & vbCrLf)
OOOO00.Write("	  <td><input name=""Productkey"" class=""input-text lh30"" type=""text"" id=""Productkey"" value=""")
OOOO00.Write rs1("Productkey")
OOOO00.Write(""" size=""80"" maxlength=""150"" /></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("	<tr>" & vbCrLf)
OOOO00.Write("	  <td><div align=""right"">产品标题优化说明：</div></td>" & vbCrLf)
OOOO00.Write("	  <td><input name=""Productsm"" class=""input-text lh30"" type=""text"" id=""Productsm"" value=""")
OOOO00.Write rs1("Productsm")
OOOO00.Write(""" size=""80"" maxlength=""150"" /></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("	<tr><td><div align=""right"">图片：</div></td>" & vbCrLf)
OOOO00.Write("      <td><input name=""pic"" type=""text"" class=""input-text lh30""  id=""url"" value=""")
OOOO00.Write rs1("pic")
OOOO00.Write(""" size=""50"" maxlength=""150"">" & vbCrLf)
OOOO00.Write("      <input name=""button2"" type=""button"" id=""filemanager"" class=""input-text lh30"" value=""选取已上传图片"" /></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("    <tr>" & vbCrLf)
OOOO00.Write("      <td><div align=""right"">重新上传新图片：</div></td>" & vbCrLf)
OOOO00.Write("      <td><iframe src=""upload.asp?action=simg"" class=""input-text lh30"" width=""350"" height=""25"" frameborder=""0"" scrolling=""no""></iframe></td>" & vbCrLf)
OOOO00.Write("    <tr>" & vbCrLf)
OOOO00.Write("      <td><div align=""right"">添加人：</div></td>" & vbCrLf)
OOOO00.Write("      <td><input name=""user"" type=""text"" class=""input-text lh30"" id=""user"" value=""")
OOOO00.Write rs1("user")
OOOO00.Write(""" size=""22"" maxlength=""22""></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("    " & vbCrLf)
OOOO00.Write("    <tr> " & vbCrLf)
OOOO00.Write("      <td><div align=""right"">发布时间：</div></td>" & vbCrLf)
OOOO00.Write("      <td colspan=""4""><span class=""td"">" & vbCrLf)
OOOO00.Write("        <input name=""sj"" type=""text"" class=""input-text lh30"" id=""sj"" value=""")
OOOO00.Write rs1("sj")
OOOO00.Write(""" size=""10"" maxlength=""10""  />" & vbCrLf)
OOOO00.Write("        <input name=button type=button class=""input-text lh30"" onClick=""document.myform.sj.value='")
OOOO00.Write (date())
OOOO00.Write("'"" value=""设为当前时间"">" & vbCrLf)
OOOO00.Write("      (请输入正确的日期格式)</span></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("    <tr> " & vbCrLf)
OOOO00.Write("      <td> <div align=""right"">内容简介：</div></td>" & vbCrLf)
OOOO00.Write("      <td colspan=""4""><textarea name=""body"" style=""width:80%;height:400px;visibility:hidden;"">")
OOOO00.Write rs1("body")
OOOO00.Write("</textarea></td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("    <tr> " & vbCrLf)
OOOO00.Write("      <td>&nbsp;</td>" & vbCrLf)
OOOO00.Write("      <td><input type=""submit"" class=""btn btn82 btn_save2"" name=""Submit"" value=""确 定""></td>" & vbCrLf)
OOOO00.Write("      <td>&nbsp;</td>" & vbCrLf)
OOOO00.Write("    </tr>" & vbCrLf)
OOOO00.Write("</table>  " & vbCrLf)
OOOO00.Write("</form>" & vbCrLf)
OOOO00.Write(" " & vbCrLf)
OOOO00.Write("</body>" & vbCrLf)
OOOO00.Write("</html>" & vbCrLf)
Rs1.Close
Set Rs1=nothing
end if
OOOO00.Write(vbCrLf)
OOOO00.Write("<!--修改 -->" & vbCrLf)
if OOOOO("action")="edit" then
page=OOOOO("page")
classID=OOOOO("classID")
keyword=OOOOO("keyword")
if OOOOO("id")="" then
OOOO00.write "参数不正确<a href=admin_Product_edit.asp?id="&OOOOO("id")&">返回</a>"
OOOO00.end
end if
if OOOOO("classid")<>""  then
Sql="Select * From Productclass where ID="&OOOOO("classID")
Set Rs=OOOO0O.Createobject("Adodb.Recordset")
Rs.open Sql,Conn, (47 * 39 - 1832), (47 * 39 - 1832)
nclass=rs("classid")
classname=rs("name")
Rs.Close
Set Rs=nothing
Productname=trim(OOOOO("Productname"))
Productkey=trim(OOOOO("Productkey"))
Productsm=trim(OOOOO("Productsm"))
classid=trim(OOOOO("classid"))
pic=trim(OOOOO("pic"))
tj=trim(OOOOO("tj"))
user=trim(OOOOO("user"))
body=trim(OOOOO("body"))
sj=trim(OOOOO("sj"))
Set Rs=OOOO0O.Createobject("Adodb.Recordset")
Sql="Select * from Product Where ID="&OOOOO("ID")
Rs.open Sql,Conn, (47 * 39 - 1832), (56 * 21 - 1173)
if rs.eof and rs.bof then
OOOO00.Write "<script>alert('参数不正确，ID值不存在！');history.go(-1);</script>"
OOOO00.End()
end if
if Productname=""  then
OOOO00.Write("<script language=javascript>alert('产品标题不能为空!');history.go(-1)</script>")
OOOO00.end
end if
if classid=""  then
OOOO00.Write("<script language=javascript>alert('产品分类不能为空!');history.go(-1)</script>")
OOOO00.end
end if
if pic=""  then
OOOO00.Write("<script language=javascript>alert('产品图片不能为空!');history.go(-1)</script>")
OOOO00.end
end if
rs("Productname")=Productname
rs("Productkey")=Productkey
rs("Productsm")=Productsm
rs("classid")=classid
rs("nclass")=nclass
rs("classname")=classname
rs("pic")=pic
rs("user")=user
rs("body")=body
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
OOOO00.Redirect "admin_Product.asp"
OOOO00.end
else
OOOO00.write "你好像少了什么没写吧<a href=admin_Product_edit.asp?id="&OOOOO("id")&">返回</a>"
OOOO00.end
end if
OOOO00.end
end if
%>