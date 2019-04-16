
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>checkSession Test </title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /**	Name:checkSession
		Description: Checking 'session' is of type javax.servlet.HttpSession
			  and also whether an identifier is assigned to this session
			  or not.
		Result: returns true		
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- checking for Session object state -->
]]></jsp:text>

<jsp:expression>
<![CDATA[ (session instanceof javax.servlet.http.HttpSession) ]]>

</jsp:expression>

<jsp:text><![CDATA[
<br>
<br>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ 
   if(session.getId()!=null) {

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ true ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ }
   else {

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ false ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ } 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<br>
</body>
</html>
]]></jsp:text>

</jsp:root>