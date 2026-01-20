<%-- 
    Document   : formating
    Created on : 16-Jan-2026, 11:18:39 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            request.setAttribute("curdate", new java.util.Date());

        %>

        <h3>
            <fmt:setLocale value="hi_IN"/>
            
            <fmt:setBundle basename="props" var="p"/> 

            <br/> <fmt:message key="welcome" bundle="${p}"/>
            <br/> <fmt:message key="ulabel" bundle="${p}"/>
            <br/> <fmt:message key="plabel" bundle="${p}"/>
            <br/> <fmt:message key="company" bundle="${p}"/>


            <hr/> 

            <c:set var="dt" value="${curdate}"/>

            <br/>    <fmt:formatDate type="date"  value="${dt}" />
            <br/>     <fmt:formatDate type="time" value="${dt}"/>
            <br/>     <fmt:formatDate type="both" value="${dt}"/>
            <br/>     <fmt:formatDate pattern="dd-MMM-YYYY"  value="${dt}"/>


            <c:set var="num" value="34512.4545465464"/>
            <br/><br/>    
            <br/><fmt:formatNumber maxFractionDigits="2" value="${num}"/>    
            <br/><fmt:formatNumber type="currency" currencySymbol="$" value="${num}"/>    












        </h3>
    </body>
</html>
