<%-- 
    Document   : ucase
    Created on : 17-Jan-2026, 12:05:07 pm
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>
<jsp:doBody var="content"/>

<%-- any content can be specified here e.g.: --%>
<h2>
  <%  
    String strBody = jspContext.getAttribute("content").toString();
    
    out.println(strBody.toUpperCase());
  %>  
</h2>