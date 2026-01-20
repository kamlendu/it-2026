<%-- 
    Document   : usetags
    Created on : 17-Jan-2026, 12:02:32 pm
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="mytags" tagdir="/WEB-INF/tags/" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <mytags:curdate/>
        <mytags:ucase> msc it </mytags:ucase>
        <mytags:ccase type="lower1">HELLO</mytags:ccase>
        
    </body>
</html>
