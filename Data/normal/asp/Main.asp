<!--#include File="inc/Conn.asp"-->
<!--#include file="inc/md5.asp"-->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=001"
response.end
end if
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<link rel="stylesheet" href="css/main.css">
</head>

<body>
<br>
 
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">

  <tr> 
    <th height="20" colspan="6" class="TD_BC"><font color="#CC0000"><b><font color="#000000">站内信息预览表</font></b></font></th>
  </tr>
  <tr> 
    <td width="10%" height="20" class="TD"><span class="td">管理员个数</span>：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from admin")(0)%></b>个 <a href="admin_user.asp">查看</a> </td>
    <td width="10%" class="TD"><b><span class="td">产品数量</span>：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from Product")(0)%></b>条 <a href="admin_Product.asp">查看</a> </td>
    <td width="10%" class="TD"><b>产品分类数量：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from Productclass")(0)%></b>条 <a href="admin_Product_class.asp">查看</a> </td>
  </tr>
  <tr> 
    <td width="10%" height="20" class="TD">新闻数量：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from news")(0)%></b>条 <a href="admin_news.asp">查看</a> </td>
    <td width="10%" class="TD">企业信息：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from about")(0)%></b>条 <a href="admin_about.asp">查看</a> </td>
    <td width="10%" class="TD">企业荣誉证书：</td>
    <td width="20%" class="TD"><b><%=conn.execute("select count(*) from honor")(0)%></b>条 <a href="admin_honor.asp">查看</a> </td>
  </tr>
  <tr>
    <td height="20" class="TD">工程案列：</td>
    <td class="TD"><b><%=conn.execute("select count(*) from anli")(0)%></b>条 <a href="admin_anli.asp">查看</a> </td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
    <td class="TD">&nbsp;</td>
  </tr>
</table>
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <tr>
    <th height="20" colspan="2" class="TD_BC"><font color="#CC0000"><b><font color="#000000">服务器信息</font></b></font></th>
  </tr>
  <tr>
    <td width="50%" height="20" class="TD">　服务器类型：<%=Request.ServerVariables("OS")%><font face="Verdana, Arial, Helvetica, sans-serif">(IP:<%=Request.ServerVariables("LOCAL_ADDR")%>)</font></td>
    <td width="50%" class="TD">　站点物理路径：<%=request.ServerVariables("APPL_PHYSICAL_PATH")%></td>
  </tr>
  <tr>
    <td height="20" class="TD">　返回服务器的主机名，<font face="Verdana, Arial, Helvetica, sans-serif">DNS</font>别名，或<font face="Verdana, Arial, Helvetica, sans-serif">IP</font>地址：<font color=blue><%=Request.ServerVariables("SERVER_NAME")%></font></td>
    <td class="TD">　服务器操作系统：<font color=blue><%=Request.ServerVariables("OS")%></font></td>
  </tr>
  <tr>
    <td height="20" class="TD">　脚本解释引擎：<%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %></td>
    <td class="TD">　<font face="Verdana, Arial, Helvetica, sans-serif">WEB</font>服务器的名称和版本：<font color=blue><%=Request.ServerVariables("SERVER_SOFTWARE")%></font></td>
  </tr>
  <tr>
    <td height="20" class="TD">　脚本超时时间：<font color=blue><%=Server.ScriptTimeout%></font> 秒</td>
    <td class="TD">　数据库使用：
      <%
	    On Error Resume Next
	    Server.CreateObject("adodb.connection")
		if err=0 then 
		  response.write("<font color=blue>√</font>")
		else
          response.write("<font color=red>×</font>")
		end if	 
		err=0
	  %>
    </td>
  </tr>
  <tr>
    <td height="20" class="TD">　<font face="Verdana, Arial, Helvetica, sans-serif">JRO.JetEngine(ACCESS </font> 数据库<font face="Verdana, Arial, Helvetica, sans-serif">)</font>：
      <%
	    On Error Resume Next
	    Server.CreateObject("JRO.JetEngine")
		if err=0 then 
		  response.write("<font color=blue>√</font>")
		else
          response.write("<font color=red>×</font>")
		end if	 
		err=0
	  %>
    </td>
    <td class="TD">　<font face="Verdana, Arial, Helvetica, sans-serif">CDONTS</font>组件支持：
      <%
	    On Error Resume Next
	    Server.CreateObject("CDONTS.NewMail")
		if err=0 then 
		  response.write("<font color=blue>√</font>")
		else
          response.write("<font color=red>×</font>")
		end if	 
		err=0
	  %>
    </td>
  </tr>
  <tr>
    <td height="20" class="TD">　<font face="Verdana, Arial, Helvetica, sans-serif">FSO</font>文本文件读写：
      <%
	    On Error Resume Next
	    Server.CreateObject("Scripting.FileSystemObject")
		if err=0 then 
		  response.write("<font color=blue>√</font>")
		else
          response.write("<font color=red>×</font>")
		end if	 
		err=0
	  %>
    </td>
    <td class="TD">　<font face="Verdana, Arial, Helvetica, sans-serif">Jmail</font>组件支持 <font color="#0033FF">
      <%If Not IsObjInstalled(theInstalledObjects(13)) Then%>
      <font color="#FF0000">×</font></font> <font color="#0033FF" face="Verdana, Arial, Helvetica, sans-serif">
        <%else%>
        √
        <%end if%>
      </font></td>
  </tr>
  <tr>
    <td height="20" class="TD">　脚本超时时间：<%=Server.ScriptTimeout%> 秒</td>
    <td class="TD">　服务器 CPU 数量：<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> 个</td>
  </tr>
  <tr>
    <td height="20" class="TD">　显示执行 SCRIPT 的虚拟路径：<%=Request.ServerVariables("SCRIPT_NAME")%></td>
    <td class="TD">　协议的名称和版本：<%=Request.ServerVariables("SERVER_PROTOCOL")%></td>
  </tr>
  <tr>
    <td height="20" class="TD">　返回服务器处理请求的端口：<%=Request.ServerVariables("SERVER_PORT")%></td>
    <td class="TD">&nbsp;</td>
  </tr>
</table>
<br>
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">
  <tr> 
    <th height="30" align="center" class="TD_BC">我们真诚提醒您：<font color=#ff0000>为了您系统及数据的安全，使用完毕请及时退出系统。</font></th>
  </tr>
</table><span style="display:none;"><script language="javascript" type="text/javascript" src="http://js.users.51.la/18640581.js"></script>
</body>
</html>
 