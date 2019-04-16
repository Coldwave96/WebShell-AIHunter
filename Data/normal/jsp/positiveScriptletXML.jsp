
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
>

<jsp:text><![CDATA[<html>
<title>positiveScriptlet</title>
<body>
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[  /**  Name:positiveScriptlet
         Description: Test a series of scriplets.
         Result: Output of all the scriplets in the order
                 they appear.
**/ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- Java-style comments -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
// simple java comments
/* multiline java comments
*/

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- Multiline scriptlet -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[  int i=5;
    int j=10;
    if(j>i){
    
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ 10 ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ }
    else {
    
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ 5 ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ } 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- Another version of a Multiline scriplet -->
]]></jsp:text>

<jsp:declaration>
<![CDATA[ int k=5; ]]>

</jsp:declaration>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:declaration>
<![CDATA[ int l=10; ]]>

</jsp:declaration>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ if(l>k){ 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[10 ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[} else { 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[
5 ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ } 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- A scriptlet accessing a bean -->
]]></jsp:text>
<jsp:useBean id="counter" scope="request" class="core_syntax.scripting.scriptlet.Counter" />
<jsp:text><![CDATA[
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
    counter.setCounter(10);
    out.println(counter.getCounterValue());

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

<!-- A scriplet with try/throws/finally blocks -->
]]></jsp:text>

<jsp:scriptlet>

<![CDATA[
    int q = 0;
    try {
        q = ( 9 / 0 );
    } catch ( ArithmeticException ae ) {
        out.println( "ArithmeticException caught!" );
    } finally {
        q = 0;
    }

]]>

</jsp:scriptlet>

<jsp:text><![CDATA[

</body>
</html>
]]></jsp:text>

</jsp:root>