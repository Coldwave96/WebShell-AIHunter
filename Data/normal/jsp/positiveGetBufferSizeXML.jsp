
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveGetBufferSize</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
/*
 Name : positiveGetBufferSize
 Description : Set the buffer size with the buffer directive,
 then use the getBufferSize() method.
 */
 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- this is to test if getBufferSize method works -->
<!-- setting buffer size to 5kb using directive -->
]]></jsp:text>
<jsp:directive.page buffer="5kb" />
<jsp:text><![CDATA[
<!-- calling getBufferSize() method -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ if (out.getBufferSize() >= 5120) {
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
true
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ } else { 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
false
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ } 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- expected to return true --> 
</body>
</html>
]]></jsp:text>

</jsp:root>