
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>negativeClearIOExpr</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
/*
 Name : negativeClearIOExpr
 Description : Before using the clear() method, close the stream. So an IO error
 should happen for the current situation.
*/

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
<!-- This is to test if clear method throws IOException if stream is closed -->
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
<!-- To report that 'out' is null, we dont have a stream to client available -->
<!-- We create a file  which is seen by javatest -->  
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
                  int where=path.lastIndexOf("negativeClearIOErr");
                  dir=path.substring(0,where); 
                  }else {
                  dir=System.getProperty("user.home");
                  }
             
                  java.io.File file=new java.io.File(dir+System.getProperty("file.separator")+"negativeClearIOErr.err"); 
                  java.io.FileWriter fw=new java.io.FileWriter(file);
                  

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- Now lets try to clear the stream -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ try { out.clear(); fw.write("no IOException"); fw.flush();fw.close();
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