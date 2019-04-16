<!--#include File="inc/Conn.asp" -->
<%
 
Set OO00OO0OO0=Response:Set OO00OO0O0O=Request:Set OO00OOO00=Session:Set OO00OO0O00=Application:Set OO00OO0OOO=Server
If OO00OOO00("AdminName")="" and OO00OOO00("adminpass")="" Then
OO00OO0OO0.Redirect "Error.asp?id=005"
Else
OO00OO0OO0.Write(vbCrLf)
OO00OO0OO0.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO0OO0.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO0OO0.Write("<head>" & vbCrLf)
OO00OO0OO0.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO0OO0.Write("<title>添加新闻</title>" & vbCrLf)
OO00OO0OO0.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO0OO0.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
OO00OO0OO0.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
OO00OO0OO0.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
OO00OO0OO0.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
OO00OO0OO0.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
OO00OO0OO0.Write("	<script>" & vbCrLf)
OO00OO0OO0.Write("		KindEditor.ready(function(K) {" & vbCrLf)
OO00OO0OO0.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
OO00OO0OO0.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
OO00OO0OO0.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
OO00OO0OO0.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
OO00OO0OO0.Write("				allowFileManager : true," & vbCrLf)
OO00OO0OO0.Write("				afterCreate : function() {" & vbCrLf)
OO00OO0OO0.Write("					var self = this;" & vbCrLf)
OO00OO0OO0.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
OO00OO0OO0.Write("						self.sync();" & vbCrLf)
OO00OO0OO0.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0OO0.Write("					});" & vbCrLf)
OO00OO0OO0.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
OO00OO0OO0.Write("						self.sync();" & vbCrLf)
OO00OO0OO0.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
OO00OO0OO0.Write("					});" & vbCrLf)
OO00OO0OO0.Write("				}" & vbCrLf)
OO00OO0OO0.Write("			});" & vbCrLf)
OO00OO0OO0.Write("			prettyPrint();" & vbCrLf)
OO00OO0OO0.Write("		});" & vbCrLf)
OO00OO0OO0.Write("	</script>" & vbCrLf)
OO00OO0OO0.Write("</head>" & vbCrLf)
OO00OO0OO0.Write("<body>" & vbCrLf)
OO00OO0OO0.Write("             <div class=""box_top"">" & vbCrLf)
OO00OO0OO0.Write("              <div align=""center""><strong>添加新闻</strong></div>" & vbCrLf)
OO00OO0OO0.Write("            </div>" & vbCrLf)
OO00OO0OO0.Write("   <form onSubmit=""return CheckForm();"" action=""?action=add"" id=""myform"" class=""jqtransform"" name=""myform"" method=""post"">" & vbCrLf)
OO00OO0OO0.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO0OO0.Write("      <tr>" & vbCrLf)
OO00OO0OO0.Write("      <td> <div align=""right"">所属类别：</div></td>" & vbCrLf)
OO00OO0OO0.Write("      <td> <select name=""classid"" class=""input-text"" id=""classid"">" & vbCrLf)
OO00OO0OO0.Write("          ")
Set Rs=OO00OO0OOO.Createobject("Adodb.Recordset")
Sql="Select * From newsclass"
Rs.open Sql,Conn, (53 * 28 - 1483), (70 * 35 - 2447)
Do While not Rs.Eof
OO00OO0OO0.Write(vbCrLf)
OO00OO0OO0.Write("          <option value=""")
OO00OO0OO0.Write rs("id")
OO00OO0OO0.Write(""">")
OO00OO0OO0.Write rs("name")
OO00OO0OO0.Write("</option>" & vbCrLf)
OO00OO0OO0.Write("          ")
Rs.Movenext
Loop
Rs.Close
Set Rsadd=nothing
OO00OO0OO0.Write(vbCrLf)
OO00OO0OO0.Write("  </select></td>" & vbCrLf)
OO00OO0OO0.Write("    </tr>" & vbCrLf)
OO00OO0OO0.Write("    <tr>" & vbCrLf)
OO00OO0OO0.Write("      <td><div align=""right"">名称：</div></td>" & vbCrLf)
OO00OO0OO0.Write("      <td><input name=""newsname"" type=""text"" id=""newsname"" class=""input-text"" size=""60"" maxlength=""150""></td>" & vbCrLf)
OO00OO0OO0.Write("    </tr>" & vbCrLf)
OO00OO0OO0.Write("    <TR>" & vbCrLf)
OO00OO0OO0.Write("      <TD><div align=""right"">新闻来源：</div></TD>" & vbCrLf)
OO00OO0OO0.Write("      <TD><input  name=wzly class=""input-text lh30"" id=""wzly"" value=""本站整理"" size=25 maxlength=""40"">" & vbCrLf)
OO00OO0OO0.Write("        <SELECT name=font class=""input-text"" " & vbCrLf)
OO00OO0OO0.Write("      onchange=wzly.value=this.value;>" & vbCrLf)
OO00OO0OO0.Write("          <OPTION value="""" " & vbCrLf)
OO00OO0OO0.Write("        selected>选择常用来源</OPTION>" & vbCrLf)
OO00OO0OO0.Write("          <OPTION value=本站原创>本站原创</OPTION>" & vbCrLf)
OO00OO0OO0.Write("          <OPTION " & vbCrLf)
OO00OO0OO0.Write("        value=本站整理>本站整理</OPTION>" & vbCrLf)
OO00OO0OO0.Write("          <OPTION value=网络收集>网络收集</OPTION>" & vbCrLf)
OO00OO0OO0.Write("        </SELECT></TD>" & vbCrLf)
OO00OO0OO0.Write("    </TR>" & vbCrLf)
OO00OO0OO0.Write("    <TR>" & vbCrLf)
OO00OO0OO0.Write("      <TD><div align=""right"">添加人：</div></TD>" & vbCrLf)
OO00OO0OO0.Write("      <TD><input  name=user class=""input-text lh30"" value=admin size=22 maxlength=""22""></TD>" & vbCrLf)
OO00OO0OO0.Write("    </TR>" & vbCrLf)
OO00OO0OO0.Write("    <tr>" & vbCrLf)
OO00OO0OO0.Write("      <td><div align=""right"">内容简介：</div></td>" & vbCrLf)
OO00OO0OO0.Write("      <td><textarea name=""body"" style=""width:700px;height:400px;visibility:hidden;""></textarea></td>" & vbCrLf)
OO00OO0OO0.Write("    </tr>" & vbCrLf)
OO00OO0OO0.Write("    <tr></td>" & vbCrLf)
OO00OO0OO0.Write("    </tr>" & vbCrLf)
OO00OO0OO0.Write("    <tr> " & vbCrLf)
OO00OO0OO0.Write("      <td><div align=""right"">添加时间：</div></td>" & vbCrLf)
OO00OO0OO0.Write("      <td><input name=""sj"" type=""text"" readonly class=""input-text lh30"" id=""sj"" value=""")
OO00OO0OO0.Write (Date)()
OO00OO0OO0.Write(""" size=""20"" maxlength=""19"">&nbsp;  &nbsp;  <input type=""submit"" class=""btn btn82 btn_save2""  name=""Submit"" value=""确 定"">" & vbCrLf)
OO00OO0OO0.Write("        &nbsp;  " & vbCrLf)
OO00OO0OO0.Write("       <input type=""reset"" class=""btn btn82 btn_res"" name=""Submit2"" value=""重置"">       </td>" & vbCrLf)
OO00OO0OO0.Write("    </tr>" & vbCrLf)
OO00OO0OO0.Write("</table>" & vbCrLf)
OO00OO0OO0.Write("</form> " & vbCrLf)
OO00OO0OO0.Write("</body>" & vbCrLf)
OO00OO0OO0.Write("</html>" & vbCrLf)
end if
if OO00OO0O0O("action")="add" then
newsname=OO00OO0O0O.Form("newsname")
action=OO00OO0O0O.QueryString("action")
if action="add" then
set rsadd=OO00OO0OOO.CreateObject("adodb.recordset")
rsadd.open"select * from news where newsname='"&newsname&"'",conn, (53 * 28 - 1483), (70 * 35 - 2447)
if not rsadd.eof or not rsadd.bof then
OO00OO0OO0.Write("<script language=javascript>alert('有这篇新闻了，为了搜索引擎优化，请不要重名!');history.go(-1)</script>")
OO00OO0OO0.End()
end if
end if
if OO00OO0O0O("classid")<>""  then
Sql="Select * From newsclass where ID="&OO00OO0O0O("classID")
Set Rs=OO00OO0OOO.Createobject("Adodb.Recordset")
Rs.open Sql,Conn, (53 * 28 - 1483), (53 * 28 - 1483)
nclass=rs("classid")
classname=rs("name")
Rs.Close
Set Rs=nothing
newsname=trim(OO00OO0O0O("newsname"))
classid=trim(OO00OO0O0O("classid"))
wzly=trim(OO00OO0O0O("wzly"))
zz=trim(OO00OO0O0O("zz"))
user=trim(OO00OO0O0O("user"))
body=trim(OO00OO0O0O("body"))
wzfl=trim(OO00OO0O0O("wzfl"))
sj=trim(OO00OO0O0O("sj"))
if newsname=""  then
OO00OO0OO0.Write("<script language=javascript>alert('新闻标题不能为空!');history.go(-1)</script>")
OO00OO0OO0.end
end if
set rs=OO00OO0OOO.CreateObject("ADODB.RecordSet")
Sql="Select * from news"
Rs.Open Sql,Conn, (53 * 28 - 1483), (70 * 35 - 2447)
Rs.AddNew
rs("newsname")=newsname
rs("classid")=classid
rs("nclass")=nclass
rs("classname")=classname
rs("wzly")=wzly
rs("user")=user
rs("body")=body
rs("sj")=sj
rs("wzfl")=wzfl
rs.update
rs.close
Set Rs = Nothing
set rs4=OO00OO0OOO.createobject("adodb.recordset")
sql4="select top 1 * from news order by id desc"
SET Rs4=conn.execute(sql4)
if not rs4.eof then
do while not rs4.eof
id=rs4("id")
rs4.movenext
loop
end if
rs4.close
OO00OO0OO0.Redirect "admin_news.asp"
OO00OO0OO0.end
else
OO00OO0OO0.write "<script language=JavaScript>{window.alert('你好像少了什么没写吧！');window.history.go(-1)}</script>"
OO00OO0OO0.end
end if
OO00OO0OO0.end
end if
%>