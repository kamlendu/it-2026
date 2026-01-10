<%-- 
    Document   : Emp
    Created on : 09-Jan-2026, 11:21:36 am
    Author     : kamlendu
--%>
<jsp:useBean id="emp" class="beans.Employee" scope="request">
    <jsp:setProperty name="emp" property="*"/> 
 </jsp:useBean>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
       
     <%       
       if(emp.validate())
       {
       
       out.println(emp.getEmpno());
       out.println("<br/>"+emp.getEname());
       out.println("<br/>"+emp.getSalary());
       
       
       
     }
     else
     {
            
        %>  
        
        <jsp:forward page="EmpForm.jsp"/>
        
        <%
            }
            
            %>
            
            
            
        </h1>
    </body>
</html>
