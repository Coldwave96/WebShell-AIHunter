<%@ page contentType="text/html; charset=UTF-8"%>
<html>
 <jsp:include page="../site/common/mina.jsp"></jsp:include>
<jsp:include page="../site/common/css.jsp"></jsp:include>
<jsp:include page="../site/common/js.jsp"></jsp:include> 
<jsp:include page="../site/common/title.jsp" flush="true">
		<jsp:param name="titletype" value="500"></jsp:param>
</jsp:include>

<body>
	<jsp:include page="../site/common/head.jsp" flush="true">
		<jsp:param name="showlogin" value="true"></jsp:param>
		<jsp:param name="showreg" value="true"></jsp:param>
	</jsp:include>  
	<jsp:include page="../site/common/subheader.jsp" flush="true">
		<jsp:param name="showshouye" value="false"></jsp:param>
	</jsp:include>

<div style="width:100%; text-align:center; padding-top:60px;">
			<img src="<%=request.getContextPath() %>/resources/images/500.gif" />
		</div>
		<div style="width:100%; text-align:center; padding-top:50px;">
			
			<a href="<%=request.getContextPath() %>/"><img src="<%=request.getContextPath() %>/resources/images/btn_index.gif" /></a>
		</div>
		
		
		<jsp:include page="../site/common/footer.jsp"></jsp:include> 
</body>
</html>