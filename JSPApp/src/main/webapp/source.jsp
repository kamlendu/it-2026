<%-- 
    Document   : source
    Created on : 09-Jan-2026, 10:48:50 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World of Source!</h1>
       <%-- 
        <jsp:include page="target.jsp">
            <jsp:param name="city" value="Surat"/>
        </jsp:include>    
        --%>
        <jsp:forward page="target.jsp">
            <jsp:param name="city" value="Surat"/>
        </jsp:forward>    
        
    </body>
</html>
