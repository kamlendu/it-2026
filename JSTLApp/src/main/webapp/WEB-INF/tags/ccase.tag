<%-- 
    Document   : ccase
    Created on : 17-Jan-2026, 12:08:58 pm
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="type"%>
<jsp:doBody var="content"/>

<%-- any content can be specified here e.g.: --%>
<h2> <%  
    String strBody = jspContext.getAttribute("content").toString();
    String strAttr = jspContext.getAttribute("type").toString();
    
    if(strAttr.equals("upper"))
    out.println(strBody.toUpperCase());
   else if(strAttr.equals("lower"))
    out.println(strBody.toLowerCase());
    else
    out.println("Error ....");

  %>  

</h2>