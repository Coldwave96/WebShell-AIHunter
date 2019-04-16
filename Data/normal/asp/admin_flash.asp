<!--#include File="inc/Conn.asp" -->
<%
 Set OO0O0=Response:Set OO00OO=Request:Set OO0O00=Session:Set OO00O0=Application:Set OO0OO=Server
If OO0O00("AdminName")="" and OO0O00("adminpass")="" Then
OO0O0.Redirect "Error.asp?id=001"
OO0O0.end
end if
OO0O0.Write(vbCrLf)
OO0O0.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OO0O0.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OO0O0.Write("<head>" & vbCrLf)
OO0O0.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OO0O0.Write("<title>企业幻灯片管理</title>" & vbCrLf)
OO0O0.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OO0O0.Write("<style type=""text/css"">" & vbCrLf)
OO0O0.Write("<!--" & vbCrLf)
OO0O0.Write(".STYLE1 {font-size: 16px}" & vbCrLf)
OO0O0.Write("-->" & vbCrLf)
OO0O0.Write("</style>" & vbCrLf)
OO0O0.Write("</head>" & vbCrLf)
OO0O0.Write("<script language=""javascript""> " & vbCrLf)
OO0O0.Write("<!-- " & vbCrLf)
OO0O0.Write("function CheckAll(){ " & vbCrLf)
OO0O0.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OO0O0.Write("  var e=form.elements[i]; " & vbCrLf)
OO0O0.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OO0O0.Write(" } " & vbCrLf)
OO0O0.Write("} " & vbCrLf)
OO0O0.Write("--> " & vbCrLf)
OO0O0.Write("</script> " & vbCrLf)
OO0O0.Write("<body>" & vbCrLf)
OO0O0.Write("<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0""  class=""list_table"">" & vbCrLf)
OO0O0.Write("  <tr> " & vbCrLf)
OO0O0.Write("    <th height=""34"" align=""center""><strong>企业幻灯片</strong></th>" & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("  <tr> " & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("</table>" & vbCrLf)
OO0O0.Write("<table width=""555"" border=""0"" cellspacing=""0"">" & vbCrLf)
OO0O0.Write("  <tr>" & vbCrLf)
OO0O0.Write("    <td><span class=""STYLE1""><a href=""admin_flash_add.asp"">添加幻灯片</a></span></td>" & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("</table>" & vbCrLf)
OO0O0.Write("<br>" & vbCrLf)
OO0O0.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OO0O0.Write("  <tr>" & vbCrLf)
OO0O0.Write("    <th width=""40"">选中</th>" & vbCrLf)
OO0O0.Write("    <th width=""40""> ID号</th>" & vbCrLf)
OO0O0.Write("    <th width=""250"">幻灯片名称</th>" & vbCrLf)
OO0O0.Write("	<th width=""100"">幻灯片缩图</th>" & vbCrLf)
OO0O0.Write("    <th width=""100"">加入时间</th>" & vbCrLf)
OO0O0.Write("	<th width=""100"">添加人</th>" & vbCrLf)
OO0O0.Write("	 <th width=""80"">排序ID</th>" & vbCrLf)
OO0O0.Write("	  <th width=""80"">排序</th>" & vbCrLf)
OO0O0.Write("    <th width=""50"">修改</th>" & vbCrLf)
OO0O0.Write("    <th width=""50"">删除</th>" & vbCrLf)
OO0O0.Write("  </tr>" & vbCrLf)
OO0O0.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OO0O0.Write("    ")
Page=OO00OO("Page")
PageSize = (105 * 80 - 8385)
sql="select * from Flash order by px_id desc,id desc"
Set rs = OO0OO.CreateObject("ADODB.Recordset")
rs.open sql,conn, (71 * 99 - 7028), (103 * 21 - 2160)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (71 * 99 - 7028) Then Page= (71 * 99 - 7028)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (24 * 37 - 888) Then Rs.AbsolutePage=Page
Count= (24 * 37 - 888)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (24 * 37 - 888) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OO0O0.Write(vbCrLf)
OO0O0.Write("    <tr ")
OO0O0.Write pxbj
OO0O0.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO0O0.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OO0O0.Write rs("id")
OO0O0.Write(""" /></td>" & vbCrLf)
OO0O0.Write("      <td>")
OO0O0.Write rs("id")
OO0O0.Write("</td>" & vbCrLf)
OO0O0.Write("      <td>")
OO0O0.Write left(rs("flashname"), (107 * 68 - 7236))
OO0O0.Write("</td>" & vbCrLf)
OO0O0.Write("	   <td><div align=""center""><a href=""../")
OO0O0.Write rs("pic")
OO0O0.Write(""" target=""_blank""><img src=""../")
OO0O0.Write rs("pic")
OO0O0.Write(""" alt="""" width=""66"" height=""25"" border=""0""></a></div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center"">")
OO0O0.Write rs("sj")
OO0O0.Write("</div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center"">")
OO0O0.Write rs("user")
OO0O0.Write("</div></td>" & vbCrLf)
OO0O0.Write("	        <td><div align=""center"">" & vbCrLf)
OO0O0.Write("        <input   name=""px_id")
OO0O0.Write rs("id")
OO0O0.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OO0O0.Write rs("px_id")
OO0O0.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OO0O0.Write("        <script>   " & vbCrLf)
OO0O0.Write("  function   pass")
OO0O0.Write rs("id")
OO0O0.Write("(){   " & vbCrLf)
OO0O0.Write("  window.location=""?id=")
OO0O0.Write rs("id")
OO0O0.Write("&action=px&textValue=""+document.all.px_id")
OO0O0.Write rs("id")
OO0O0.Write(".value;   " & vbCrLf)
OO0O0.Write("  }   " & vbCrLf)
OO0O0.Write("          </script>" & vbCrLf)
OO0O0.Write("      </div></td>" & vbCrLf)
OO0O0.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OO0O0.Write rs("id")
OO0O0.Write("()""><img src=""Images/paixu.gif"" alt=""数字越大越排前"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OO0O0.Write("	  <td><div align=""center""><a href=""admin_flash_edit.asp?id=")
OO0O0.Write rs("id")
OO0O0.Write(""">修改</a></div></td>" & vbCrLf)
OO0O0.Write("      <td align=""center""><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""删除"" onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!')){window.location.href='?id=")
OO0O0.Write rs("id")
OO0O0.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OO0O0.Write("    </tr>" & vbCrLf)
OO0O0.Write("    ")
Rs.Movenext
Count=Count+ (71 * 99 - 7028)
Loop
OO0O0.Write(vbCrLf)
OO0O0.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OO0O0.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OO0O0.Write("      <td>全选</td>" & vbCrLf)
OO0O0.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!'))form.action='?action=del';"" value=""删除""   /></td>" & vbCrLf)
OO0O0.Write("      <td colspan=""7"">&nbsp;</td>" & vbCrLf)
OO0O0.Write("    </tr>" & vbCrLf)
OO0O0.Write("  </form>" & vbCrLf)
OO0O0.Write("</table>" & vbCrLf)
OO0O0.Write("<div class=""pagination"">" & vbCrLf)
OO0O0.Write("                  <ul>")
OO0O0.Write "<Form Method=""Post"" action=""?"">"
OO0O0.Write "<li class=""disabled""><span>第"& Page &"页/共"& pgnum &"页</span></li> "
If Page= (71 * 99 - 7028) Then
OO0O0.Write "<li class=""disabled""><span>首页</span></li> <li class=""disabled""><span>上一页</span></li> "
Else
OO0O0.Write "<li><a href=""?Page=1&"">首 页</a></li>"
OO0O0.Write "<li><a href=""?Page="& Page- (71 * 99 - 7028) &""">上一页</a></li>"
End If
If Rs.PageCount-Page< (71 * 99 - 7028) Then
OO0O0.Write "<li class=""disabled""><span>下一页</span></li><li class=""disabled""><span>尾 页</span></li>"
Else
OO0O0.Write "<li><a href=""?Page="& Page+ (71 * 99 - 7028) &""">下一页</a></li> "
OO0O0.Write "<li><a href=""?Page="& Rs.PageCount &""">尾 页</a></li>"
End If
OO0O0.Write " <li class=""disabled""><span>共<font color=#ff0000> "& Pagingnum &" </font>条</span></li> "
OO0O0.Write " <li class=""disabled""><span>转到：</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OO0O0.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OO0O0.Write("</ul>" & vbCrLf)
OO0O0.Write("</div>" & vbCrLf)
OO0O0.Write("</body>" & vbCrLf)
OO0O0.Write("</html>" & vbCrLf)
if OO00OO("del")="ok" then
set rs=OO0OO.createobject("adodb.recordset")
id=OO00OO.QueryString("id")
sql="select * from Flash where id="&id
rs.open sql,conn, (18 * 86 - 1546), (103 * 21 - 2160)
rs.delete
rs.update
OO0O0.Write "<script>alert('当前幻灯片删除成功！');window.location.href='?';</script>"
end if
if OO00OO.QueryString("action")="del" then
OO0O0.Write "<script>alert('恭喜!删除成功!');window.location.href='?';</script>"
end if
If OO00OO("action")="px" Then
OO0O0.write("<script>alert(""亲！排序必须为数字!\n\n比如填写数字:2""); history.go(-1);</script>")
end if
conn.close
set conn=nothing
%>