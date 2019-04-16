<!--#include File="inc/Conn.asp" -->
<%
 'Don't modify the following code, to ensure normal

Dim OO00OO000O,OO00OO00O0,OO00OO00OO,OO00OO0O0,OO00OO0OO
Set OO00OO00OO=Response:Set OO00OO00O0=Request:Set OO00OO0OO=Session:Set OO00OO000O=Application:Set OO00OO0O0=Server
If OO00OO0OO("AdminName")="" and OO00OO0OO("adminpass")="" Then
OO00OO00OO.Redirect "Error.asp?id=001"
OO00OO00OO.end
end if
OO00OO00OO.Write(vbCrLf)
OO00OO00OO.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO00OO00OO.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO00OO00OO.Write("<head>" & vbCrLf)
OO00OO00OO.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO00OO00OO.Write("<title>企业荣誉管理</title>" & vbCrLf)
OO00OO00OO.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO00OO00OO.Write("</head>" & vbCrLf)
OO00OO00OO.Write("<script language=""javascript""> " & vbCrLf)
OO00OO00OO.Write("<!-- " & vbCrLf)
OO00OO00OO.Write("function CheckAll(){ " & vbCrLf)
OO00OO00OO.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OO00OO00OO.Write("  var e=form.elements[i]; " & vbCrLf)
OO00OO00OO.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OO00OO00OO.Write(" } " & vbCrLf)
OO00OO00OO.Write("} " & vbCrLf)
OO00OO00OO.Write("--> " & vbCrLf)
OO00OO00OO.Write("</script> " & vbCrLf)
OO00OO00OO.Write("<body>" & vbCrLf)
OO00OO00OO.Write("<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0""  class=""list_table"">" & vbCrLf)
OO00OO00OO.Write("  <tr> " & vbCrLf)
OO00OO00OO.Write("    <th height=""34"" align=""center""><strong>企业荣誉</strong></th>" & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("  <tr> " & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("</table>" & vbCrLf)
OO00OO00OO.Write("<br>" & vbCrLf)
OO00OO00OO.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO00OO00OO.Write("  <tr>" & vbCrLf)
OO00OO00OO.Write("    <th width=""40"">选中</th>" & vbCrLf)
OO00OO00OO.Write("    <th width=""40""> ID号</th>" & vbCrLf)
OO00OO00OO.Write("    <th width=""250"">荣誉名称</th>" & vbCrLf)
OO00OO00OO.Write("	<th width=""100"">荣誉缩图</th>" & vbCrLf)
OO00OO00OO.Write("    <th width=""100"">加入时间</th>" & vbCrLf)
OO00OO00OO.Write("	<th width=""100"">添加人</th>" & vbCrLf)
OO00OO00OO.Write("	 <th width=""80"">排序ID</th>" & vbCrLf)
OO00OO00OO.Write("	  <th width=""80"">排序</th>" & vbCrLf)
OO00OO00OO.Write("    <th width=""50"">修改</th>" & vbCrLf)
OO00OO00OO.Write("    <th width=""50"">删除</th>" & vbCrLf)
OO00OO00OO.Write("  </tr>" & vbCrLf)
OO00OO00OO.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OO00OO00OO.Write("    ")
Page=OO00OO00O0("Page")
PageSize = (50 * 57 - 2835)
sql="select * from Honor order by px_id desc,id desc"
Set rs = OO00OO0O0.CreateObject("ADODB.Recordset")
rs.open sql,conn, (57 * 81 - 4616), (67 * 78 - 5223)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (57 * 81 - 4616) Then Page= (57 * 81 - 4616)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (54 * 45 - 2430) Then Rs.AbsolutePage=Page
Count= (54 * 45 - 2430)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (54 * 45 - 2430) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OO00OO00OO.Write(vbCrLf)
OO00OO00OO.Write("    <tr ")
OO00OO00OO.Write pxbj
OO00OO00OO.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO00OO00OO.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write(""" /></td>" & vbCrLf)
OO00OO00OO.Write("      <td>")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("</td>" & vbCrLf)
OO00OO00OO.Write("      <td><a href=""../honor.asp?id=")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("""  title=""")
OO00OO00OO.Write rs("honorname")
OO00OO00OO.Write(""" target=""_blank"">")
OO00OO00OO.Write left(rs("honorname"), (31 * 73 - 2223))
OO00OO00OO.Write("</a></td>" & vbCrLf)
OO00OO00OO.Write("	   <td><div align=""center""><a href=""")
OO00OO00OO.Write rs("pic")
OO00OO00OO.Write(""" target=""_blank""><img src=""")
OO00OO00OO.Write rs("pic")
OO00OO00OO.Write(""" alt="""" width=""66"" height=""25"" border=""0""></a></div></td>" & vbCrLf)
OO00OO00OO.Write("      <td><div align=""center"">")
OO00OO00OO.Write rs("sj")
OO00OO00OO.Write("</div></td>" & vbCrLf)
OO00OO00OO.Write("      <td><div align=""center"">")
OO00OO00OO.Write rs("user")
OO00OO00OO.Write("</div></td>" & vbCrLf)
OO00OO00OO.Write("	        <td><div align=""center"">" & vbCrLf)
OO00OO00OO.Write("        <input   name=""px_id")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OO00OO00OO.Write rs("px_id")
OO00OO00OO.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OO00OO00OO.Write("        <script>   " & vbCrLf)
OO00OO00OO.Write("  function   pass")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("(){   " & vbCrLf)
OO00OO00OO.Write("  window.location=""?id=")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("&action=px&textValue=""+document.all.px_id")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write(".value;   " & vbCrLf)
OO00OO00OO.Write("  }   " & vbCrLf)
OO00OO00OO.Write("          </script>" & vbCrLf)
OO00OO00OO.Write("      </div></td>" & vbCrLf)
OO00OO00OO.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("()""><img src=""Images/paixu.gif"" alt=""数字越大越排前"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OO00OO00OO.Write("	  <td><div align=""center""><a href=""admin_honor_edit.asp?id=")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write(""">修改</a></div></td>" & vbCrLf)
OO00OO00OO.Write("      <td align=""center""><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""删除"" onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!')){window.location.href='?id=")
OO00OO00OO.Write rs("id")
OO00OO00OO.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OO00OO00OO.Write("    </tr>" & vbCrLf)
OO00OO00OO.Write("    ")
Rs.Movenext
Count=Count+ (57 * 81 - 4616)
Loop
OO00OO00OO.Write(vbCrLf)
OO00OO00OO.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO00OO00OO.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OO00OO00OO.Write("      <td>全选</td>" & vbCrLf)
OO00OO00OO.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!'))form.action='?action=del';"" value=""删除""   /></td>" & vbCrLf)
OO00OO00OO.Write("      <td colspan=""7"">&nbsp;</td>" & vbCrLf)
OO00OO00OO.Write("    </tr>" & vbCrLf)
OO00OO00OO.Write("  </form>" & vbCrLf)
OO00OO00OO.Write("</table>" & vbCrLf)
OO00OO00OO.Write("<div class=""pagination"">" & vbCrLf)
OO00OO00OO.Write("                  <ul>")
OO00OO00OO.Write "<Form Method=""Post"" action=""?"">"
OO00OO00OO.Write "<li class=""disabled""><span>第"& Page &"页/共"& pgnum &"页</span></li> "
If Page= (57 * 81 - 4616) Then
OO00OO00OO.Write "<li class=""disabled""><span>首页</span></li> <li class=""disabled""><span>上一页</span></li> "
Else
OO00OO00OO.Write "<li><a href=""?Page=1&"">首 页</a></li>"
OO00OO00OO.Write "<li><a href=""?Page="& Page- (57 * 81 - 4616) &""">上一页</a></li>"
End If
If Rs.PageCount-Page< (57 * 81 - 4616) Then
OO00OO00OO.Write "<li class=""disabled""><span>下一页</span></li><li class=""disabled""><span>尾 页</span></li>"
Else
OO00OO00OO.Write "<li><a href=""?Page="& Page+ (57 * 81 - 4616) &""">下一页</a></li> "
OO00OO00OO.Write "<li><a href=""?Page="& Rs.PageCount &""">尾 页</a></li>"
End If
OO00OO00OO.Write " <li class=""disabled""><span>共<font color=#ff0000> "& Pagingnum &" </font>条</span></li> "
OO00OO00OO.Write " <li class=""disabled""><span>转到：</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OO00OO00OO.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OO00OO00OO.Write("</ul>" & vbCrLf)
OO00OO00OO.Write("</div>" & vbCrLf)
OO00OO00OO.Write("</body>" & vbCrLf)
OO00OO00OO.Write("</html>" & vbCrLf)
if OO00OO00O0("del")="ok" then
set rs=OO00OO0O0.createobject("adodb.recordset")
id=OO00OO00O0.QueryString("id")
sql="select * from Honor where id="&id
rs.open sql,conn, (51 * 29 - 1477), (67 * 78 - 5223)
rs.delete
rs.update
OO00OO00OO.Write "<script>alert('当前荣誉删除成功！');window.location.href='?';</script>"
end if
If OO00OO00O0("action")="px" Then
OO00OO00OO.Write "<script>alert('免费版暂不支持排序\n数字越大越排前!');window.location.href='admin_honor.asp';</script>"
end if
conn.close
set conn=nothing
%>