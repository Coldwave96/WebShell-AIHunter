
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
xmlns:request="/TestLib.tld"
>

<jsp:text><![CDATA[<html>

<title>Request time attributes evaluation</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /**	Name:request_time_attributes
		Description: This tests the evaluation order of 
                request time attributes in actions. The order of evaluation
	            is from left to right.
		
		Result:  Should calculate the expressions from left to right
 			 and return the correct values
		
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

]]></jsp:text>

<jsp:declaration>
<![CDATA[ int i=10; ]]>

</jsp:declaration>

<jsp:text><![CDATA[

]]></jsp:text>
<request:ReqTime attr1="%= i %" />
<jsp:text><![CDATA[
]]></jsp:text>
<request:ReqTime attr1='%= i++ %' />
<jsp:text><![CDATA[
]]></jsp:text>
<request:ReqTime attr1="%= i++ %" attr2="%= i++ %"  />
<jsp:text><![CDATA[
]]></jsp:text>
<request:ReqTime attr1="%= ++i %" attr2="%= ++i %" attr3="%= ++i %"  />
<jsp:text><![CDATA[
]]></jsp:text>
<request:ReqTime attr1="%= --i %" attr2="%= --i %" attr3="%= --i %"  />
<jsp:text><![CDATA[
]]></jsp:text>

<!-- Make set i to original value so that we get the same output everytime we run this tests and we don't have to shutdown and restart the server -->
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[i=10; 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

</body>
</html>
 
]]></jsp:text>

</jsp:root>