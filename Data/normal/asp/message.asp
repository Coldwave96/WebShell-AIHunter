<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="system/inc.asp"-->
<%
If system_message = 2 Then
	Call alert_back("留言系统已经关闭，暂时不能留言！")
End If
If Not inull(rf("save")) Then
	If CStr(Session("CheckCode")) <> CStr(Request.Form("verifycode")) Then
        Call alert_back("验证码错误！")
    End If
    Set rs = ado_mquery("select * from cms_message")
    rs.AddNew 
    rs("m_enable") = iif(system_message = 0, 0, 1)
    rs("m_states") = 0
    rs("m_name") = str_safe(rf("m_name"))
    rs("m_tel") = str_safe(rf("m_tel"))
    rs("m_qq") = str_safe(rf("m_qq"))
    rs("m_weixin") = str_safe(rf("m_weixin"))
    rs("m_email") = str_safe(rf("m_email"))
    rs("m_cname") = str_safe(rf("m_cname"))
    rs("m_address") = str_safe(rf("m_address"))
    rs("m_content") = str_safe(rf("m_content"))
    rs("m_date") = Now()
    rs("m_cdate") = Now()
    rs.Update
    rs.Close
    Set rs = Nothing
    Call alert_href("感谢您的提交，我公司会在24小时内联系您。", s_path)
End If
include(iif(ismobi(),mskin&"message.asp",skin&"message.asp"))
%>