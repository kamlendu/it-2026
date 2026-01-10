<%-- 
    Document   : Welcome
    Created on : 10-Jan-2026, 11:58:33 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       pageContext.setAttribute("user", "Surat");
        request.setAttribute("user", "Choryasi");
        session.setAttribute("user", "Gujarat");
        application.setAttribute("user", "India");
        %>
        <h1>
           
            <c:forEach var="qual" items="${paramValues.q}">
                <br> ${qual}
            </c:forEach>
            
            
            
          <br/> <c:out value="The name of the city is ${pageScope.user}"/> 
          <br/> <c:out value="The name of the taluka is ${requestScope.user}"/> 
            <br/> <c:out value="The name of the state is ${sessionScope.user}"/> 
          <br/> <c:out value="The name of the country is ${applicationScope.user}"/> 
               
            
           <hr/> 
            
            
            <c:out value="Welcome to JSTL and EL"/> 
            
            <br/> <c:out value=" The sum of 40 and 60 is ${40+60}"/>
            
            <c:set var="num1" value="50" />
            <c:set var="num2" value="70" />
      
            <br/> <c:out value=" The sum of ${num1} and ${num2} is ${num1+num2}"/>
                
            <c:set var="x" value="${param.m}" />
            <c:set var="y" value="${param.n}" />
      
            <br/> <c:out value=" The sum of ${x} and ${y} is ${x+ y}"/>
            <br/>   
            
            <c:forEach var="i" begin="1" end="10">
                <br/> The square of ${i} is ${i*i}
            </c:forEach>
                
                
            
            
        </h1>
    </body>
</html>
