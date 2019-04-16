
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveBeanPropertyEditor</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /** 	Name : positiveBeanPropertyEditor
	Description : Using a bean that has been configured with a 
                  PropertyEditor, validate that the editors
                  are in fact used.
	Result : Output to the client (see comments below)
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>
<jsp:useBean id="propertyBean" class="core_syntax.actions.setProperty.PropertyBean" />
<jsp:text><![CDATA[
]]></jsp:text>
<jsp:setProperty name="propertyBean" property="PString" value="Validated" />
<jsp:text><![CDATA[
]]></jsp:text>
<jsp:setProperty name="propertyBean" property="PBoolean" value="false" />
<jsp:text><![CDATA[
]]></jsp:text>
<jsp:setProperty name="propertyBean" property="PInteger" value="218" />
<jsp:text><![CDATA[

<!-- getProperty PString should return "PString Validated" -->
]]></jsp:text>
<jsp:getProperty name="propertyBean" property="PString" />
<jsp:text><![CDATA[

<!-- getProperty PBoolean should return "true" -->
]]></jsp:text>
<jsp:getProperty name="propertyBean" property="PBoolean" />
<jsp:text><![CDATA[

<!-- getProperty PInteger should return "218314" -->
]]></jsp:text>
<jsp:getProperty name="propertyBean" property="PInteger" />
<jsp:text><![CDATA[

</body>
</html>
]]></jsp:text>

</jsp:root>