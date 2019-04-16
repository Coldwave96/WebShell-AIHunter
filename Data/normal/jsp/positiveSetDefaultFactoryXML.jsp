
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveSetDefaultFactory</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[   /** Name : positiveSetDefaultFactory
         Description :use getDefaultFactory to get a factory object. use the 
                      same object for setting as default
         Result: page should get compiled and output we should get without error
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[         
]]></jsp:text>
<jsp:directive.page import="javax.servlet.jsp.*"/>
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ JspFactory jf=JspFactory.getDefaultFactory(); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ if(jf!=null) {
       JspFactory.setDefaultFactory(jf);
       out.println("it works"); 
   } else {
       out.println("it does not work");
   }

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
</body>
</html>

     
]]></jsp:text>

</jsp:root>