
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /**	Name: implicitImportJsp
	Description: Use jsp page directive with language="java"
                 with no import statement.  Validate that
                 javax.servlet.jsp.* was imported implicitly
                 by creating an instance of JspFactory.
	Result:No error
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[


<!-- language=java and we check if implicit import works -->

]]></jsp:text>
<jsp:directive.page language="java" />
<jsp:text><![CDATA[

]]></jsp:text>

<jsp:scriptlet>

<![CDATA[

   JspFactory jfac=JspFactory.getDefaultFactory();


]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

]]></jsp:text>

<jsp:expression>
<![CDATA[ jfac instanceof javax.servlet.jsp.JspFactory ]]>

</jsp:expression>

<jsp:text><![CDATA[


</body>
</html>
]]></jsp:text>

</jsp:root>