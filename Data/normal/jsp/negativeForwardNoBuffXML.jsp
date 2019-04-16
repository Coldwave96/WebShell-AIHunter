
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>negativeForwardNoBuff</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /** 	Name : negativeForwardNoBuff
	Description :We are testing for forwarding to static pages using
        <jsp:forward page > tag without a buffer. we should get 
        IllegalStateException
	Result :
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[	 
<!-- testing whether forwarding works if we stream is unbuffered-->
]]></jsp:text>
<jsp:directive.page buffer="none" />
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ try { 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>
<jsp:forward page= "/tests/core_syntax/directives/include/includecommon.html" />
<jsp:text><![CDATA[
   ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ }catch(IllegalStateException ie) {out.println("IllegalState"); } 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
</body>
</html>
]]></jsp:text>

</jsp:root>