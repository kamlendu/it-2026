<%-- 
    Document   : Beans
    Created on : 09-Jan-2026, 11:04:59 am
    Author     : kamlendu
--%>
<jsp:useBean id="emp" class="beans.Employee" scope="request"/>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!
     <br/>   
        
     <jsp:setProperty name="emp" property="empno" value="1"/>
     <jsp:setProperty name="emp" property="ename" value="Suresh"/>
     <jsp:setProperty name="emp" property="salary" value="5000.50"/>
        
        
     Emp No : <%=emp.getEmpno()%>
     <br/> Name : <%=emp.getEname()%>
     <br/> Salary : <%=emp.getSalary()%>  
        
        
        </h1>
    </body>
</html>
