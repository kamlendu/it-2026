<%-- 
    Document   : curdate
    Created on : 17-Jan-2026, 12:00:49 pm
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<%-- any content can be specified here e.g.: --%>
<h2>
    <%
    
out.println(new java.util.Date().toString());
        
        %>
</h2>