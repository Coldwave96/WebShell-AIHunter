 <!--#include File="inc/Conn.asp" -->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=005"
Else
%>
<%
id=1
Sql="Select * From system where ID="&id
Set Rs1=Server.Createobject("Adodb.Recordset")
Rs1.open Sql,Conn,1,1
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>网站参数设置</title>
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="kindeditor-4.1.10-l/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.10-l/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor-4.1.10-l/kindeditor-all.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10-l/lang/zh_CN.js"></script>
 <script>
			KindEditor.ready(function(K) {
				var editor = K.editor({
					allowFileManager : true
				});
				K('#image1').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url1').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#url1').val(url);
								editor.hideDialog();
							}
						});
					});
				});
				K('#image3').click(function() {
					editor.loadPlugin('image', function() {
						editor.plugin.imageDialog({
							imageUrl : K('#url3').val(),
							clickFn : function(url, title, width, height, border, align) {
								K('#url3').val(url);
								editor.hideDialog();
							}
						});
					});
				});
			});
		</script>
 </head>
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="36" bgcolor="#f1f1f1"> 
      <div align="center">网站参数设置</div></td>
  </tr>
</table>
<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" class="list_table">
  <form name="frm" method="post" action="?action=edit">
    
    <tr> <td height="30" width=221> <div align="right">客户ID：</div></td>
      <td width="831"> <font color="#FF0000"><%=rs1("zzname")%></font>      </td>
    </tr>
        <tr>
          <td height="30"><div align="right">公司logo：</div></td>
          <td><input name="pic" type="text" class="input-text" id="url1" value="<%=rs1("pic")%>" size="55" />
            <input name="button2" type="button" class="input-text" id="image1" value="选择图片" />
            图片格式：jpg/gif/png。推荐透明png格式</td>
        </tr>
        <tr>
          <td height="30"><div align="right">二维码：</div></td>
          <td><input name="pic2" type="text" class="input-text" id="url3" value="<%=rs1("pic2")%>" size="55" />
            <input name="button" type="button" class="input-text" id="image3" value="选择图片" />
          图片格式：jpg/jpeg/gif/png </td>
        </tr>
    <tr> <td height="30"> <div align="right">公司名名称：</div></td>
      <td><label>
        <input name="webname" type="text" class="input-text" id="webname"  value="<%=rs1("webname")%>" size="80" maxlength="250">
      </label></td>
    </tr> 
   <tr>
     <td height="30"><div align="right">网站标题：</div></td>
     <td><input name="webtitle" type="text" class="input-text" id="webtitle"  value="<%=rs1("webtitle")%>" size="80" maxlength="250" /></td>
   </tr>
   <tr> <td height="30"><div align="right">网站关键字：</div></td>
     <td><input name="Keywords" type="text" class="input-text" id="Keywords"  value="<%=rs1("Keywords")%>" size="80" maxlength="250"></td>
   </tr>
   <tr> <td height="30"><div align="right">网站描述：</div></td>
     <td><input name="description" type="text" class="input-text" id="description"  value="<%=rs1("description")%>" size="80" maxlength="250"></td>
   </tr>
      <tr>
     <td height="30" ><div align="right">联系人地址：</div></td>
     <td><input name="dizhi" type="text" class="input-text" id="dizhi" value="<%=rs1("dizhi")%>" size="70" >     </td>
   </tr>
      <tr>
        <td height="30"><div align="right">网站风格：</div></td>
        <td><label><input type="radio" name="fengge" value="1" <%if rs1("fengge")="1" then%>checked<%end if%>>
        蓝色　 
<input type="radio" name="fengge" value="2" <%if rs1("fengge")="2" then%>checked<%end if%>>
绿色　 
<input type="radio" name="fengge" value="3" <%if rs1("fengge")="3" then%>checked<%end if%>>
红色
<input type="radio" name="fengge" value="3" <%if rs1("fengge")="4" then%>checked<%end if%>>
黑色
        </label></td>
      </tr>
    <tr> <td height="30"> <div align="right">网站域名：</div></td>
      <td> <input name="weburl" type="text" class="input-text" id="weburl" value="<%=rs1("weburl")%>" size="30" >      </td>
    </tr> 
   <tr> <td height="30"> <div align="right">Email：</div></td>
      <td> <input name="webemail" type="text" class="input-text" id="webemail" value="<%=rs1("webemail")%>" size="30" >      </td>
    </tr>
	   <tr>
     <td height="30" ><div align="right">联系人：</div></td>
     <td><input name="lianxiren" type="text" class="input-text" id="lianxiren" value="<%=rs1("lianxiren")%>" size="30" >     </td>
   </tr>
   <tr>
     <td height="30" ><div align="right">联系人手机：</div></td>
     <td><input name="sjhm" type="text" class="input-text" id="sjhm" value="<%=rs1("sjhm")%>" size="30" >     </td>
   </tr>
   <tr>
     <td height="30" ><div align="right">联系人电话：</div></td>
     <td><input name="dianhua" type="text" class="input-text" id="dianhua" value="<%=rs1("dianhua")%>" size="30" >     </td>
   </tr>

   <tr> <td height="30" > <div align="right">联系人qq：</div></td>
      <td> <input name="webqq" type="text" class="input-text" id="webqq" value="<%=rs1("webqq")%>" size="30" >      </td>
    </tr>
   <tr>
     <td height="30" ><div align="right">公司首页介绍：</div></td>
     <td><label>
       <textarea name="jianjie" cols="50" rows="6" id="jianjie"><%=rs1("jianjie")%></textarea>
     注意，文字不要太多。以免排版显示不正常。</label></td>
   </tr> 
    <tr bgcolor="#FFFFFF" align=center> 
	<td height="30" >&nbsp;</td>    
      <td height="40" colspan="2" align="left"><input type="submit" name="Submit" class="btn btn82 btn_save2"  value=" 确定 ">	  </td>
    </tr>
  </form>
</table>
<br>
<div align="center"></div>
</body>
</html>
<%
Rs1.Close
Set Rs1=nothing
end if%><!-- -->

<%
if request("action")="edit" then
if request("webname") = "" then
		response.write "<script language='javascript'>" & VbCRlf
	    response.write "alert('名称不能为空');" & VbCrlf
	    response.write "history.go(-1);" & vbCrlf
	    response.write "</script>" & VbCRLF
	    response.end
end if

if request("Keywords") = "" then
		response.write "<script language='javascript'>" & VbCRlf
	    response.write "alert('请填写网站关键词');" & VbCrlf
	    response.write "history.go(-1);" & vbCrlf
	    response.write "</script>" & VbCRLF
	    response.end
end if
if request("description") = "" then
		response.write "<script language='javascript'>" & VbCRlf
	    response.write "alert('请填写网站描述');" & VbCrlf
	    response.write "history.go(-1);" & vbCrlf
	    response.write "</script>" & VbCRLF
	    response.end
end if

if request("dizhi") = "" then
		response.write "<script language='javascript'>" & VbCRlf
	    response.write "alert('联系地址不能为空');" & VbCrlf
	    response.write "history.go(-1);" & vbCrlf
	    response.write "</script>" & VbCRLF
	    response.end
end if

 

webname=trim(request("webname"))
webtitle=trim(request("webtitle"))
description=trim(request("description"))
Keywords=trim(request("Keywords"))
dizhi=trim(request("dizhi"))
fengge=trim(request("fengge"))
dianhua=trim(request("dianhua"))
lianxiren=trim(request("lianxiren"))
sjhm=trim(request("sjhm"))
pic=trim(request("pic"))
pic2=trim(request("pic2"))
jianjie=trim(request("jianjie"))
weburl=trim(request("weburl"))
webemail=trim(request("webemail"))
webqq=trim(request("webqq"))
id=1
Sql="Select * From system where ID="&id
Set Rs=Server.Createobject("Adodb.Recordset")
Rs.Open Sql,Conn,3,2
  rs("webname")=webname
  rs("webtitle")=webtitle
  rs("description")=description
  rs("Keywords")=Keywords
  rs("weburl")=weburl
  rs("webemail")=webemail
  rs("sjhm")=sjhm
  rs("fengge")=fengge
  rs("jianjie")=jianjie
  rs("dianhua")=dianhua
  rs("pic")=pic
  rs("pic2")=pic2
  rs("lianxiren")=lianxiren
  rs("dizhi")=dizhi
  rs("webqq")=webqq
  rs.update
  rs.close
Set Rs = Nothing
Conn.Close
Set Conn=nothing
Response.Write "<script>alert('操作成功!');window.location.href='admin_xitong.asp';</script>" 
response.end
end if
%>
