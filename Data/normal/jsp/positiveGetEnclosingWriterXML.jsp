
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveGetEnclosingWriter</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ 
	/** 	
	Name : positiveGetEnclosingWriter
	Description : Try to get JSPWriter object called by getEnclosingWriter()
				method.
	Result : Expected to return JspWriter object. 
	**/  

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[	 


<!-- Using pageContext.pushBody() to create a BodyContent object -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[	
        javax.servlet.jsp.tagext.BodyContent bc = pageContext.pushBody();

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- checking for JspWriter object -->
]]></jsp:text>

<jsp:expression>
<![CDATA[ (bc.getEnclosingWriter()) instanceof javax.servlet.jsp.JspWriter ]]>

</jsp:expression>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
        pageContext.popBody();

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

</body>
</html>
]]></jsp:text>

</jsp:root>