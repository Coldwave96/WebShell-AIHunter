
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveSetPropAll</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /** 	Name : positiveSetPropAll
	Description : Create a valid useBean action in JSP. Set all properties 
		          of that bean from the request using a 
		          <jsp:setProperty property="*"> action. Then access all 
		          properties of the bean.
	Result : The client request will set name=Frodo, num=116165, str=Validated, as
             a result, these values should be displayed when accessed.
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- Declaring the bean with out body -->
]]></jsp:text>
<jsp:useBean id="myBean" scope="request" class="core_syntax.actions.setProperty.SetpropBean" />
<jsp:text><![CDATA[
]]></jsp:text>
<jsp:setProperty name="myBean" property="*" />
<jsp:text><![CDATA[
<!-- Accessing the properties thru a scriptlet -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.print(myBean.getStr()); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[<br>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.print(myBean.getName()); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[<br>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.print(myBean.getNum()); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[<br>

</body>
</html>
]]></jsp:text>

</jsp:root>