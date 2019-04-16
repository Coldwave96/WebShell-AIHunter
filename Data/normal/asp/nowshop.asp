<!--#include file="anquan.asp"--><%
DB="data/shopping.mdb"
Response.Buffer=True
on error resume next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
if fso.FolderExists(server.MapPath("include"))=false then
DB="../"&DB
end if
set fso=nothing
set conn=server.createobject("adodb.Connection")
connstr="provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(DB)
'connstr= "driver={Microsoft Access Driver(*.mdb)};dbq=" & Server.MapPath(DB)
conn.Open connstr
copycolor="#A9A9A9"
%>

