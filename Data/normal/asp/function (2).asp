<%
If inull(Request.Cookies("login_name")) Or inull(Request.Cookies("login_password")) Then
	Response.Redirect("index.asp")
Else
	Set rs_gap = ado_query("select * from cms_admin where a_name = '"&Request.Cookies("login_name")&"' and a_password = '"&Request.Cookies("login_password")&"'")
	If rs_gap.EOF Then
		Response.Redirect("cms_exit.asp")
	End If
	admin_name = rs_gap("a_name")
	admin_tname = rs_gap("a_tname")
	admin_penname = rs_gap("a_penname")
	admin_purview = rs_gap("a_purview")
	arr_admin_purview = Split(admin_purview, ",")
	rs_gap.Close
	Set rs_gap = Nothing
End If 
Sub check_admin_purview(t0)
	If Not arr_in(arr_admin_purview,t0) Then
		Call alert_back("您无权操作此页面！")
	End If
End Sub
	
Function nav_select_list(t0, t1, t2, t3)
    Set rs_nsl = ado_query("select * from cms_nav where n_parent = "&t0&" and id <> "&t3&" and n_ifnav =1 order by n_order asc , id asc")
    For i = 1 To t1
        sp = sp&"　"
    Next
    if_main = IIf(t0 = 0, "", "¬")
    Do While Not rs_nsl.EOF
        if_selected = IIf(rs_nsl("id") = t2, " selected=""selected""", "")
        nav_select_list = nav_select_list&"<option"&if_selected&" value="""&rs_nsl("id")&""">"&sp&if_main&rs_nsl("n_name")&"</option>"&vbCrLf&nav_select_list(rs_nsl("id"), i, t2, t3)
        rs_nsl.movenext
    Loop
    rs_nsl.Close
    Set rs_nsl = Nothing
End Function

'==========获取当前频道的所有子类==========

Function nav_child(t0, t1)
    Set rs_vc = ado_query("select * from cms_nav where n_parent = "&t0&" order by n_order asc , id asc")
    Do While Not rs_vc.EOF
        nav_child = nav_child&","&rs_vc("id")&nav_child(rs_vc("id"), null)
        rs_vc.MoveNext
    Loop
    rs_vc.Close
    Set rs_vc = Nothing
    nav_child = t1&nav_child
End Function

'==========判断出主类==========

Function nav_host(t0)
    Set rs_st = ado_query("select * from cms_nav where id = "&t0&"")
    If rs_st("n_parent") <> 0 Then
        nav_host = nav_host(rs_st("n_parent"))
    Else
        nav_host = rs_st("id")
    End If
    rs_st.Close
    Set rs_st = Nothing
End Function

'==========判断当前频道是否有子类==========

Function if_child(t0)
    Set rs_if = ado_query("select * from cms_nav where n_parent = "&t0&"")
    if_child = IIf(rs_if.EOF, 0, 1)
    rs_if.Close
    Set rs_if = Nothing
End Function

'==========过程 - 更新所有频道==========

Sub update_nav()
    Set rs_uc = ado_mquery("select * from cms_nav")
    Do While Not rs_uc.EOF
        rs_uc("n_ifchild") = if_child(rs_uc("ID"))
        rs_uc("n_child") = nav_child(rs_uc("ID"), rs_uc("ID"))
        rs_uc("n_host") = nav_host(rs_uc("ID"))
        rs_uc.update
        rs_uc.movenext
    Loop
    rs_uc.Close
    Set rs_uc = Nothing
End Sub

'==========频道管理==========

Function nav_view_list(t0, t1)
    m = t1
    Set rs_nvl = ado_query("select * from cms_nav where n_parent = "&t0&" order by n_order asc , id asc")
    For i = 1 To m
        sp = sp&"　"
    Next
    if_main = IIf(t0 = 0, "", "¬")
    Do While Not rs_nvl.EOF
        if_safe= iif(rs_nvl("n_safe")=1," <span class=""badge bg-blue""> 保 </span> ","")
        nav_view_list = nav_view_list&"<tr><td align=""center"">"&rs_nvl("id")&"</td><td align=""center"">"&rs_nvl("n_order")&"</td><td>"&sp&if_main&"<a href="""&n_url(rs_nvl("id"),rs_nvl("n_aname"))&""" target=""_blank"">"&iif(rs_nvl("n_parent")=0," <span class=""badge bg-red""> 主 </span> ","")&rs_nvl("n_name")&if_safe&"</a></td><td><span class=""badge"">"&get_nav_model(rs_nvl("n_model"),1)&"</span> <span class=""badge"">"&get_nav_dmodel(rs_nvl("n_dmodel"),1)&"</span></td><td><a href=""cms_content_add.asp?cid="&rs_nvl("id")&""" class=""btn bg-green""> <span class=""fa fa-plus""></span> 添加</a> <a href=""cms_content.asp?cid="&rs_nvl("id")&""" class=""btn bg-green""> <span class=""fa fa-newspaper-o""></span> 管理</a>   </td><td><a href=""cms_nav_edit.asp?id="&rs_nvl("id")&""" class=""btn bg-main""> <span class=""fa fa-edit""></span> 编辑</a> "&iif(rs_nvl("n_safe")=0,"<a class=""btn bg-red"" href=""cms_nav.asp?del="&rs_nvl("id")&""" onclick=""return confirm('提示：删除导航将会把属于该导航的内容一并删除！')"" > <span class=""fa fa-trash""></span>  删除</a>","")&" </td></tr>"&vbCrLf&nav_view_list(rs_nvl("id"), i)
        rs_nvl.movenext
    Loop
    rs_nvl.Close
    Set rs_nvl = Nothing
End Function
'获取导航模型
Function nav_model_select_list(t0,t1)
    Set rs_cmsl = ado_query("select * from cms_model where m_type = "&t1&" order by id asc")
    Do While Not rs_cmsl.EOF
        if_selected = IIf(rs_cmsl("m_url") = t0, " selected=""selected""", "")
        nav_model_select_list = nav_model_select_list&"<option"&if_selected&" value="""&rs_cmsl("m_url")&""" >"&rs_cmsl("m_name")&"</option>"&vbCrLf
        rs_cmsl.movenext
    Loop
    rs_cmsl.Close
    Set rs_cmsl = Nothing
End Function
'获取内容模型列表
Function nav_dmodel_select_list(t0,t1)
    Set rs_ndsl = ado_query("select * from cms_dmodel where d_type = "&t1&" order by id asc")
    Do While Not rs_ndsl.EOF
        if_selected = IIf(rs_ndsl("d_url") = t0, " selected=""selected""", "")
        nav_dmodel_select_list = nav_dmodel_select_list&"<option"&if_selected&" value="""&rs_ndsl("d_url")&""" >"&rs_ndsl("d_name")&"</option>"&vbCrLf
        rs_ndsl.movenext
    Loop
    rs_ndsl.Close
    Set rs_ndsl = Nothing
End Function

'获取频道模型
Function get_nav_model(t0,t1)
	Set rs_gnm = ado_query("select * from cms_model where m_url= '"&t0&"' And m_type = "&t1&"" )
	If Not rs_gnm.EOF Then 
		get_nav_model= rs_gnm("m_name")&""
	Else
		get_nav_model= "不存在"
	End If 

	rs_gnm.Close
	Set rs_gnm = Nothing
End Function
'获取内容模型
Function get_nav_dmodel(t0,t1)
	Set rs_gnmd = ado_query("select * from cms_dmodel where d_url= '"&t0&"' and d_type = "&t1&"")
	If Not rs_gnmd.EOF Then 
		get_nav_dmodel= rs_gnmd("d_name")&" "
	Else
		get_nav_dmodel= "不存在"
	End If 

	rs_gnmd.Close
	Set rs_gnmd = Nothing
End Function
	
Function get_member_id(t0)
	Set rs_gmi = ado_query("select * from cms_member where m_name = '"&t0&"'")
	If rs_gmi.EOF Then
		get_member_id = ""
	Else
		get_member_id = rs_gmi("id")
	End If
	rs_gmi.Close
	Set rs_gmi = Nothing
End Function
%>