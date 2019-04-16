
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>negativeFlush</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ /**
 Name : negativeFlush
 Description : We are testing if method flush() flushes the contents of 
               the buffer.Initially we write something into buffer and 
               later call the flush method.
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- This is to test if flush method throws IOException if stream is closed -->
]]></jsp:text>
<jsp:directive.page import="java.io.*;"/>
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.println("hello"); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ out.close(); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- To report this situation, we dont have a stream to client available -->
<!-- we create a file in the directory where jsp is kept which is seen by javatest -->
]]></jsp:text>

<jsp:declaration>
<![CDATA[ String dir; ]]>

</jsp:declaration>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ String path=request.getPathTranslated(); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ if(path!=null) {
		 int where=path.lastIndexOf("negativeFlush"); 
		 dir=path.substring(0,where); 
		 }else{
		 dir=System.getProperty("user.home");
	         }
		 java.io.File file=new java.io.File(dir+System.getProperty("file.separator")+"negativeFlush.err"); 
		 java.io.FileWriter fw=new java.io.FileWriter(file);

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- Now lets try to flush the stream -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ try { out.flush(); fw.write("no IOException"); fw.flush();fw.close();
}catch(java.io.IOException ioe) { 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ fw.write("we got IOException"); fw.flush();fw.close(); }
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
</body>
</html>
]]></jsp:text>

</jsp:root>