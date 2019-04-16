<!--#include File="inc/Conn.asp" -->
<%
If Session("AdminName")="" and Session("adminpass")="" Then
Response.Redirect "Error.asp?id=005"
Else
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>添加企业信息</title>
<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="kindeditor-4.1.10-l/themes/default/default.css" />
	<link rel="stylesheet" href="kindeditor-4.1.10-l/plugins/code/prettify.css" />
	<script charset="utf-8" src="kindeditor-4.1.10-l/kindeditor.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10-l/lang/zh_CN.js"></script>
	<script charset="utf-8" src="kindeditor-4.1.10-l/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="body"]', {
				cssPath : 'kindeditor-4.1.10-l/plugins/code/prettify.css',
				uploadJson : 'kindeditor-4.1.10-l/asp/upload_json.asp',
				fileManagerJson : 'kindeditor-4.1.10-l/asp/file_manager_json.asp',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body>
             <div class="box_top">
              <div align="center"><strong>添加企业信息</strong></div>
            </div>
   <form onSubmit="return CheckForm();" action="?action=add" id="myform" class="jqtransform" name="myform" method="post">
<table width="90%" border="0" cellpadding="0" cellspacing="0" class="list_table">
    <tr>
      <td><div align="right">名称：</div></td>
      <td><input name="aboutname" type="text" id="aboutname" class="input-text" size="60" maxlength="150"></td>
    </tr>
    <TR>
      <TD><div align="right">添加人：</div></TD>
      <TD><input  name=user class="input-text lh30" value=<%=session("AdminName")%> size=20 maxlength="22"></TD>
    </TR>
    <tr>
      <td><div align="right">内容简介：</div></td>
      <td><textarea name="body" style="width:700px;height:400px;visibility:hidden;"></textarea></td>
    </tr>
    <tr></td>
    </tr>
    <tr> 
      <td><div align="right">添加时间：</div></td>
      <td><input name="sj" type="text" readonly class="input-text lh30" id="sj" value="<%=(Date)()%>" size="20" maxlength="19">&nbsp;  &nbsp;  <input type="submit" class="btn btn82 btn_save2"  name="Submit" value="确 定">
        &nbsp;  
       <input type="reset" class="btn btn82 btn_res" name="Submit2" value="重置">       </td>
    </tr>
</table>
</form> 
</body>
</html>
<%
end if
%>
<%
if request("action")="add" then
response.Write("<script language=javascript>alert('免费版暂时不提供添加');history.go(-1)</script>") 
end if

%>
