<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.lang3.*,com.gxkj.taobaoservice.enums.*,com.gxkj.taobaoservice.entitys.*,com.gxkj.common.util.SessionUtil,java.util.*"%>
<!DOCTYPE html>
<html>
<jsp:include page="../common/mina.jsp"></jsp:include>
<jsp:include page="../common/title.jsp" flush="true">
		<jsp:param name="titletype" value="bind_alipay"></jsp:param>
</jsp:include>
<jsp:include page="../common/css.jsp"></jsp:include>
<jsp:include page="../common/js.jsp"></jsp:include> 
<body>
<jsp:include page="../common/head.jsp" flush="true">
		<jsp:param name="showlogin" value="true"></jsp:param>
		<jsp:param name="showreg" value="false"></jsp:param>
	</jsp:include> 
	<jsp:include page="../common/subheader.jsp" flush="true">
		<jsp:param name="showshouye" value="true"></jsp:param>
	</jsp:include>  
	
	<div  class="content">
		<div class="center" style="width:1200px; margin-bottom:80px;">
			<div style="height:50px; line-height:50px;">
				<a href="###">课堂</a>&nbsp;>&nbsp;<a href="###">课堂列条</a>
			</div>
            <h2  style="text-align:center; margin:0 auto; color:#218CE1; margin-top:0; padding-bottom:20px; font-size:16px; border-bottom:dotted 1px #666;">标题啊把标题标题啊把标题标题啊把标题标题啊把标题标题啊把标题标题啊把标题</h2>
            <div style="width:500px; border:solid 1px #666; height:400px; margin:20px auto 0;"></div>
		</div>
	</div>
 
 	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>