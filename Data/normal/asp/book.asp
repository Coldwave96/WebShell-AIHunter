<!--#include file="include/nowshop.asp" -->
<%
NewsId=Request("NewsId")
If not isNumeric(NewsId) then
Response.Redirect("index.asp")	
response.end
end if
set rs=Server.CreateObject("ADODB.RecordSet")
sql= "select * from News where online=true and Pubdate<= now() and OffDate> now() and NewsId="&request("NewsId")
rs.open sql,conn,1,1
%>
<TITLE>网站留言-</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="css.css" type="text/css">
<LINK href="style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
body {
	margin-top: 8px;
}
-->
</style></head>
<center>
<%
call aspsql()
%>
<table cellspacing="0" bordercolordark="#79144a" cellpadding="0" 
                  width="98%" align="center">
  <tbody>
    <tr>
      <td align="center" valign="top"><table cellspacing="0" cellpadding="0" width="100%" border="0">
        <tbody>
          <tr>
            <td class="com_fee_03"><%
set rs=conn.execute("select * from bsetup")
pages=clng(rs("pages"))
html=clng(rs("html"))
book_jianju=clng(rs("book_jianju"))
bad=cstr(rs("bad"))
huifutishi=cstr(rs("huifutishi"))
huifucolor=cstr(rs("huifucolor"))

set rs=Server.CreateObject("ADODB.RecordSet")
sql="select * from book where online='1' "
keywords=request("keywords")
if keywords<>"" then sql=sql+ " and Comments like '%"&keywords&"%' "
sql=sql + "order by top desc,Postdate desc"
rs.open sql,conn,1
if not (rs.eof and rs.bof) then			'如果有留言时，就显示留言。此行的if与倒数第6行的end if相对应

if pages=0 or pages="" then pages=10		'每页留言条数
rs.pageSize = pages	'每页记录数
allPages = rs.pageCount	'总页数
page = Request("page")	'从浏览器取得当前页
'if是基本的出错处理

If not isNumeric(page) then page=1

if isEmpty(page) or clng(page) < 1 then
page = 1
elseif clng(page) >= allPages then
page = allPages 
end if
rs.AbsolutePage = page			'转到某页头部
	Do While Not rs.eof and pages>0
	UserName=rs("UserName")		'用户名
	pic=rs("pic")			'头像
	face=rs("face")			'表情

	Comments=rs("Comments")		'内容
	bad1=split(bad,"/")		'过滤脏话
	for t=0 to ubound(bad1)
	Comments=replace(Comments,bad1(t),"***")
	next

	Replay=rs("Replay")		'回复
	Usermail=rs("Usermail")		'邮件
	url=rs("url")			'主页
	I=I+1				'序号
	temp=RS.RecordCount-(page-1)*rs.pageSize-I+1
	%>
                <table cellspacing="1" cellpadding="3" width="100%" align="center" bgcolor="#CFCFCF" border="0">
                  <tr>
                    <td valign="middle" width="25%" bgcolor="#FFFFFF" rowspan="2" align="center"><table border="0" width="90%">

                        <tr>
                          <td>姓名：<%=UserName%><br />
                            来自：<%=rs("IP")%><br />
                            邮件：<a href="mailto:<%=Usermail%>"><img src="images/small/mail.gif" border="0" /> 邮件</a><br />
                            主页：<a href="<%=URL%>" target='_blank'><img src="images/small/home.gif" border="0" /> 主页</a></td>
                        </tr>
                    </table></td>
                    <td width="75%" height="20" bgcolor="#ffffff">  发表于：<%=cstr(rs("Postdate"))%></td>
                  </tr>
                  <tr>
                    <td width='75%' valign="top" bgcolor="#FFFFFF"><%
	if html=0 then
	response.write replace(server.htmlencode(Comments),vbCRLF,"<BR>")
	else
	response.write replace(Comments,vbCRLF,"<BR>")
	end if
	%>
                        <%if rs("Replay")<>"" then%>
                        <table cellspacing="1" cellpadding="3" width="90%" align="center" bgcolor="#CFCFCF" border="0">
                          <tr>
                            <td valign="top" bgcolor="#FFFFFF"><font color="<%=huifucolor%>"><%=huifutishi%>：<br />
                                  <%=Replay%></font> </td>
                          </tr>
                        </table>
                      <%end if%>
                    </td>
                  </tr>
                </table>
              <br />
                <%
pages = pages - 1
rs.movenext
if rs.eof then exit do
loop
response.write "<table border=0 width=540 align=center><tr><td><form action='book.asp' method='post'>总计留言"&RS.RecordCount&"条 "
if page = 1 then
response.write "<font color=darkgray>首页 前页</font>"
else
response.write "<a href=book.asp?keywords="&keywords&"&page=1>首页</a> <a href=book.asp?keywords="&keywords&"&page="&page-1&">前页</a>"
end if
if page = allpages then
response.write "<font color=darkgray> 下页 末页</font>"
else
response.write " <a href=book.asp?keywords="&keywords&"&page="&page+1&">下页</a> <a href=book.asp?keywords="&keywords&"&page="&allpages&">末页</a>"
end if
response.write " 第"&page&"页 共"&allpages&"页 &nbsp; 转到第 "
response.write "<select name='page'>"
for i=1 to allpages
response.write "<option value="&i&">"&i&"</option>"
next
response.write "</select> 页 <input type=submit name=go value='Go'><input type=hidden name=keywords value='"&keywords&"'></form></td><td align=right>"
response.write "<form action='book.asp' method='post'><input title='想查找什么内容' type=text name=keywords value='"&keywords&"' size=10 maxlength=10><input type=submit value='搜索' title='给我搜'></form></td></tr></table>"

else
response.write "<table cellSpacing=0 cellPadding=0 width=540 align=center bgColor=#FFFFFF border=0><TR><TD height=20 align=center>"
if keywords="" then response.write "暂时没有留言" else response.write "抱歉，没有找到您要查到的内容<br><br><a href='javascript:history.go(-1)'>返回上一页</a>" end if
response.write "</TD></TR></TABLE>"
end if
%>
            </td>
          </tr>
        </tbody>
      </table>
      <iframe marginwidth="0" marginheight="0" src="book_write.asp" frameborder="0" 

width="100%" scrolling="No" height="580"></iframe></td>
    </tr>
  </tbody>
</table>
</center>
</body>
</html>

<%
set conn=nothing
%>

