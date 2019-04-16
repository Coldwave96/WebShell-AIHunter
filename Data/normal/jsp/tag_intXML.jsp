
<!-- This File is generated automatically by jsp2XML converter tool --> 
<!-- Written By Ramesh Mandava/Santosh Singh -->
<jsp:root
xmlns:jsp="http://java.sun.com/JSP/Page" version="1.2"
xmlns:x="/TestLib.tld"
>

<jsp:text><![CDATA[]]></jsp:text>

<!--
  Test for defining an int variable.
-->
<jsp:text><![CDATA[



]]></jsp:text>

<jsp:declaration>
<![CDATA[ public static Integer increment(Integer i) {
         if (i != null)
            return new Integer(i.intValue()+1);
         return new Integer(0);
    }
]]>

</jsp:declaration>

<jsp:text><![CDATA[
]]></jsp:text>

<jsp:declaration>
<![CDATA[ public static int valueof(Integer i) {
         if (i != null)
            return i.intValue();
         return 0;
    }
]]>

</jsp:declaration>

<jsp:text><![CDATA[
            

]]></jsp:text>
<x:define  id="i" scope="page" life="nested" >
<jsp:text><![CDATA[
(1) i was ]]></jsp:text>

<jsp:expression>
<![CDATA[ i ]]>

</jsp:expression>

<jsp:text><![CDATA[; ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ i = increment(i); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ i is now ]]></jsp:text>

<jsp:expression>
<![CDATA[ valueof(i) ]]>

</jsp:expression>

<jsp:text><![CDATA[
]]></jsp:text>
</x:define>
<jsp:text><![CDATA[

]]></jsp:text>
<x:define  id="i" scope="page" life="nested" >
<jsp:text><![CDATA[
(2) i was ]]></jsp:text>

<jsp:expression>
<![CDATA[ i ]]>

</jsp:expression>

<jsp:text><![CDATA[; ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ i = increment(i); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ i is now ]]></jsp:text>

<jsp:expression>
<![CDATA[ valueof(i) ]]>

</jsp:expression>

<jsp:text><![CDATA[
]]></jsp:text>
</x:define>
<jsp:text><![CDATA[

]]></jsp:text>
<x:define  id="i" scope="page" life="at_begin" >
<jsp:text><![CDATA[
(3) i was ]]></jsp:text>

<jsp:expression>
<![CDATA[ i ]]>

</jsp:expression>

<jsp:text><![CDATA[; ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ i = increment(i); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ i is now ]]></jsp:text>

<jsp:expression>
<![CDATA[ valueof(i) ]]>

</jsp:expression>

<jsp:text><![CDATA[
]]></jsp:text>
</x:define>
<jsp:text><![CDATA[

(4) i was ]]></jsp:text>

<jsp:expression>
<![CDATA[ i ]]>

</jsp:expression>

<jsp:text><![CDATA[; ]]></jsp:text>

<jsp:scriptlet>

<![CDATA[ i = increment(i); 
]]>

</jsp:scriptlet>

<jsp:text><![CDATA[ i is now ]]></jsp:text>

<jsp:expression>
<![CDATA[ valueof(i) ]]>

</jsp:expression>

<jsp:text><![CDATA[
]]></jsp:text>

</jsp:root>