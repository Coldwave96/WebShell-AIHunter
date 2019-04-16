 <!--#include File="inc/Conn.asp" -->
<%
 Set OOO00O=Response:Set OOO000=Request:Set OOO0OO=Session:Set OOO0O=Application:Set OOO0O0=Server
If OOO0OO("AdminName")="" and OOO0OO("adminpass")="" Then
OOO00O.Redirect "Error.asp?id=001"
OOO00O.end
end if
OOO00O.Write(vbCrLf)
OOO00O.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OOO00O.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OOO00O.Write("<head>" & vbCrLf)
OOO00O.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OOO00O.Write("<title>企业链接管理</title>" & vbCrLf)
OOO00O.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OOO00O.Write("<style type=""text/css"">" & vbCrLf)
OOO00O.Write("<!--" & vbCrLf)
OOO00O.Write(".STYLE1 {" & vbCrLf)
OOO00O.Write("	font-size: 16px;" & vbCrLf)
OOO00O.Write("	color: #FF0000;" & vbCrLf)
OOO00O.Write("}" & vbCrLf)
OOO00O.Write("-->" & vbCrLf)
OOO00O.Write("</style>" & vbCrLf)
OOO00O.Write("</head>" & vbCrLf)
OOO00O.Write("<script language=""javascript""> " & vbCrLf)
OOO00O.Write("<!-- " & vbCrLf)
OOO00O.Write("function CheckAll(){ " & vbCrLf)
OOO00O.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OOO00O.Write("  var e=form.elements[i]; " & vbCrLf)
OOO00O.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OOO00O.Write(" } " & vbCrLf)
OOO00O.Write("} " & vbCrLf)
OOO00O.Write("--> " & vbCrLf)
OOO00O.Write("</script> " & vbCrLf)
OOO00O.Write("<body>" & vbCrLf)
OOO00O.Write("<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0""  class=""list_table"">" & vbCrLf)
OOO00O.Write("  <tr> " & vbCrLf)
OOO00O.Write("    <th height=""34"" align=""center""><strong>企业链接</strong></th>" & vbCrLf)
OOO00O.Write("  </tr>" & vbCrLf)
OOO00O.Write("  <tr> " & vbCrLf)
OOO00O.Write("  </tr>" & vbCrLf)
OOO00O.Write("</table>" & vbCrLf)
OOO00O.Write("<table width=""555"" border=""0"" cellspacing=""0"">" & vbCrLf)
OOO00O.Write("  <tr>" & vbCrLf)
OOO00O.Write("    <td><span class=""STYLE1""><a href=""admin_link_add.asp"">添加链接</a></span></td>" & vbCrLf)
OOO00O.Write("  </tr>" & vbCrLf)
OOO00O.Write("</table>" & vbCrLf)
OOO00O.Write("<br>" & vbCrLf)
OOO00O.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OOO00O.Write("  <tr>" & vbCrLf)
OOO00O.Write("    <th width=""40"">选中</th>" & vbCrLf)
OOO00O.Write("    <th width=""40""> ID号</th>" & vbCrLf)
OOO00O.Write("    <th width=""250"">链接名称</th>" & vbCrLf)
OOO00O.Write("	<th width=""100"">链接地址</th>" & vbCrLf)
OOO00O.Write("    <th width=""100"">加入时间</th>" & vbCrLf)
OOO00O.Write("	<th width=""100"">添加人</th>" & vbCrLf)
OOO00O.Write("	 <th width=""80"">排序ID</th>" & vbCrLf)
OOO00O.Write("	  <th width=""80"">排序</th>" & vbCrLf)
OOO00O.Write("    <th width=""50"">修改</th>" & vbCrLf)
OOO00O.Write("    <th width=""50"">删除</th>" & vbCrLf)
OOO00O.Write("  </tr>" & vbCrLf)
OOO00O.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OOO00O.Write("    ")
Page=OOO000("Page")
PageSize = (62 * 28 - 1721)
sql="select * from link order by px_id desc,id desc"
Set rs = OOO0O0.CreateObject("ADODB.Recordset")
rs.open sql,conn, (53 * 99 - 5246), (26 * 72 - 1869)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (53 * 99 - 5246) Then Page= (53 * 99 - 5246)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (89 * 28 - 2492) Then Rs.AbsolutePage=Page
Count= (89 * 28 - 2492)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (89 * 28 - 2492) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OOO00O.Write(vbCrLf)
OOO00O.Write("    <tr ")
OOO00O.Write pxbj
OOO00O.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OOO00O.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OOO00O.Write rs("id")
OOO00O.Write(""" /></td>" & vbCrLf)
OOO00O.Write("      <td>")
OOO00O.Write rs("id")
OOO00O.Write("</td>" & vbCrLf)
OOO00O.Write("      <td>")
OOO00O.Write left(rs("linkname"), (74 * 56 - 4104))
OOO00O.Write("</td>" & vbCrLf)
OOO00O.Write("	   <td><div align=""center""><a href=""")
OOO00O.Write rs("lianjie")
OOO00O.Write(""" target=""_blank"">")
OOO00O.Write rs("lianjie")
OOO00O.Write("</a></div></td>" & vbCrLf)
OOO00O.Write("      <td><div align=""center"">")
OOO00O.Write rs("sj")
OOO00O.Write("</div></td>" & vbCrLf)
OOO00O.Write("      <td><div align=""center"">")
OOO00O.Write rs("user")
OOO00O.Write("</div></td>" & vbCrLf)
OOO00O.Write("	        <td><div align=""center"">" & vbCrLf)
OOO00O.Write("        <input   name=""px_id")
OOO00O.Write rs("id")
OOO00O.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OOO00O.Write rs("px_id")
OOO00O.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OOO00O.Write("        <script>   " & vbCrLf)
OOO00O.Write("  function   pass")
OOO00O.Write rs("id")
OOO00O.Write("(){   " & vbCrLf)
OOO00O.Write("  window.location=""?id=")
OOO00O.Write rs("id")
OOO00O.Write("&action=px&textValue=""+document.all.px_id")
OOO00O.Write rs("id")
OOO00O.Write(".value;   " & vbCrLf)
OOO00O.Write("  }   " & vbCrLf)
OOO00O.Write("          </script>" & vbCrLf)
OOO00O.Write("      </div></td>" & vbCrLf)
OOO00O.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OOO00O.Write rs("id")
OOO00O.Write("()""><img src=""Images/paixu.gif"" alt=""数字越大越排前"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OOO00O.Write("	  <td><div align=""center""><a href=""admin_link_edit.asp?id=")
OOO00O.Write rs("id")
OOO00O.Write(""">修改</a></div></td>" & vbCrLf)
OOO00O.Write("      <td align=""center""><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""删除"" onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!')){window.location.href='?id=")
OOO00O.Write rs("id")
OOO00O.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("    ")
Rs.Movenext
Count=Count+ (53 * 99 - 5246)
Loop
OOO00O.Write(vbCrLf)
OOO00O.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OOO00O.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OOO00O.Write("      <td>全选</td>" & vbCrLf)
OOO00O.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!'))form.action='?action=del';"" value=""删除""   /></td>" & vbCrLf)
OOO00O.Write("      <td colspan=""7"">&nbsp;</td>" & vbCrLf)
OOO00O.Write("    </tr>" & vbCrLf)
OOO00O.Write("  </form>" & vbCrLf)
OOO00O.Write("</table>" & vbCrLf)
OOO00O.Write("<div class=""pagination"">" & vbCrLf)
OOO00O.Write("                  <ul>")
OOO00O.Write "<Form Method=""Post"" action=""?"">"
OOO00O.Write "<li class=""disabled""><span>第"& Page &"页/共"& pgnum &"页</span></li> "
If Page= (53 * 99 - 5246) Then
OOO00O.Write "<li class=""disabled""><span>首页</span></li> <li class=""disabled""><span>上一页</span></li> "
Else
OOO00O.Write "<li><a href=""?Page=1&"">首 页</a></li>"
OOO00O.Write "<li><a href=""?Page="& Page- (53 * 99 - 5246) &""">上一页</a></li>"
End If
If Rs.PageCount-Page< (53 * 99 - 5246) Then
OOO00O.Write "<li class=""disabled""><span>下一页</span></li><li class=""disabled""><span>尾 页</span></li>"
Else
OOO00O.Write "<li><a href=""?Page="& Page+ (53 * 99 - 5246) &""">下一页</a></li> "
OOO00O.Write "<li><a href=""?Page="& Rs.PageCount &""">尾 页</a></li>"
End If
OOO00O.Write " <li class=""disabled""><span>共<font color=#ff0000> "& Pagingnum &" </font>条</span></li> "
OOO00O.Write " <li class=""disabled""><span>转到：</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OOO00O.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OOO00O.Write("</ul>" & vbCrLf)
OOO00O.Write("</div>" & vbCrLf)
OOO00O.Write("</body>" & vbCrLf)
OOO00O.Write("</html>" & vbCrLf)
if OOO000("del")="ok" then
set rs=OOO0O0.createobject("adodb.recordset")
id=OOO000.QueryString("id")
sql="select * from link where id="&id
rs.open sql,conn, (108 * 29 - 3130), (26 * 72 - 1869)
rs.delete
rs.update
OOO00O.Write "<script>alert('当前链接删除成功！');window.location.href='?';</script>"
end if
if OOO000.QueryString("action")="del" then
OOO00O.Write "<script>alert('恭喜!删除成功!');window.location.href='?';</script>"
end if
If OOO000("action")="px" Then
OOO00O.write("<script>alert(""亲！排序必须为数字!\n\n比如填写数字:2""); history.go(-1);</script>")
end if
conn.close
set conn=nothing
%>