<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
4. jsp:incluce 标签:

1). <jsp:include page="b.jsp"></jsp:include>	
2). 动态引入: 并不是像 include 指令(静态引入)生成一个 Servlet 源文件, 而是生成两个 Servlet 源文件, 然后通过一个方法的方式把目标页面包含进来. 

org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "b.jsp", out, false);

5. jsp:forward:
1).<jsp:forward page="/include/b.jsp"></jsp:forward>	   

相当于(转发）. 
	
<% 
	request.getRequestDispatcher("/include/b.jsp").forward(request, response);
%>

2). 但使用 jsp:forward 可以使用 jsp:param 子标签向 b.jsp 传入一些参数. 同样 jsp:include 也可以使用 jsp:param 子标签. 

<jsp:forward page="/include/b.jsp">
	<jsp:param value="abcd" name="username"/>
</jsp:forward>	

OR

<jsp:include page="/include/b.jsp">
	<jsp:param value="abcd" name="username"/>
</jsp:include>

在  b.jsp 页面可以通过 request.getParameter("username") 获取到传入的请求参数. 
 --%>
</body>
</html>