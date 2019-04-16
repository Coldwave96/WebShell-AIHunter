
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>negativeClearUnbuffered</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
/*
 Name : negativeClearUnbuffered
 Description : Make the JSP page unbuffered, using the directive, buffer="none". 
 Now try to use the clear() method.
*/

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- This is to test if clear() method throws IllegalStateException if buffer is none -->
]]></jsp:text>
<jsp:directive.page buffer="none" />
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.println("hello"); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ try { out.clear(); }catch(IllegalStateException ise) { 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.println("we got Illegal state Exception"); }
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
</body>
</html>
]]></jsp:text>

</jsp:root>