<% 

Dim Query_Badword,Form_Badword,i,Err_Message,Err_Web,name

'------定义部份  头----------------------------------------------------------------------

Err_Message = 1		'处理方式：1=提示信息,2=转向页面,3=先提示再转向

Err_Web = "/"	'出错时转向的页面

Query_Badword="'∥and∥select∥update∥chr∥delete∥%20from∥;∥insert∥mid∥master.∥set∥chr(37)∥="     

'在这部份定义get非法参数,使用"∥"号间隔     

Form_Badword="'"     '在这部份定义post非法参数,使用"∥"号间隔
'Form_Badword="'∥%∥&∥*∥#∥(∥)∥="     '在这部份定义post非法参数,使用"∥"号间隔
'------定义部份  尾-----------------------------------------------------------------------
'
On Error Resume Next

'----- 对 get query 值 的过滤.

if request.QueryString<>"" then
Chk_badword=split(Query_Badword,"∥")
FOR EACH Query_Name IN Request.QueryString
for i=0 to ubound(Chk_badword)
If Instr(LCase(request.QueryString(Query_Name)),Chk_badword(i))<>0 Then
Select Case Err_Message
  Case "1"
Response.Write "<Script Language=JavaScript>alert('传参错误！参数 "&name&" 的值中包含非法字符串！\n\n请不要在参数中出现：and update delete ; insert mid master 等非法字符！');window.close();</Script>"
  Case "2"
Response.Write "<Script Language=JavaScript>location.href='"&Err_Web&"'</Script>"
  Case "3"
Response.Write "<Script Language=JavaScript>alert('传参错误！参数 "&name&"的值中包含非法字符串！\n\n请不要在参数中出现：and update delete ; insert mid master 等非法字符！');location.href='"&Err_Web&"';</Script>"
End Select
Response.End
End If
NEXT
NEXT
End if

'-----对 post 表 单值的过滤.

if request.form<>"" then
Chk_badword=split(Form_Badword,"∥")
FOR EACH name IN Request.Form
for i=0 to ubound(Chk_badword)
If Instr(LCase(request.form(name)),Chk_badword(i))<>0 Then
Select Case Err_Message
  Case "1"
Response.Write "<Script Language=JavaScript>alert('出错了！表单 "&name&" 的值中包含非法字符串！\n\n请不要在表单中出现： % & * # ( ) 等非法字符！');window.close();</Script>"
  Case "2"
Response.Write "<Script Language=JavaScript>location.href='"&Err_Web&"'</Script>"
  Case "3"
Response.Write "<Script Language=JavaScript>alert('出错了！参数 "&name&"的值中包含非法字符串！\n\n请不要在表单中出现： % & * # ( )  等非法字符！');location.href='"&Err_Web&"';</Script>"
End Select
Response.End
End If
NEXT
NEXT
end if
%>
