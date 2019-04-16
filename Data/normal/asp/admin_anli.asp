 <!--#include File="inc/Conn.asp" -->
<%
 'Don't modify the following code, to ensure normal

Dim OO00OO0000,OO00OO000O,OO00OO00O0,OO00OO00OO,OO00OO0O0
Set OO00OO00O0=Response:Set OO00OO000O=Request:Set OO00OO0O0=Session:Set OO00OO0000=Application:Set OO00OO00OO=Server
If OO00OO0O0("AdminName")="" and OO00OO0O0("adminpass")="" Then
OO00OO00O0.Redirect "Error.asp?id=001"
OO00OO00O0.end
end if
OO00OO00O0.Write(vbCrLf)
OO00OO00O0.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO00O0.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO00O0.Write("<head>" & vbCrLf)
OO00OO00O0.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO00O0.Write("<title>案例管理</title>" & vbCrLf)
OO00OO00O0.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO00O0.Write("</head>" & vbCrLf)
OO00OO00O0.Write("<script language=""javascript""> " & vbCrLf)
OO00OO00O0.Write("<!-- " & vbCrLf)
OO00OO00O0.Write("function CheckAll(){ " & vbCrLf)
OO00OO00O0.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OO00OO00O0.Write("  var e=form.elements[i]; " & vbCrLf)
OO00OO00O0.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OO00OO00O0.Write(" } " & vbCrLf)
OO00OO00O0.Write("} " & vbCrLf)
OO00OO00O0.Write("--> " & vbCrLf)
OO00OO00O0.Write("</script> " & vbCrLf)
OO00OO00O0.Write("<body>" & vbCrLf)
OO00OO00O0.Write("<br>" & vbCrLf)
OO00OO00O0.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO00O0.Write("  <tr>" & vbCrLf)
OO00OO00O0.Write("    <th width=""40"">选中</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""40""> ID号</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""250""> 案例名称</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""120"">案例缩图</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""100"">加入时间</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""80"">排序ID</th>" & vbCrLf)
OO00OO00O0.Write("	<th width=""80"">排序</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""50"">修改</th>" & vbCrLf)
OO00OO00O0.Write("    <th width=""50"">删除</th>" & vbCrLf)
OO00OO00O0.Write("  </tr>" & vbCrLf)
OO00OO00O0.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OO00OO00O0.Write("    ")
Page=OO00OO000O("Page")
PageSize = (108 * 28 - 3009)
sql="select * from anli order by px_id desc,id desc"
Set rs = OO00OO00OO.CreateObject("ADODB.Recordset")
rs.open sql,conn, (105 * 53 - 5564), (88 * 71 - 6245)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (105 * 53 - 5564) Then Page= (105 * 53 - 5564)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (81 * 51 - 4131) Then Rs.AbsolutePage=Page
Count= (81 * 51 - 4131)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (81 * 51 - 4131) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OO00OO00O0.Write(vbCrLf)
OO00OO00O0.Write("    <tr ")
OO00OO00O0.Write pxbj
OO00OO00O0.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO00OO00O0.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write(""" /></td>" & vbCrLf)
OO00OO00O0.Write("      <td>")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("</td>" & vbCrLf)
OO00OO00O0.Write("      <td><a href=""../anli.asp?id=")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("""  title=""")
OO00OO00O0.Write rs("anliname")
OO00OO00O0.Write(""" target=""_blank"">")
OO00OO00O0.Write left(rs("anliname"), (21 * 54 - 1094))
OO00OO00O0.Write("</a></td>" & vbCrLf)
OO00OO00O0.Write("      <td><a href=""")
OO00OO00O0.Write rs("pic")
OO00OO00O0.Write(""" target=""_blank""><img src=""")
OO00OO00O0.Write rs("pic")
OO00OO00O0.Write(""" alt="""" width=""66"" height=""25"" border=""0""></a></td>" & vbCrLf)
OO00OO00O0.Write("      <td><div align=""center"">")
OO00OO00O0.Write rs("sj")
OO00OO00O0.Write("</div></td>" & vbCrLf)
OO00OO00O0.Write("      <td><div align=""center"">" & vbCrLf)
OO00OO00O0.Write("        <input   name=""px_id")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OO00OO00O0.Write rs("px_id")
OO00OO00O0.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OO00OO00O0.Write("        <script>   " & vbCrLf)
OO00OO00O0.Write("  function   pass")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("(){   " & vbCrLf)
OO00OO00O0.Write("  window.location=""?id=")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("&action=px&textValue=""+document.all.px_id")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write(".value;   " & vbCrLf)
OO00OO00O0.Write("  }   " & vbCrLf)
OO00OO00O0.Write("          </script>" & vbCrLf)
OO00OO00O0.Write("      </div></td>" & vbCrLf)
OO00OO00O0.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("()""><img src=""Images/paixu.gif"" alt=""数字越大越排前"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OO00OO00O0.Write("      " & vbCrLf)
OO00OO00O0.Write("      <td><div align=""center""><a href=""admin_anli_edit.asp?id=")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write(""">修改</a></div></td>" & vbCrLf)
OO00OO00O0.Write("      <td><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""删除"" onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!')){window.location.href='admin_anli.asp?id=")
OO00OO00O0.Write rs("id")
OO00OO00O0.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OO00OO00O0.Write("    </tr>" & vbCrLf)
OO00OO00O0.Write("    ")
Rs.Movenext
Count=Count+ (105 * 53 - 5564)
Loop
OO00OO00O0.Write(vbCrLf)
OO00OO00O0.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO00OO00O0.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OO00OO00O0.Write("      <td>全选</td>" & vbCrLf)
OO00OO00O0.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!'))form.action='admin_anli.asp?action=del';"" value=""删除""   /></td>" & vbCrLf)
OO00OO00O0.Write("      <td colspan=""7"">&nbsp;</td>" & vbCrLf)
OO00OO00O0.Write("    </tr>" & vbCrLf)
OO00OO00O0.Write("  </form>" & vbCrLf)
OO00OO00O0.Write("</table>" & vbCrLf)
OO00OO00O0.Write("<div class=""pagination"">" & vbCrLf)
OO00OO00O0.Write("                  <ul>")
OO00OO00O0.Write "<Form Method=""Post"" action=""?"">"
OO00OO00O0.Write "<li class=""disabled""><span>第"& Page &"页/共"& pgnum &"页</span></li> "
If Page= (105 * 53 - 5564) Then
OO00OO00O0.Write "<li class=""disabled""><span>首页</span></li> <li class=""disabled""><span>上一页</span></li> "
Else
OO00OO00O0.Write "<li><a href=""?Page=1&"">首 页</a></li>"
OO00OO00O0.Write "<li><a href=""?Page="& Page- (105 * 53 - 5564) &""">上一页</a></li>"
End If
If Rs.PageCount-Page< (105 * 53 - 5564) Then
OO00OO00O0.Write "<li class=""disabled""><span>下一页</span></li><li class=""disabled""><span>尾 页</span></li>"
Else
OO00OO00O0.Write "<li><a href=""?Page="& Page+ (105 * 53 - 5564) &""">下一页</a></li> "
OO00OO00O0.Write "<li><a href=""?Page="& Rs.PageCount &""">尾 页</a></li>"
End If
OO00OO00O0.Write " <li class=""disabled""><span>共<font color=#ff0000> "& Pagingnum &" </font>条</span></li> "
OO00OO00O0.Write " <li class=""disabled""><span>转到：</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OO00OO00O0.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OO00OO00O0.Write("</ul>" & vbCrLf)
OO00OO00O0.Write("</div>" & vbCrLf)
OO00OO00O0.Write("</body>" & vbCrLf)
OO00OO00O0.Write("</html>" & vbCrLf)
if OO00OO000O("del")="ok" then
set rs=OO00OO00OO.createobject("adodb.recordset")
id=OO00OO000O.QueryString("id")
sql="select * from anli where id="&id
rs.open sql,conn, (83 * 55 - 4563), (88 * 71 - 6245)
rs.delete
rs.update
OO00OO00O0.Write "<script>alert('当前信息删除成功！');window.location.href='admin_anli.asp';</script>"
end if
If OO00OO000O("action")="px" Then
OO00OO00O0.Write "<script>alert('免费版暂不支持排序\n数字越大越排前!');window.location.href='admin_anli.asp';</script>"
end if
conn.close
set conn=nothing
%>