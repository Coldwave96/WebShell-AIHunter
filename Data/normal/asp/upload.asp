  <%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "inc/Error.asp?id=001"
response.end
end if
%><%
 '判断数字奇偶
Function isEven(num)
if not isNumeric(num) then
isEven="这不是一个数字啊"
exit Function
end if
if num mod 2 = 0 then
isEven=0
else
isEven=1
end if
end Function

Function FormatDate(DateAndTime,para)
	On Error Resume Next
	Dim y, m, d, h, mi, s, strDateTime
	FormatDate = DateAndTime
	
	If Not IsNumeric(para) Then Exit Function
	If Not IsDate(DateAndTime) Then Exit Function
	y = Mid(CStr(Year(DateAndTime)),3)
	m = CStr(Month(DateAndTime))
	If Len(m) = 1 Then m = "0" & m
	d = CStr(Day(DateAndTime))
	If Len(d) = 1 Then d = "0" & d
	h = CStr(Hour(DateAndTime))
	If Len(h) = 1 Then h = "0" & h
	mi = CStr(Minute(DateAndTime))
	If Len(mi) = 1 Then mi = "0" & mi
	s = CStr(Second(DateAndTime))
	If Len(s) = 1 Then s = "0" & s
	
	Select Case para
		Case "1"
			strDateTime = y & "-" & m & "-" & d & " " & h & ":" & mi & ":" & s
		Case "2"
			strDateTime = y & "-" & m & "-" & d
		Case "3"
			strDateTime = y & "/" & m & "/" & d
		Case "4"
			strDateTime = y & "年" & m & "月" & d & "日"
		Case "5"
			strDateTime = m & "-" & d
		Case "6"
			strDateTime = m & "/" & d
		Case "7"
			strDateTime = m & "月" & d & "日"
		Case "8"
			strDateTime = y & "年" & m & "月"
		Case "9"
			strDateTime = y & "-" & m
		Case "10"
			strDateTime = y & "/" & m
		Case "11"
			y = CStr(Year(DateAndTime))
			strDateTime = y & "-" & m & "-" & d
		Case "12"
			y = CStr(Year(DateAndTime))
			strDateTime = y & m & d & "_" & h & mi & s			
		Case Else
			strDateTime = DateAndTime
		End Select
		
	'FormatDate = strDateTime
	If datediff("d",DateAndTime,Now())=0 then
	FormatDate = "<font color=#ff0000>"&strDateTime&"</font>"
	else
	FormatDate = ""&strDateTime&""
	End if
End Function 

Function CreateFolder(ByVal y0)
	Dim y1,y2,objFSO,i
	On Error Resume Next
	y0=Server.MapPath(y0)
	IF InStr(y0,"\")<=0 Or InStr(y0,":")<=0 Then:CreateFolder=False:Exit Function
	Set objFSO=CreateObject("Scripting.FileSystemObject") 
		IF objFSO.FolderExists(y0) Then:CreateFolder=True:Exit Function  
		y1=Split(y0,"\"):y2="" 
		For i=0 To UBound(y1)  
			y2=y2&y1(i)&"\"
			IF Not objFSO.FolderExists(y2) Then objFSO.CreateFolder(y2) 
		Next 
	Set objFSO=Nothing 
	IF Err=0 Then CreateFolder=True:Else CreateFolder=False
End Function
 
Function GetImg(str)
set objregEx = new RegExp
objregEx.IgnoreCase = true
objregEx.Global = true
zzstr="src=(.+?).(jpg|gif|png|bmp)"
objregEx.Pattern = zzstr
set matches = objregEx.execute(str)
for each match in matches
retstr = retstr &"|"& Match.Value
next
if retstr<>"" then
Imglist=split(retstr,"|")
GetImg=Imglist(1)
GetImg=replace(GetImg,left(GetImg,5),"")
else
GetImg=""
end if
end function
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Upload</title>
 <style>
body {padding:0;margin:0; }
body,td {font-size:12px;}
</style>
<body>
<%
select case request("action")
case "logo":
call logo()
case "simg":
call simg()
case "link":
call link()
case "ad":
call ad()
end select

'============================================================上传logo图片
sub logo()
if Request.QueryString("submit")="logo" then
uploadpath=SitePath&SiteUp&"/uploadfiles/logo/" & Year(Now) & right("0" & Month(Now), 2) & "/"
uploadsize="1024"
uploadtype="jpg/jpeg/gif/png/bmp"
Set Uprequest=new UpLoadClass
	CreateFolder(uploadpath)
    Uprequest.SavePath=uploadpath
    Uprequest.MaxSize=uploadsize*5000
    Uprequest.FileType=uploadtype
    AutoSave=true
    Uprequest.open
  if Uprequest.form("file_Err")<>0  then
  select case Uprequest.form("file_Err")
  case 1:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件最大500k [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  case 2:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件格式不对 [<a href='javascript:history.go(-1)']>重新上传</a>]</font></div>"
  case 3:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件太大且格式不对 [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  end select
  response.write str
  else
  response.write "<script language=""javascript"">parent.frm.pic.value='"&uploadpath&""&Uprequest.Form("file")&"';" 
  response.write "</script>"
  response.write "<div style=""margin:10px 0;color:red"">上传成功!</div>"
  
  'conn.close
 'set conn=nothing
  end if
End if
response.write "<form name=form action=?action=logo&submit=logo method=post enctype=multipart/form-data>"
response.write "<div style='text-align:left;'><input type=file name=file size=15  style=""width:250px;"" onfocus=""javascript:this.className='fbform1';"" onblur=""javascript:this.className='fbform';"">&nbsp;"
response.write "<input type=submit  class=input-text lh30 name=submit value=上传></div>"
response.write "</form>"
end sub

'============================================================上传link图片
sub link()
if Request.QueryString("submit")="link" then
uploadpath=SitePath&SiteUp&"/" & Year(Now) & right("0" & Month(Now), 2) & "/"
uploadsize="1024"
uploadtype="jpg/gif/png/bmp"
Set Uprequest=new UpLoadClass
	CreateFolder(uploadpath)
    Uprequest.SavePath=uploadpath
    Uprequest.MaxSize=uploadsize*5000
    Uprequest.FileType=uploadtype
    AutoSave=true
    Uprequest.open
  if Uprequest.form("file_Err")<>0  then
  select case Uprequest.form("file_Err")
  case 1:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件最大500k [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  case 2:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件格式不对 [<a href='javascript:history.go(-1)']>重新上传</a>]</font></div>"
  case 3:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件太大且格式不对 [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  end select
  response.write str
  else
  response.write "<script language=""javascript"">parent.myform.LogoUrl.value='"&replace(uploadpath,"../","")&""&Uprequest.Form("file")&"';" 
  response.write "</script>"
  response.write "<div style=""margin:10px 0;color:red"">上传成功![<a href='javascript:history.go(-1)'>继续上传</a>]</div>"
  
  conn.close
  set conn=nothing
  end if
end if

response.write "<form name=form action=?action=link&submit=link method=post enctype=multipart/form-data>"
response.write "<div style='text-align:left;'><input type=file name=file size=15  style=""width:250px;"">&nbsp;"
response.write "<input type=submit name=submit value=上传></div>"
response.write "</form>"
end sub



'============================================================上传内容图片
sub simg()
if Request.QueryString("submit")="simg" then
uploadpath=SitePath&SiteUp&"/uploadfiles/image/" & Year(Now) & right("0" & Month(Now), 2) &cp& "/"
uploadsize="1024"
uploadtype="jpg/jpeg/gif/png/bmp"
Set Uprequest=new UpLoadClass
	CreateFolder(uploadpath)
    Uprequest.SavePath=uploadpath
    Uprequest.MaxSize=uploadsize*5000
    Uprequest.FileType=uploadtype
    AutoSave=true
    Uprequest.open
  if Uprequest.form("file_Err")<>0  then
  select case Uprequest.form("file_Err")
  case 1:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件最大"&Uprequest.MaxSize/1024&"K [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  case 2:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件格式不对 [<a href='javascript:history.go(-1)']>重新上传</a>]</font></div>"
  case 3:str="<div style=""padding-top:5px;padding-bottom:5px;""> <font color=blue>文件太大且格式不对 [<a href='javascript:history.go(-1)'>重新上传</a>]</font></div>"
  end select
  response.write str
  else
  response.write "<script language=""javascript"">parent.myform.pic.value='"&uploadpath&Uprequest.Form("file")&"';</script>" 
  response.write "<script language=""javascript"">parent.myform.IsFlash.checked=true;</script>" 
  Response.write "<script language=""javascript"">parent.KE.insertHtml('body', '<img src="""&uploadpath&Uprequest.Form("file")&""">');</script>"
  response.write "<div style=""margin:10px 0;color:red"">上传成功![<a href='javascript:history.go(-1)'>继续上传</a>]</div>"
  
  'conn.close
  'set conn=nothing
  end if

Set Uprequest=nothing

If IsAspJpeg=1 then

Dim Jpeg,RV_img 
RV_img=uploadpath&Uprequest.Form("file")

Set Jpeg = Server.CreateObject("Persits.Jpeg") 
Jpeg.Open Server.MapPath(RV_img)
   
Jpeg.Canvas.Font.Color = "&H"&""&Color1&""
Jpeg.Canvas.Font.Size = ""&FontSize&""
Jpeg.Canvas.Font.Family = ""&FontFamily&""
Jpeg.Canvas.Font.ShadowColor = "&H"&""&Color2&""
Jpeg.Canvas.Font.ShadowXoffset = 1
Jpeg.Canvas.Font.ShadowYoffset = 1 
'Jpeg.Canvas.Font.Quality = 1
Jpeg.Canvas.Font.Bold = False
Jpeg.Canvas.Print 10, 10, ImageMode
Jpeg.Canvas.Print 8,5,""&Fonttext&""
Jpeg.Save Server.MapPath(RV_img)

Set Jpeg = Nothing 
Set Uprequest=nothing
end if
end if

response.write "<form name=form action=?action=simg&submit=simg method=post enctype=multipart/form-data>"
response.write "<div style='text-align:left;'><input type=file name=file size=15  style=""width:250px;"" onfocus=""javascript:this.className='fbform1';"" onblur=""javascript:this.className='fbform';"">&nbsp;"
response.write "<input type=submit name=submit value=上传></div>"
response.write "</form>"
end sub

'============================================================上传函数
Class UpLoadClass 

    Private m_TotalSize,m_MaxSize,m_FileType,m_SavePath,m_AutoSave,m_Error,m_Charset 
    Private m_dicForm,m_binForm,m_binItem,m_strDate,m_lngTime 
    Public    FormItem,FileItem 

    Public Property Get Version 
        Version="Fonshen UpLoadClass Version 2.1" 
    End Property 

    Public Property Get Error 
        Error=m_Error 
    End Property 

    Public Property Get Charset 
        Charset=m_Charset 
    End Property 
    Public Property Let Charset(strCharset) 
        m_Charset=strCharset 
    End Property 

    Public Property Get TotalSize 
        TotalSize=m_TotalSize 
    End Property 
    Public Property Let TotalSize(lngSize) 
        if isNumeric(lngSize) then m_TotalSize=Clng(lngSize) 
    End Property 

    Public Property Get MaxSize 
        MaxSize=m_MaxSize 
    End Property 
    Public Property Let MaxSize(lngSize) 
        if isNumeric(lngSize) then m_MaxSize=Clng(lngSize) 
    End Property 

    Public Property Get FileType 
        FileType=m_FileType 
    End Property 
    Public Property Let FileType(strType) 
        m_FileType=strType 
    End Property 

    Public Property Get SavePath 
        SavePath=m_SavePath 
    End Property 
    Public Property Let SavePath(strPath) 
        m_SavePath=Replace(strPath,chr(0),"") 
    End Property 

    Public Property Get AutoSave 
        AutoSave=m_AutoSave 
    End Property 
    Public Property Let AutoSave(byVal Flag) 
        select case Flag 
            case 0,1,2: m_AutoSave=Flag 
        end select 
    End Property 

    Private Sub Class_Initialize 
        m_Error       = -1 
        m_Charset = "gb2312" 
        m_TotalSize= 0 
        m_MaxSize = 1000*1024
        m_FileType = "jpg/gif/bmp/png" 
        m_SavePath = "" 
        m_AutoSave = 0 
        Dim dtmNow : dtmNow = Date() 
        m_strDate = Year(dtmNow)&Right("0"&Month(dtmNow),2)&Right("0"&Day(dtmNow),2) 
        m_lngTime = Clng(Timer()*1000) 
        Set m_binForm = Server.CreateObject("ADODB.Stream") 
        Set m_binItem = Server.CreateObject("ADODB.Stream") 
        Set m_dicForm = Server.CreateObject("Scripting.Dictionary") 
        m_dicForm.CompareMode = 1 
    End Sub 

    Private Sub Class_Terminate 
        m_dicForm.RemoveAll 
        Set m_dicForm = nothing 
        Set m_binItem = nothing 
        m_binForm.Close() 
        Set m_binForm = nothing 
    End Sub 

    Public Function Open() 
        Open = 0 
        if m_Error=-1 then 
            m_Error=0 
        else 
            Exit Function 
        end if 
        Dim lngRequestSize : lngRequestSize=Request.TotalBytes 
        if m_TotalSize>0 and lngRequestSize>m_TotalSize then 
            m_Error=5 
            Exit Function 
        elseif lngRequestSize<1 then 
            m_Error=4 
            Exit Function 
        end if 

        Dim lngChunkByte : lngChunkByte = 102400 
        Dim lngReadSize : lngReadSize = 0 
        m_binForm.Type = 1 
        m_binForm.Open() 
        do 
            m_binForm.Write Request.BinaryRead(lngChunkByte) 
            lngReadSize=lngReadSize+lngChunkByte 
            if lngReadSize >= lngRequestSize then exit do 
        loop         
        m_binForm.Position=0 
        Dim binRequestData : binRequestData=m_binForm.Read() 

        Dim bCrLf,strSeparator,intSeparator 
        bCrLf=ChrB(13)&ChrB(10) 
        intSeparator=InstrB(1,binRequestData,bCrLf)-1 
        strSeparator=LeftB(binRequestData,intSeparator) 

        Dim strItem,strInam,strFtyp,strPuri,strFnam,strFext,lngFsiz 
        Const strSplit="’"">" 
        Dim strFormItem,strFileItem,intTemp,strTemp 
        Dim p_start : p_start=intSeparator+2 
        Dim p_end 
        Do 
            p_end = InStrB(p_start,binRequestData,bCrLf&bCrLf)-1 
            m_binItem.Type=1 
            m_binItem.Open() 
            m_binForm.Position=p_start 
            m_binForm.CopyTo m_binItem,p_end-p_start 
            m_binItem.Position=0 
            m_binItem.Type=2 
            m_binItem.Charset=m_Charset 
            strItem = m_binItem.ReadText() 
            m_binItem.Close() 
            intTemp=Instr(39,strItem,"""") 
            strInam=Mid(strItem,39,intTemp-39) 

            p_start = p_end + 4 
            p_end = InStrB(p_start,binRequestData,strSeparator)-1 
            m_binItem.Type=1 
            m_binItem.Open() 
            m_binForm.Position=p_start 
            lngFsiz=p_end-p_start-2 
            m_binForm.CopyTo m_binItem,lngFsiz 

            if Instr(intTemp,strItem,"filename=""")<>0 then 
            if not m_dicForm.Exists(strInam&"_From") then 
                strFileItem=strFileItem&strSplit&strInam 
                if m_binItem.Size<>0 then 
                    intTemp=intTemp+13 
                    strFtyp=Mid(strItem,Instr(intTemp,strItem,"Content-Type: ")+14) 
                    strPuri=Mid(strItem,intTemp,Instr(intTemp,strItem,"""")-intTemp) 
                    intTemp=InstrRev(strPuri,"\") 
                    strFnam=Mid(strPuri,intTemp+1) 
                    m_dicForm.Add strInam&"_Type",strFtyp 
                    m_dicForm.Add strInam&"_Name",strFnam 
                    m_dicForm.Add strInam&"_Path",Left(strPuri,intTemp) 
                    m_dicForm.Add strInam&"_Size",lngFsiz 
                    if Instr(strFnam,".")<>0 then 
                        strFext=Mid(strFnam,InstrRev(strFnam,".")+1) 
                    else 
                        strFext="" 
                    end if 

                    select case strFtyp 
                    case "image/jpeg","image/pjpeg","image/jpg" 
                        if Lcase(strFext)<>"jpg" then strFext="jpg" 
                        m_binItem.Position=3 
                        do while not m_binItem.EOS 
                            do 
                                intTemp = Ascb(m_binItem.Read(1)) 
                            loop while intTemp = 255 and not m_binItem.EOS 
                            if intTemp < 192 or intTemp > 195 then 
                                m_binItem.read(Bin2Val(m_binItem.Read(2))-2) 
                            else 
                                Exit do 
                            end if 
                            do 
                                intTemp = Ascb(m_binItem.Read(1)) 
                            loop while intTemp < 255 and not m_binItem.EOS 
                        loop 
                        m_binItem.Read(3) 
                        m_dicForm.Add strInam&"_Height",Bin2Val(m_binItem.Read(2)) 
                        m_dicForm.Add strInam&"_Width",Bin2Val(m_binItem.Read(2)) 
                    case "image/gif" 
                        if Lcase(strFext)<>"gif" then strFext="gif" 
                        m_binItem.Position=6 
                        m_dicForm.Add strInam&"_Width",BinVal2(m_binItem.Read(2)) 
                        m_dicForm.Add strInam&"_Height",BinVal2(m_binItem.Read(2)) 
                    case "image/png","image/x-png" 
                        if Lcase(strFext)<>"png" then strFext="png" 
                        m_binItem.Position=18 
                        m_dicForm.Add strInam&"_Width",Bin2Val(m_binItem.Read(2)) 
                        m_binItem.Read(2) 
                        m_dicForm.Add strInam&"_Height",Bin2Val(m_binItem.Read(2)) 
                    case "image/bmp" 
                        if Lcase(strFext)<>"bmp" then strFext="bmp" 
                        m_binItem.Position=18 
                        m_dicForm.Add strInam&"_Width",BinVal2(m_binItem.Read(4)) 
                        m_dicForm.Add strInam&"_Height",BinVal2(m_binItem.Read(4)) 
                    case "application/x-shockwave-flash" 
                        if Lcase(strFext)<>"swf" then strFext="swf" 
                        m_binItem.Position=0 
                        if Ascb(m_binItem.Read(1))=70 then 
                            m_binItem.Position=8 
                            strTemp = Num2Str(Ascb(m_binItem.Read(1)), 2 ,8) 
                            intTemp = Str2Num(Left(strTemp, 5), 2) 
                            strTemp = Mid(strTemp, 6) 
                            while (Len(strTemp) < intTemp * 4) 
                                strTemp = strTemp & Num2Str(Ascb(m_binItem.Read(1)), 2 ,8) 
                            wend 
                            m_dicForm.Add strInam&"_Width", Int(Abs(Str2Num(Mid(strTemp, intTemp + 1, intTemp), 2) - Str2Num(Mid(strTemp, 1, intTemp), 2)) / 20) 
                            m_dicForm.Add strInam&"_Height",Int(Abs(Str2Num(Mid(strTemp, 3 * intTemp + 1, intTemp), 2) - Str2Num(Mid(strTemp, 2 * intTemp + 1, intTemp), 2)) / 20) 
                        end if 
                    end select 

                    m_dicForm.Add strInam&"_Ext",strFext 
                    m_dicForm.Add strInam&"_From",p_start 
                    intTemp=GetFerr(lngFsiz,strFext) 
                    if m_AutoSave<>2 then 
                        m_dicForm.Add strInam&"_Err",intTemp 
                        if intTemp=0 then 
                            if m_AutoSave=0 then 
                                strFnam=GetTimeStr() 
                                if strFext<>"" then strFnam=strFnam&"."&strFext 
                            end if 
                            m_binItem.SaveToFile Server.MapPath(m_SavePath&strFnam),2 
                            m_dicForm.Add strInam,strFnam 
                        end if 
                    end if 
                else 
                    m_dicForm.Add strInam&"_Err",-1 
                end if 
            end if 
            else 
                m_binItem.Position=0 
                m_binItem.Type=2 
                m_binItem.Charset=m_Charset 
                strTemp=m_binItem.ReadText 
                if m_dicForm.Exists(strInam) then 
                    m_dicForm(strInam) = m_dicForm(strInam)&","&strTemp 
                else 
                    strFormItem=strFormItem&strSplit&strInam 
                    m_dicForm.Add strInam,strTemp 
                end if 
            end if 

            m_binItem.Close() 
            p_start = p_end+intSeparator+2 
        loop Until p_start+3>lngRequestSize 
        FormItem=Split(strFormItem,strSplit) 
        FileItem=Split(strFileItem,strSplit) 
         
        Open = lngRequestSize 
    End Function 

    Private Function GetTimeStr() 
        m_lngTime=m_lngTime+1 
        GetTimeStr=m_strDate&Right("00000000"&m_lngTime,8) 
    End Function 

    Private Function GetFerr(lngFsiz,strFext) 
        dim intFerr 
        intFerr=0 
        if lngFsiz>m_MaxSize and m_MaxSize>0 then 
            if m_Error=0 or m_Error=2 then m_Error=m_Error+1 
            intFerr=intFerr+1 
        end if 
        if Instr(1,LCase("/"&m_FileType&"/"),LCase("/"&strFext&"/"))=0 and m_FileType<>"" then 
            if m_Error<2 then m_Error=m_Error+2 
            intFerr=intFerr+2 
        end if 
        GetFerr=intFerr 
    End Function 

    Public Function Save(Item,strFnam) 
        Save=false 
        if m_dicForm.Exists(Item&"_From") then 
            dim intFerr,strFext 
            strFext=m_dicForm(Item&"_Ext") 
            intFerr=GetFerr(m_dicForm(Item&"_Size"),strFext) 
            if m_dicForm.Exists(Item&"_Err") then 
                if intFerr=0 then 
                    m_dicForm(Item&"_Err")=0 
                end if 
            else 
                m_dicForm.Add Item&"_Err",intFerr 
            end if 
            if intFerr<>0 then Exit Function 
            if VarType(strFnam)=2 then 
                select case strFnam 
                    case 0:strFnam=GetTimeStr() 
                        if strFext<>"" then strFnam=strFnam&"."&strFext 
                    case 1:strFnam=m_dicForm(Item&"_Name") 
                end select 
            end if 
            m_binItem.Type = 1 
            m_binItem.Open 
            m_binForm.Position = m_dicForm(Item&"_From") 
            m_binForm.CopyTo m_binItem,m_dicForm(Item&"_Size") 
            m_binItem.SaveToFile Server.MapPath(m_SavePath&strFnam),2 
            m_binItem.Close() 
            if m_dicForm.Exists(Item) then 
                m_dicForm(Item)=strFnam 
            else 
                m_dicForm.Add Item,strFnam 
            end if 
            Save=true 
        end if 
    End Function 

    Public Function GetData(Item) 
        GetData="" 
        if m_dicForm.Exists(Item&"_From") then 
            if GetFerr(m_dicForm(Item&"_Size"),m_dicForm(Item&"_Ext"))<>0 then Exit Function 
            m_binForm.Position = m_dicForm(Item&"_From") 
            GetData=m_binForm.Read(m_dicForm(Item&"_Size")) 
        end if 
    End Function 

    Public Function Form(Item) 
        if m_dicForm.Exists(Item) then 
            Form=m_dicForm(Item) 
        else 
            Form="" 
        end if 
    End Function 

    Private Function BinVal2(bin) 
        dim lngValue,i 
        lngValue = 0 
        for i = lenb(bin) to 1 step -1 
            lngValue = lngValue *256 + Ascb(midb(bin,i,1)) 
        next 
        BinVal2=lngValue 
    End Function 

    Private Function Bin2Val(bin) 
        dim lngValue,i 
        lngValue = 0 
        for i = 1 to lenb(bin) 
            lngValue = lngValue *256 + Ascb(midb(bin,i,1)) 
        next 
        Bin2Val=lngValue 
    End Function 

    Private Function Num2Str(num, base, lens) 
        Dim ret,i 
        ret = "" 
        while(num >= base) 
            i   = num Mod base 
            ret = i & ret 
            num = (num - i) / base 
        wend 
        Num2Str = Right(String(lens, "0") & num & ret, lens) 
    End Function 
     
    Private Function Str2Num(str, base) 
        Dim ret, i 
        ret = 0 
        for i = 1 to Len(str) 
            ret = ret * base + Cint(Mid(str, i, 1)) 
        next 
        Str2Num = ret 
    End Function 
End Class 
%> 
</body>
</html>
<%
set Uprequest=nothing
%>