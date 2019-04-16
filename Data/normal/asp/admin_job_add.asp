<!--#include File="inc/Conn.asp" -->
<%
 Set TLTT=Response:Set TLTL=Request:Set TLTLT=Session:Set TLLTT=Application:Set TLTLL=Server
If TLTLT("AdminName")="" and TLTLT("adminpass")="" Then
TLTT.Redirect "Error.asp?id=005"
Else
TLTT.Write(vbCrLf)
TLTT.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
TLTT.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
TLTT.Write("<head>" & vbCrLf)
TLTT.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
TLTT.Write("<title>添加人才招聘</title>" & vbCrLf)
TLTT.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
TLTT.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/themes/default/default.css"" />" & vbCrLf)
TLTT.Write("	<link rel=""stylesheet"" href=""kindeditor-4.1.10-l/plugins/code/prettify.css"" />" & vbCrLf)
TLTT.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/kindeditor.js""></script>" & vbCrLf)
TLTT.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/lang/zh_CN.js""></script>" & vbCrLf)
TLTT.Write("	<script charset=""utf-8"" src=""kindeditor-4.1.10-l/plugins/code/prettify.js""></script>" & vbCrLf)
TLTT.Write("	<script>" & vbCrLf)
TLTT.Write("		KindEditor.ready(function(K) {" & vbCrLf)
TLTT.Write("			var editor1 = K.create('textarea[name=""body""]', {" & vbCrLf)
TLTT.Write("				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css'," & vbCrLf)
TLTT.Write("				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp'," & vbCrLf)
TLTT.Write("				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp'," & vbCrLf)
TLTT.Write("				allowFileManager : true," & vbCrLf)
TLTT.Write("				afterCreate : function() {" & vbCrLf)
TLTT.Write("					var self = this;" & vbCrLf)
TLTT.Write("					K.ctrl(document, 13, function() {" & vbCrLf)
TLTT.Write("						self.sync();" & vbCrLf)
TLTT.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
TLTT.Write("					});" & vbCrLf)
TLTT.Write("					K.ctrl(self.edit.doc, 13, function() {" & vbCrLf)
TLTT.Write("						self.sync();" & vbCrLf)
TLTT.Write("						K('form[name=example]')[0].submit();" & vbCrLf)
TLTT.Write("					});" & vbCrLf)
TLTT.Write("				}" & vbCrLf)
TLTT.Write("			});" & vbCrLf)
TLTT.Write("			prettyPrint();" & vbCrLf)
TLTT.Write("		});" & vbCrLf)
TLTT.Write("	</script>" & vbCrLf)
TLTT.Write("</head>" & vbCrLf)
TLTT.Write("<body>" & vbCrLf)
TLTT.Write("             <div class=""box_top"">" & vbCrLf)
TLTT.Write("              <div align=""center""><strong>添加人才招聘</strong></div>" & vbCrLf)
TLTT.Write("            </div>" & vbCrLf)
TLTT.Write("   <form onSubmit=""return CheckForm();"" action=""?action=add"" id=""myform"" class=""jqtransform"" name=""myform"" method=""post"">" & vbCrLf)
TLTT.Write("<table width=""90%"" border=""0"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
TLTT.Write("    <tr>" & vbCrLf)
TLTT.Write("      <td><div align=""right"">职务名称：</div></td>" & vbCrLf)
TLTT.Write("      <td><input name=""jobname"" type=""text"" id=""jobname"" class=""input-text"" size=""60"" maxlength=""150""></td>" & vbCrLf)
TLTT.Write("    </tr>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">招聘人数：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><input name=""renshu"" type=""text"" id=""renshu"" class=""input-text"" size=""15"" maxlength=""5"" />" & vbCrLf)
TLTT.Write("      人 </TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">学历要求：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><select name=""xueli"" class=""input-text"" id=""xueli"">" & vbCrLf)
TLTT.Write("            <option value=""初中以上"">初中以上</option>" & vbCrLf)
TLTT.Write("            <option value=""中专/高中"">中专/高中</option>" & vbCrLf)
TLTT.Write("            <option value=""大专"">大专</option>" & vbCrLf)
TLTT.Write("            <option value=""本科"">本科</option>" & vbCrLf)
TLTT.Write("            <option value=""博士/硕士"">博士/硕士</option>" & vbCrLf)
TLTT.Write("			<option value=""其它"">其它</option>" & vbCrLf)
TLTT.Write("            <option value=""学历不限"" selected=""selected"">学历不限</option>" & vbCrLf)
TLTT.Write("      </select></TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">性别要求 ：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><label>" & vbCrLf)
TLTT.Write("        <input type=""radio"" name=""xingbie"" value=""男"" />" & vbCrLf)
TLTT.Write("        男" & vbCrLf)
TLTT.Write("        <input type=""radio"" name=""xingbie"" value=""女"" />" & vbCrLf)
TLTT.Write("        女" & vbCrLf)
TLTT.Write("        <input name=""xingbie"" type=""radio"" value=""不限"" checked=""checked"" />" & vbCrLf)
TLTT.Write("        不限" & vbCrLf)
TLTT.Write("      </label></TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">年龄要求：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><input name=""nianlinga"" type=""text"" class=""input-text"" id=""nianlinga"" value=""19"" size=""8"" maxlength=""2"" />" & vbCrLf)
TLTT.Write("        到" & vbCrLf)
TLTT.Write("        <input name=""nianlingb"" type=""text"" class=""input-text"" id=""nianlingb"" value=""58"" size=""8"" maxlength=""2"" />" & vbCrLf)
TLTT.Write("        岁</TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">工资待遇：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><input name=""daiyu"" type=""text"" id=""daiyu"" class=""input-text"" size=""15"" maxlength=""5"" /></TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <TR>" & vbCrLf)
TLTT.Write("      <TD><div align=""right"">添加人：</div></TD>" & vbCrLf)
TLTT.Write("      <TD><input  name=user class=""input-text lh30"" value=")
TLTT.Write TLTLT("AdminName")
TLTT.Write(" size=20 maxlength=""22""></TD>" & vbCrLf)
TLTT.Write("    </TR>" & vbCrLf)
TLTT.Write("    <tr>" & vbCrLf)
TLTT.Write("      <td><div align=""right"">内容简介：</div></td>" & vbCrLf)
TLTT.Write("      <td><textarea name=""body"" style=""width:700px;height:300px;visibility:hidden;""></textarea></td>" & vbCrLf)
TLTT.Write("    </tr>" & vbCrLf)
TLTT.Write("    <tr></td>" & vbCrLf)
TLTT.Write("    </tr>" & vbCrLf)
TLTT.Write("    <tr> " & vbCrLf)
TLTT.Write("      <td><div align=""right"">添加时间：</div></td>" & vbCrLf)
TLTT.Write("      <td><input name=""sj"" type=""text"" readonly class=""input-text lh30"" id=""sj"" value=""")
TLTT.Write (Date)()
TLTT.Write(""" size=""20"" maxlength=""19"">&nbsp;  &nbsp;  <input type=""submit"" class=""btn btn82 btn_save2""  name=""Submit"" value=""确 定"">" & vbCrLf)
TLTT.Write("        &nbsp;  " & vbCrLf)
TLTT.Write("       <input type=""reset"" class=""btn btn82 btn_res"" name=""Submit2"" value=""重置"">       </td>" & vbCrLf)
TLTT.Write("    </tr>" & vbCrLf)
TLTT.Write("</table>" & vbCrLf)
TLTT.Write("</form> " & vbCrLf)
TLTT.Write("</body>" & vbCrLf)
TLTT.Write("</html>" & vbCrLf)
end if
if TLTL("action")="add" then
jobname=TLTL.Form("jobname")
action=TLTL.QueryString("action")
if action="add" then
set rsadd=TLTLL.CreateObject("adodb.recordset")
rsadd.open"select * from job where jobname='"&jobname&"'",conn, (33 * 19 - 626), (89 * 94 - 8363)
if not rsadd.eof or not rsadd.bof then
TLTT.Write("<script language=javascript>alert('有这篇人才招聘了，为了搜索引擎优化，请不要重名!');history.go(-1)</script>")
TLTT.End()
end if
end if
jobname=trim(TLTL("jobname"))
renshu=trim(TLTL("renshu"))
xueli=trim(TLTL("xueli"))
xingbie=trim(TLTL("xingbie"))
nianlinga=trim(TLTL("nianlinga"))
nianlingb=trim(TLTL("nianlingb"))
daiyu=trim(TLTL("daiyu"))
user=trim(TLTL("user"))
body=trim(TLTL("body"))
sj=trim(TLTL("sj"))
if jobname=""  then
TLTT.Write("<script language=javascript>alert('人才招聘标题不能为空!');history.go(-1)</script>")
TLTT.end
end if
IF not isNumeric(TLTL("renshu")) then
TLTT.write("<script>alert(""亲！人数为数字!""); history.go(-1);</script>")
TLTT.End
End If
IF not isNumeric(TLTL("nianlinga")) then
TLTT.write("<script>alert(""亲！年龄为数字!""); history.go(-1);</script>")
TLTT.End
End If
IF not isNumeric(TLTL("nianlingb")) then
TLTT.write("<script>alert(""亲！年龄为数字!""); history.go(-1);</script>")
TLTT.End
End If
set rs=TLTLL.CreateObject("ADODB.RecordSet")
Sql="Select * from job"
Rs.Open Sql,Conn, (33 * 19 - 626), (89 * 94 - 8363)
Rs.AddNew
rs("jobname")=jobname
rs("renshu")=renshu
rs("xueli")=xueli
rs("xingbie")=xingbie
rs("nianlinga")=nianlinga
rs("nianlingb")=nianlingb
rs("daiyu")=daiyu
rs("user")=user
rs("body")=body
rs("sj")=sj
rs.update
rs.close
Set Rs = Nothing
set rs4=TLTLL.createobject("adodb.recordset")
sql4="select top 1 * from job order by id desc"
SET Rs4=conn.execute(sql4)
if not rs4.eof then
do while not rs4.eof
id=rs4("id")
rs4.movenext
loop
end if
rs4.close
TLTT.Redirect "admin_job.asp"
TLTT.end
else
end if
TLTT.end
%>