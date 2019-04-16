 <!--#include file="include/nowshop.asp"-->
<%
call aspsql()
set rs=conn.execute("select * from bsetup")
maxlength=clng(rs("maxlength"))
view=cstr(rs("view"))
mailyes=clng(rs("mailyes"))
yzm_skin=rs("fangan")
randomize
yzm=int(8999*rnd()+1000)
%>
<SCRIPT language=javascript>
<!--
function left_menu(meval)
{
  var left_n=eval(meval);
  if (left_n.style.display=="none")
  { eval(meval+".style.display='';"); }
  else
  { eval(meval+".style.display='none';"); }
}
-->
</SCRIPT>
<script language="JavaScript">
function checkform(){
<%
response.write "if (document.book.yzm.value.length==0){"
%>
		alert("出错了，您没有填写验证码。");
		document.book.yzm.focus();
		return false;
	}
<%
response.write "if (document.book.yzm.value!="&yzm&"){"
%>
		alert("出错了，您填写的验证码不正确。");
		document.book.yzm.focus();
		return false;
	}
	if (document.book.UserName.value.length==0){
		alert("出错了，您没有填写用户名。");
		document.book.UserName.focus();
		return false;
	}
	if (document.book.UserName.value.length<2||document.book.UserName.value.length>16){
		alert("出错了，您填写的用户名不符合要求。");
		document.book.UserName.focus();
		return false;
	}
	if (document.book.Comments.value.length==0){
		alert("出错了，您没有填写留言内容。");
		document.book.Comments.focus();
		return false;
	}
<%
response.write "if (document.book.Comments.value.length>"&maxlength&"){"
%>
		alert("出错了，您的留言太长了。");
		document.book.Comments.focus();
		return false;
	}
	return true;
}	
</script>

<%
if request("send")="ok" then

	username=trim(request.form("username"))
	usermail=trim(request.form("usermail"))

    if mailyes=0 then		''邮箱为必填时检查邮箱是否合法

	if Instr(usermail,".")<=0 or Instr(usermail,"@")<=0 or len(usermail)<10 or len(usermail)>100 then
	response.write "<script language='javascript'>"
	response.write "alert('出错了，您输入的电子邮件地址格式不正确，请检查后重新输入！');"
	response.write "location.href='javascript:history.go(-1)';"							
	response.write "</script>"	
	response.end
	end if

    end if

	set rs=Server.CreateObject("ADODB.RecordSet")
	sql="select * from book where online='1' order by Postdate desc"
	rs.open sql,conn,1,3

			rs.Addnew
			rs("username")=Request("username")
			rs("comments")=Request("comments")
			rs("usermail")=Request("usermail")
			rs("face")=Request("face")
			rs("pic")=Request("pic")
			rs("url")=Request("url")
			rs("qq")=Request("qq")
			rs("online")=view
			rs("IP")=Request.serverVariables("REMOTE_ADDR")
			rs.Update
			session("book_error")=session("book_error")+1
		rs.close
		set rs=nothing
	response.write "<script language='javascript'>"
	if view="0" then
	response.write "alert('留言提交成功，留言须经管理员审核才能发布。');"
	else
	response.write "alert('留言提交成功，留言须经管理员审核才能发布！');"
	end if
	response.write "location.href='book_write.asp';"	
	response.write "</script>"
	response.end

end if
%>
<TITLE>网站留言-<%=sitename%>-<%=siteurl%></TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="description" content="<%=sitedescription%>">
<meta name="keywords" content="<%=sitekeywords%>">
<link rel="stylesheet" href="css.css" type="text/css">
<LINK href="style.css" type=text/css rel=stylesheet></head>
<center>
<%
call aspsql()
%>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody>
    
    <tr>
      <td align="center"><table cellspacing="0" bordercolordark="#ffffff" cellpadding="0" 
                  width="100%" align="center">
        <tbody>
          <tr>
            <td height="230" valign="top"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="0">
                  <tbody>
                    <tr>
                      <td class="com_fee_03"><form action="book_write.asp" method="post" name="book" id="book" onsubmit="return checkform();">
                          <table cellspacing="1" bordercolordark="#ffffff" cellpadding="4" width="100%" align="center" bgcolor="#E4E4E4" bordercolorlight="#000000" border="0">
                            <tr bgcolor="#FFFFFF">
                              <td width="15%" align="right" bgcolor="#FFFFFF">留言验证码：</td>
                              <td bgcolor="#FFFFFF"><input  maxlength="4" size="6" name="yzm" style="BORDER-RIGHT: darkgray 1px solid; BORDER-TOP: darkgray 1px solid; FONT-SIZE: 8pt; BORDER-LEFT: darkgray 1px solid; COLOR: #666666; BORDER-BOTTOM: darkgray 1px solid; FONT-FAMILY: verdana ; overflow:auto;" />
                                <%a=int(yzm/1000)
b=int((yzm-a*1000)/100)
c=int((yzm-a*1000-b*100)/10)
d=int(yzm-a*1000-b*100-c*10)
response.write "<img align=top height=15 border=0 src=images/yzm/"&yzm_skin&"/"&a&".gif><img align=top height=15 border=0 src=images/yzm/"&yzm_skin&"/"&b&".gif><img  align=top height=15 border=0 src=images/yzm/"&yzm_skin&"/"&c&".gif><img align=top height=15 border=0 src=images/yzm/"&yzm_skin&"/"&d&".gif>"
%></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td   width="15%" align="right" bgcolor="#FFFFFF">您的姓名：</td>
                              <td bgcolor="#FFFFFF" ><input type="text" name="UserName" size="30" maxlength="16"  style="BORDER: darkgray 1px solid; FONT-SIZE: 8pt; COLOR: #666666; FONT-FAMILY: verdana ; overflow:auto; height=22;" value="<%=request.cookies("buyok")("userid")%>" />
                                <font color="#FF0000">*</font></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td   width="15%" align="right" bgcolor="#FFFFFF">您的邮箱：</td>
                              <td bgcolor="#FFFFFF" ><input type="text" name="UserMail" size="30"  maxlength="100"  style="BORDER: darkgray 1px solid; FONT-SIZE: 8pt; COLOR: #666666; FONT-FAMILY: verdana ; overflow:auto; height=22;" />
                                <font color="#FF0000">*</font></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td   width="15%" align="right" bgcolor="#FFFFFF">您的网站：</td>
                              <td bgcolor="#FFFFFF"><input type="text" value="http://" name="url" size="30"  maxlength="100"  style="BORDER: darkgray 1px solid; FONT-SIZE: 8pt; COLOR: #666666; FONT-FAMILY: verdana ; overflow:auto; height=22;" /></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td   width="15%" align="right" bgcolor="#FFFFFF">腾讯QQ：</td>
                              <td bgcolor="#FFFFFF"><input type="text" value="" name="QQ" size="30"  maxlength="11"  style="BORDER: darkgray 1px solid; FONT-SIZE: 8pt; COLOR: #666666; FONT-FAMILY: verdana ; overflow:auto; height=22;" /></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td   width="15%" align="right" bgcolor="#FFFFFF">留言内容：<br />
                                <font color="red">（<%=maxlength%>字以内）</font></td>
                              <td bgcolor="#FFFFFF"><textarea name="Comments" rows="5" cols="66"  style="BORDER: darkgray 1px solid; FONT-SIZE: 8pt; COLOR: #666666; FONT-FAMILY: verdana ; overflow:auto;"></textarea>
                                <input name="pic" 
            type="hidden" id="pic" value="1" />
&nbsp;
<input name="face" 
            type="hidden" id="face" value="1" /></td>
                            </tr>
                            <tr bgcolor="#FFFFFF">
                              <td colspan="2" align="center" bgcolor="#FFFFFF"><input type="submit" value="提交留言" name="Submit1" />
                                &nbsp;&nbsp;&nbsp;
                                <input type="reset" value="重新填写" name="Submit2" />
                                <input type="hidden" name="send" value="ok" /></td>
                            </tr>
                          </table>
                      </form></td>
                    </tr>
                  </tbody>
              </table></td>
          </tr>
          <tr>
            <td valign="top">&nbsp;</td>
          </tr>
        </tbody>
      </table></td>
    </tr>
  </tbody>
</table>
</center>
</body>
</html>

<%
set conn=nothing
%>

