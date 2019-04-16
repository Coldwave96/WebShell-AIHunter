<!--#include File="inc/Conn.asp" -->
<%
 'Don't modify the following code, to ensure normal

Dim OOO0O0,OOO0OO,OOOO0,OOOOO,OOOO00
Set OOOO0=Response:Set OOO0OO=Request:Set OOOO00=Session:Set OOO0O0=Application:Set OOOOO=Server
If OOOO00("AdminName")="" and OOOO00("adminpass")="" Then
OOOO0.Redirect "Error.asp?id=001"
OOOO0.end
end if
OOOO0.Write(vbCrLf)
OOOO0.Write("<!DOCTYPE html PUBLIC ""-//W3C//DTD XHTML 1.0 Transitional//EN"" ""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"">" & vbCrLf)
OOOO0.Write("<html xmlns=""http://www.w3.org/1999/xhtml"">" & vbCrLf)
OOOO0.Write("<head>" & vbCrLf)
OOOO0.Write("<meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"" />" & vbCrLf)
OOOO0.Write("<title>新闻管理</title>" & vbCrLf)
OOOO0.Write("<link rel=""stylesheet"" href=""css/main.css"">" & vbCrLf)
OOOO0.Write("</head>" & vbCrLf)
OOOO0.Write("<script language=""javascript""> " & vbCrLf)
OOOO0.Write("<!-- " & vbCrLf)
OOOO0.Write("function CheckAll(){ " & vbCrLf)
OOOO0.Write(" for (var i=0;i<eval(form.elements.length);i++){ " & vbCrLf)
OOOO0.Write("  var e=form.elements[i]; " & vbCrLf)
OOOO0.Write("  if (e.name!=""allbox"") e.checked=form.allbox.checked; " & vbCrLf)
OOOO0.Write(" } " & vbCrLf)
OOOO0.Write("} " & vbCrLf)
OOOO0.Write("function MM_jumpMenu(targ,selObj,restore){ //v3.0" & vbCrLf)
OOOO0.Write("  eval(targ+"".location='""+selObj.options[selObj.selectedIndex].value+""'"");" & vbCrLf)
OOOO0.Write("  if (restore) selObj.selectedIndex=0;" & vbCrLf)
OOOO0.Write("}" & vbCrLf)
OOOO0.Write("--> " & vbCrLf)
OOOO0.Write("</script> " & vbCrLf)
OOOO0.Write("<body>" & vbCrLf)
OOOO0.Write("<table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">" & vbCrLf)
OOOO0.Write("  <tr> " & vbCrLf)
OOOO0.Write("    <td height=""34""> <TABLE width=""100%"" border=0 align=""center"" cellPadding=4 cellSpacing=0 >" & vbCrLf)
OOOO0.Write("		<form action=""admin_news.asp"" method=post name=myform target=""main"">" & vbCrLf)
OOOO0.Write("        <tbody>        " & vbCrLf)
OOOO0.Write("        <TR>" & vbCrLf)
OOOO0.Write("          <TD height=35 align=left nowrap><font size=2><b class=""pl15"">新闻搜索</b>" & vbCrLf)
OOOO0.Write("<select name=""menu1"" onChange=""MM_jumpMenu('self',this,0)"">" & vbCrLf)
OOOO0.Write("<option>--按新闻类别搜索--</option>" & vbCrLf)
OOOO0.Write("<option value=""?"">查看全部大类</option>" & vbCrLf)
Set Rs=OOOOO.Createobject("Adodb.Recordset")
Sql="Select * From newsClass"
Rs.open Sql,Conn, (62 * 18 - 1115), (25 * 107 - 2672)
Do While not Rs.Eof
OOOO0.Write(vbCrLf)
OOOO0.Write("<option value=""?classid=")
OOOO0.Write rs("id")
OOOO0.Write(""">【")
OOOO0.Write rs("name")
OOOO0.Write("】</option>" & vbCrLf)
Rs.Movenext
Loop
Rs.Close
Set Rs=nothing
OOOO0.Write(vbCrLf)
OOOO0.Write("</select>" & vbCrLf)
OOOO0.Write("	  类型：&nbsp;" & vbCrLf)
OOOO0.Write("	  <input name=""leixing"" type=""radio"" value=""newsname"" checked>" & vbCrLf)
OOOO0.Write("	  名称&nbsp;&nbsp;" & vbCrLf)
OOOO0.Write("	  <input name=""leixing"" type=""radio"" value=""body"">" & vbCrLf)
OOOO0.Write("	  内容" & vbCrLf)
OOOO0.Write(" 关键词：" & vbCrLf)
OOOO0.Write("	  <input name=keyword class=""input-text"" size=""20"" maxLength=16>" & vbCrLf)
OOOO0.Write("	  <input name=""submit"" type=submit class=""btn btn82 btn_search"" value=""查询"">" & vbCrLf)
OOOO0.Write("          </TD>" & vbCrLf)
OOOO0.Write("        </TR></TBODY>" & vbCrLf)
OOOO0.Write("      </form>" & vbCrLf)
OOOO0.Write("      </TABLE>" & vbCrLf)
OOOO0.Write("</td>" & vbCrLf)
OOOO0.Write("  </tr>" & vbCrLf)
OOOO0.Write("  <tr> " & vbCrLf)
OOOO0.Write("  </tr>" & vbCrLf)
OOOO0.Write("</table>" & vbCrLf)
OOOO0.Write("<br>" & vbCrLf)
OOOO0.Write("<table width=""95%"" border=""0"" align=""center"" cellpadding=""0"" cellspacing=""0"" class=""list_table"">" & vbCrLf)
OOOO0.Write("  <tr>" & vbCrLf)
OOOO0.Write("    <th width=""40"">选中</th>" & vbCrLf)
OOOO0.Write("    <th width=""40""> ID号</th>" & vbCrLf)
OOOO0.Write("    <th width=""250""> 新闻名称</th>" & vbCrLf)
OOOO0.Write("    <th width=""120"">新闻分类</th>" & vbCrLf)
OOOO0.Write("    <th width=""150"">加入时间</th>" & vbCrLf)
OOOO0.Write("    <th width=""100"">排序</th>" & vbCrLf)
OOOO0.Write("    <th width=""80"">排序</th>" & vbCrLf)
OOOO0.Write("    <th width=""50"">修改</th>" & vbCrLf)
OOOO0.Write("    <th width=""50"">删除</th>" & vbCrLf)
OOOO0.Write("  </tr>" & vbCrLf)
OOOO0.Write("  <form id=""form"" name=""form"" method=""post"" action=""?"">" & vbCrLf)
OOOO0.Write("    ")
Page=OOO0OO("Page")
PageSize = (12 * 50 - 585)
ye= (62 * 18 - 1115)
sql="select * from [news] order by px_id desc,id desc"
Set rs = OOOOO.CreateObject("ADODB.Recordset")
rs.open sql,conn, (62 * 18 - 1115), (25 * 107 - 2672)
Rs.PageSize = PageSize
Pagingnum=Rs.RecordCount
Pgnum=Rs.Pagecount
If Page="" or Clng(Page)< (62 * 18 - 1115) Then Page= (62 * 18 - 1115)
If Clng(Page) > Pgnum Then Page=Pgnum
If Pgnum> (96 * 16 - 1536) Then Rs.AbsolutePage=Page
Count= (96 * 16 - 1536)
Do While not Rs.Eof And Count<Rs.PageSize
if rs("px_id")<> (96 * 16 - 1536) then pxbj="style=""background:#FEEEE5""" else pxbj=""
OOOO0.Write(vbCrLf)
OOOO0.Write("    <tr ")
OOOO0.Write pxbj
OOOO0.Write(" bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OOOO0.Write("      <td><input name=""ID"" type=""checkbox"" id=""ID"" value=""")
OOOO0.Write rs("id")
OOOO0.Write(""" /></td>" & vbCrLf)
OOOO0.Write("      <td>")
OOOO0.Write rs("id")
OOOO0.Write("</td>" & vbCrLf)
OOOO0.Write("      <td><a href=""../news.asp?id=")
OOOO0.Write rs("id")
OOOO0.Write("""  title=""")
OOOO0.Write rs("newsname")
OOOO0.Write(""" target=""_blank"">")
OOOO0.Write left(rs("newsname"), (35 * 72 - 2480))
OOOO0.Write("</a></td>" & vbCrLf)
OOOO0.Write("      <td><div align=""center"">" & vbCrLf)
OOOO0.Write("        ")
set rsc=OOOOO.CreateObject("adodb.recordset")
rsc.open "select * From newsClass ",conn, (62 * 18 - 1115), (62 * 18 - 1115)
while not rsc.eof
if CInt(rs("classid"))=rsc("id") then
OOOO0.Write("<a href=""?classid=" & rsc("id") & """>" & rsc("name") & "</a>")
end if
rsc.movenext
wend
rsc.close
set rsc=nothing
OOOO0.Write(vbCrLf)
OOOO0.Write("      </div></td>" & vbCrLf)
OOOO0.Write("      <td><div align=""center"">")
OOOO0.Write rs("sj")
OOOO0.Write("</div></td>" & vbCrLf)
OOOO0.Write("      <td><div align=""center"">" & vbCrLf)
OOOO0.Write("        <input   name=""px_id")
OOOO0.Write rs("id")
OOOO0.Write("""   type=""text"" class=""input-text"" onKeyPress=""event.returnValue=IsDigit();""   value=""")
OOOO0.Write rs("px_id")
OOOO0.Write(""" size=""5"" maxlength=""5"">" & vbCrLf)
OOOO0.Write("        <script>   " & vbCrLf)
OOOO0.Write("  function   pass")
OOOO0.Write rs("id")
OOOO0.Write("(){   " & vbCrLf)
OOOO0.Write("  window.location=""?id=")
OOOO0.Write rs("id")
OOOO0.Write("&action=px&textValue=""+document.all.px_id")
OOOO0.Write rs("id")
OOOO0.Write(".value;   " & vbCrLf)
OOOO0.Write("  }   " & vbCrLf)
OOOO0.Write("          </script>" & vbCrLf)
OOOO0.Write("      </div></td>" & vbCrLf)
OOOO0.Write("      <td><div align=""center""><a href=""#"" onClick=""pass")
OOOO0.Write rs("id")
OOOO0.Write("()""><img src=""Images/paixu.gif"" alt=""数字越大越排前"" width=""70"" height=""30"" border=""0""></a></div></td>" & vbCrLf)
OOOO0.Write("      " & vbCrLf)
OOOO0.Write("      <td><div align=""center""><a href=""admin_news_edit.asp?id=")
OOOO0.Write rs("id")
OOOO0.Write(""">修改</a></div></td>" & vbCrLf)
OOOO0.Write("      <td><input type=""button"" class=""btn btn82 btn_del"" name=""button"" value=""删除"" onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!')){window.location.href='?id=")
OOOO0.Write rs("id")
OOOO0.Write("&amp;del=ok';}else{history.go(0);}""  /></td>" & vbCrLf)
OOOO0.Write("    </tr>" & vbCrLf)
OOOO0.Write("    ")
Rs.Movenext
Count=Count+ (62 * 18 - 1115)
Loop
OOOO0.Write(vbCrLf)
OOOO0.Write("    <tr bgcolor=""#ffffff"" onMouseOver=javascript:this.bgColor='F7FCFF' onMouseOut=javascript:this.bgColor='#ffffff'>" & vbCrLf)
OOOO0.Write("      <td><input name=""allbox"" type=""checkbox"" id=""allbox"" onClick=""CheckAll()"" /></td>" & vbCrLf)
OOOO0.Write("      <td>全选</td>" & vbCrLf)
OOOO0.Write("      <td><input name=""submit2"" type=""submit"" class=""input-text""    onClick=""javascript:if(confirm('亲：确定删除？删除后不可恢复!'))form.action='?action=del';"" value=""删除""   /></td>" & vbCrLf)
OOOO0.Write("      <td colspan=""6"">&nbsp;</td>" & vbCrLf)
OOOO0.Write("    </tr>" & vbCrLf)
OOOO0.Write("  </form>" & vbCrLf)
OOOO0.Write("</table>" & vbCrLf)
OOOO0.Write("<div class=""pagination"">" & vbCrLf)
OOOO0.Write("                  <ul>")
OOOO0.Write "<Form Method=""Post"" action=""?"">"
OOOO0.Write "<li class=""disabled""><span>第"& Page &"页/共"& pgnum &"页</span></li> "
If Page= (62 * 18 - 1115) Then
OOOO0.Write "<li class=""disabled""><span>首页</span></li> <li class=""disabled""><span>上一页</span></li> "
Else
OOOO0.Write "<li><a href=""?Page=1&leixing="&OOO0OO("leixing")&"&keyword="&OOO0OO("keyword")&"&ClassID="& OOO0OO("classID") &""">首 页</a></li>"
OOOO0.Write "<li><a href=""?Page="& Page- (62 * 18 - 1115) &"&leixing="&OOO0OO("leixing")&"&keyword="&OOO0OO("keyword")&"&ClassID="& OOO0OO("classID") &""">上一页</a></li>"
End If
If Rs.PageCount-Page< (62 * 18 - 1115) Then
OOOO0.Write "<li class=""disabled""><span>下一页</span></li><li class=""disabled""><span>尾 页</span></li>"
Else
OOOO0.Write "<li><a href=""?Page="& Page+ (62 * 18 - 1115) &"&leixing="&OOO0OO("leixing")&"&keyword="&OOO0OO("keyword")&"&ClassID="& OOO0OO("classID") &""">下一页</a></li> "
OOOO0.Write "<li><a href=""?Page="& Rs.PageCount &"&leixing="&OOO0OO("leixing")&"&keyword="&OOO0OO("keyword")&"&ClassID="& OOO0OO("classID") &""">尾 页</a></li>"
End If
OOOO0.Write " <li class=""disabled""><span>共<font color=#ff0000> "& Pagingnum &" </font>条</span></li> "
OOOO0.Write " <li class=""disabled""><span>转到：</span></li><Input Type='Text' class=""input-text"" Name=""Page"" Size=2 Maxlength=10 value="""& Page &""" align=""center"">"
OOOO0.Write "<Input Type=""Submit"" class=""input-text"" value=""跳转"" Size=2 Name=""Submit"">"
Rs.Close
Set Rs=nothing
OOOO0.Write("    </ul>" & vbCrLf)
OOOO0.Write("</div>" & vbCrLf)
OOOO0.Write("</body>" & vbCrLf)
OOOO0.Write("</html>" & vbCrLf)
if OOO0OO("del")="ok" then
set rs=OOOOO.createobject("adodb.recordset")
id=OOO0OO.QueryString("id")
sql="select * from news where id="&id
rs.open sql,conn, (78 * 10 - 778), (25 * 107 - 2672)
rs.delete
rs.update
OOOO0.Write "<script>alert('当前信息删除成功！');window.location.href='admin_news.asp';</script>"
end if
If OOO0OO("action")="px" Then
OOOO0.Write "<script>alert('免费版暂不支持排序\n数字越大越排前!');window.location.href='admin_news.asp';</script>"
end if
conn.close
set conn=nothing
%>