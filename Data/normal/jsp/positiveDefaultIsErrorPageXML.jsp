
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveDefaultIsErrorPage</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /** 	Name : positiveDefaultIsErrorPage.jsp
	Description : Test the value of isErrorPage=false is default in a page. 
		      This is set in the 'errorpagedefault.jsp'	
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- We are setting the error page to "errorpagedefault.jsp" where isErrorPage is not set (false) -->
]]></jsp:text>
<jsp:directive.page errorPage="errorpagedefault.jsp" autoFlush="false" />
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:declaration>
<![CDATA[ int i=0; ]]>

</jsp:declaration>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:expression>
<![CDATA[ 9/i ]]>

</jsp:expression>

<jsp:text><![CDATA[
</body>
</html>
]]></jsp:text>

</jsp:root>