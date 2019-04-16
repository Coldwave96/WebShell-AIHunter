<!--#include File="inc/Conn.asp" --> 
<%
 'Don't modify the following code, to ensure normal

Dim OOOOOO,OO00OO000,OO00OO00O,OO00OO0000,OO00OO000O
Set OO00OO00O=Response:Set OO00OO000=Request:Set OO00OO000O=Session:Set OOOOOO=Application:Set OO00OO0000=Server
If OO00OO000O("AdminName")="" and OO00OO000O("adminpass")="" Then
OO00OO00O.Redirect "Error.asp?id=005"
Else
OO00OO00O.Write(vbCrLf)
OO00OO00O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO00O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO00O.Write("<head>" & vbCrLf)
OO00OO00O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO00O.Write("<title>添加产品</title>" & vbCrLf)
OO00OO00O.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO00O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO00O.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO00O.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO00O.Write("	<script>" & vbCrLf)
OO00OO00O.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO00O.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO00O.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO00O.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO00O.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO00O.Write("				allowFileManager : true," & vbCrLf)
OO00OO00O.Write("				afterCreate : function() {" & vbCrLf)
OO00OO00O.Write("					var self = this;" & vbCrLf)
OO00OO00O.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO00O.Write("						self.sync();" & vbCrLf)
OO00OO00O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO00O.Write("					});" & vbCrLf)
OO00OO00O.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO00O.Write("						self.sync();" & vbCrLf)
OO00OO00O.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO00O.Write("					});" & vbCrLf)
OO00OO00O.Write("				}" & vbCrLf)
OO00OO00O.Write("			});" & vbCrLf)
OO00OO00O.Write("			prettyPrint();" & vbCrLf)
OO00OO00O.Write("		});" & vbCrLf)
OO00OO00O.Write("	</script>" & vbCrLf)
OO00OO00O.Write("				<script>" & vbCrLf)
OO00OO00O.Write("KindEditor.ready(function(K) {" & vbCrLf)
OO00OO00O.Write("  var editor = K.editor({" & vbCrLf)
OO00OO00O.Write("      fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'" & vbCrLf)
OO00OO00O.Write("  });" & vbCrLf)
OO00OO00O.Write("  K('#filemanager').click(function() {" & vbCrLf)
OO00OO00O.Write("      editor.loadPlugin('filemanager', function() {" & vbCrLf)
OO00OO00O.Write("          editor.plugin.filemanagerDialog({" & vbCrLf)
OO00OO00O.Write("              viewType : 'VIEW'," & vbCrLf)
OO00OO00O.Write("              dirName : 'image'," & vbCrLf)
OO00OO00O.Write("              clickFn : function(url, title) {" & vbCrLf)
OO00OO00O.Write("                  K('#url').val(url);" & vbCrLf)
OO00OO00O.Write("                  editor.hideDialog();" & vbCrLf)
OO00OO00O.Write("              }" & vbCrLf)
OO00OO00O.Write("          });" & vbCrLf)
OO00OO00O.Write("      });" & vbCrLf)
OO00OO00O.Write("  });" & vbCrLf)
OO00OO00O.Write("});" & vbCrLf)
OO00OO00O.Write("</script>" & vbCrLf)
OO00OO00O.Write("</head>" & vbCrLf)
OO00OO00O.Write("<body>" & vbCrLf)
OO00OO00O.Write("             <div class=""box_top"">" & vbCrLf)
OO00OO00O.Write("              <div align=""center""><strong>添加产品</strong></div>" & vbCrLf)
OO00OO00O.Write("            </div>" & vbCrLf)
OO00OO00O.Write("   <form onSubmit=""return CheckForm();"" action=""?action=add"" id=""myform"" class=""jqtransform"" name=""myform"" method=""post"">" & vbCrLf)
OO00OO00O.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO00O.Write("      <tr>" & vbCrLf)
OO00OO00O.Write("      <td> <div align=""right"">所属类别：</div></td>" & vbCrLf)
OO00OO00O.Write("      <td> <select name=""classid"" class=""input-text"" id=""classid"">" & vbCrLf)
OO00OO00O.Write("          ")
Set OO00OO00O0=OO00OO0000.Createobject("Adodb.Recordset")
OO00OO00OO="Select * From Productclass"
OO00OO00O0.open OO00OO00OO,Conn, (32 * 42 - 1343), (18 * 39 - 699)
Do While not OO00OO00O0.Eof
OO00OO00O.Write(vbCrLf)
OO00OO00O.Write("          <option value=""")
OO00OO00O.Write OO00OO00O0("id")
OO00OO00O.Write(""">")
OO00OO00O.Write OO00OO00O0("name")
OO00OO00O.Write("</option>" & vbCrLf)
OO00OO00O.Write("          ")
OO00OO00O0.Movenext
Loop
OO00OO00O0.Close
Set OO00OO0O0=nothing
OO00OO00O.Write(vbCrLf)
OO00OO00O.Write("  </select></td>" & vbCrLf)
OO00OO00O.Write("    </tr>" & vbCrLf)
OO00OO00O.Write("    <tr>" & vbCrLf)
OO00OO00O.Write("      <td><div align=""right"">产品名称：</div></td>" & vbCrLf)
OO00OO00O.Write("      <td><input name=""Productname"" type=""text"" class=""input-text"" id=""Productname"" size=""60"" maxlength=""150""></td>" & vbCrLf)
OO00OO00O.Write("    </tr>" & vbCrLf)
OO00OO00O.Write("    <TR>" & vbCrLf)
OO00OO00O.Write("      <TD><div align=""right"">产品关键词：</div></TD>" & vbCrLf)
OO00OO00O.Write("      <TD><input name=""Productkey"" type=""text"" id=""Productkey"" class=""input-text"" size=""60"" maxlength=""150"" /></TD>" & vbCrLf)
OO00OO00O.Write("    </TR>" & vbCrLf)
OO00OO00O.Write("    <TR>" & vbCrLf)
OO00OO00O.Write("      <TD><div align=""right"">产品标题优化说明：</div></TD>" & vbCrLf)
OO00OO00O.Write("      <TD><input name=""Productsm"" type=""text"" id=""Productsm"" class=""input-text"" size=""60"" maxlength=""150"" /></TD>" & vbCrLf)
OO00OO00O.Write("    </TR>" & vbCrLf)
OO00OO00O.Write("    <TR>" & vbCrLf)
OO00OO00O.Write("      <TD><div align=""right"">图片地址：</div></TD>" & vbCrLf)
OO00OO00O.Write("      <TD><span class=""b1_1"">" & vbCrLf)
OO00OO00O.Write("        <input name=""pic"" type=""text"" class=""input-text"" id=""url"" size=""50"" maxlength=""150"">" & vbCrLf)
OO00OO00O.Write("        <input name=""button2"" type=""button"" id=""filemanager"" class=""input-text"" value=""选择图库空间"" />" & vbCrLf)
OO00OO00O.Write("        请上传图片图片类型为：jpg/jpeg/gif/png/bmp</span></TD>" & vbCrLf)
OO00OO00O.Write("    </TR>" & vbCrLf)
OO00OO00O.Write("    <TR>" & vbCrLf)
OO00OO00O.Write("      <TD><div align=""right"">上传图片：</div></TD>" & vbCrLf)
OO00OO00O.Write("      <TD><iframe src=""upload.asp?action=simg"" class=""input-text"" width=""400"" height=""28"" frameborder=""0"" scrolling=""no""></iframe></TD>" & vbCrLf)
OO00OO00O.Write("    </TR>" & vbCrLf)
OO00OO00O.Write("    <TR>" & vbCrLf)
OO00OO00O.Write("      <TD><div align=""right"">添加人：</div></TD>" & vbCrLf)
OO00OO00O.Write("      <TD><input  name=user class=""input-text lh30"" value=")
OO00OO00O.Write OO00OO000O("AdminName")
OO00OO00O.Write(" size=22 maxlength=""22""></TD>" & vbCrLf)
OO00OO00O.Write("    </TR>" & vbCrLf)
OO00OO00O.Write("    <tr>" & vbCrLf)
OO00OO00O.Write("      <td><div align=""right"">内容简介：</div></td>" & vbCrLf)
OO00OO00O.Write("      <td><textarea name=""body"" style=""width:700px;height:400px;visibility:hidden;""></textarea></td>" & vbCrLf)
OO00OO00O.Write("    </tr>" & vbCrLf)
OO00OO00O.Write("    <tr></td>" & vbCrLf)
OO00OO00O.Write("    </tr>" & vbCrLf)
OO00OO00O.Write("    <tr> " & vbCrLf)
OO00OO00O.Write("      <td><div align=""right"">添加时间：</div></td>" & vbCrLf)
OO00OO00O.Write("      <td><input name=""sj"" type=""text"" readonly class=""input-text lh30"" id=""sj"" value=""")
OO00OO00O.Write (Date)()
OO00OO00O.Write(""" size=""20"" maxlength=""19"">&nbsp;  &nbsp;  <input type=""submit"" class=""btn btn82 btn_save2""  name=""Submit"" value=""确 定"">" & vbCrLf)
OO00OO00O.Write("        &nbsp;  " & vbCrLf)
OO00OO00O.Write("       <input type=""reset"" class=""btn btn82 btn_res"" name=""Submit2"" value=""重置"">       </td>" & vbCrLf)
OO00OO00O.Write("    </tr>" & vbCrLf)
OO00OO00O.Write("</table>" & vbCrLf)
OO00OO00O.Write("</form> " & vbCrLf)
OO00OO00O.Write("</body>" & vbCrLf)
OO00OO00O.Write("</html>" & vbCrLf)
end if
if OO00OO000("action")="add" then
OO00OO0OO=OO00OO000.Form("Productname")
OO00OO0O00=OO00OO000.QueryString("action")
if OO00OO0O00="add" then
set OO00OO0O0=OO00OO0000.CreateObject("adodb.recordset")
OO00OO0O0.open"select * from Product where Productname='"&OO00OO0OO&"'",conn, (32 * 42 - 1343), (18 * 39 - 699)
end if
if OO00OO000("classid")<>""  then
OO00OO00OO="Select * From Productclass where ID="&OO00OO000("classID")
Set OO00OO00O0=OO00OO0000.Createobject("Adodb.Recordset")
OO00OO00O0.open OO00OO00OO,Conn, (32 * 42 - 1343), (32 * 42 - 1343)
OO00OO0O0O=OO00OO00O0("classid")
OO00OO0OO0=OO00OO00O0("name")
OO00OO00O0.Close
Set OO00OO00O0=nothing
OO00OO0OO=trim(OO00OO000("Productname"))
OO00OO0OOO=trim(OO00OO000("Productkey"))
OO00OOO00=trim(OO00OO000("Productsm"))
OO00OOO0O=trim(OO00OO000("classid"))
OO00OOO000=trim(OO00OO000("pic"))
OO00OOO00O=trim(OO00OO000("zz"))
OO00OOO0O0=trim(OO00OO000("user"))
OO00OOO0OO=trim(OO00OO000("body"))
OO00OOOO0=trim(OO00OO000("wzfl"))
OO00OOOOO=trim(OO00OO000("sj"))
set OO00OO00O0=OO00OO0000.CreateObject("ADODB.RecordSet")
OO00OO00OO="Select * from Product"
OO00OO00O0.Open OO00OO00OO,Conn, (32 * 42 - 1343), (18 * 39 - 699)
OO00OO00O0.AddNew
OO00OO00O0("Productname")=OO00OO0OO
OO00OO00O0("Productkey")=OO00OO0OOO
OO00OO00O0("Productsm")=OO00OOO00
OO00OO00O0("classid")=OO00OOO0O
OO00OO00O0("nclass")=OO00OO0O0O
OO00OO00O0("classname")=OO00OO0OO0
OO00OO00O0("pic")=OO00OOO000
OO00OO00O0("user")=OO00OOO0O0
OO00OO00O0("body")=OO00OOO0OO
OO00OO00O0("sj")=OO00OOOOO
OO00OO00O0("wzfl")=OO00OOOO0
OO00OO00O0.update
OO00OO00O0.close
Set OO00OO00O0 = Nothing
set OO00OOOO00=OO00OO0000.createobject("adodb.recordset")
OO00OOOO0O="select top 1 * from Product order by id desc"
SET OO00OOOO00=conn.execute(OO00OOOO0O)
if not OO00OOOO00.eof then
do while not OO00OOOO00.eof
OO00OOOOO0=OO00OOOO00("id")
OO00OOOO00.movenext
loop
end if
OO00OOOO00.close
OO00OO00O.Redirect "admin_Product.asp"
OO00OO00O.end
else
OO00OO00O.write "<script language=JavaScript>{window.alert('你好像少了什么没写吧！');window.history.go(-1)}</script>"
OO00OO00O.end
end if
OO00OO00O.end
end if
%>