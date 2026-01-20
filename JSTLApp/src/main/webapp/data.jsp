<%-- 
    Document   : data
    Created on : 16-Jan-2026, 11:06:56 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>
            <sql:setDataSource dataSource="jdbc/itdb"/>        
            
           
        
        <sql:update var="insert">
            insert into employee values(?,?,?)
            <sql:param value="24"/>
            <sql:param value="Swayam"/>
            <sql:param value="20000"/>           
        </sql:update>
  
            
            
            
            <sql:query var="query">                
                select * from employee               
            </sql:query>       
       
                
                
                <table border="1"> 
                <c:forEach var="row" items="${query.rowsByIndex}">
                    <tr> <td> ${row[0]}</td><td> ${row[1]}</td><td> ${row[2]}</td></tr>
                </c:forEach>        
                </table>
            
            
            
            
            
            
        </h3>
    </body>
</html>
