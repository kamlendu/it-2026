<%-- 
    Document   : Welcome
    Created on : 08-Jan-2026, 1:24:17 pm
    Author     : kamlendu
--%>

<%@page contentType="text/html" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- Declaration Section --%>
        <%!
            String fname;
            String lname;
            String fullName;
            
            
            %>
        
        <%@include  file="header.jsp" %>
<hr/>        
        
        <h1>Hello World!</h1>
        <h2> Today the date is <%= new Date().toString()%>
            <br/><!-- comment -->
            
            <%
               
               for(int i=0;i< 10; i++)
               {
                   out.println("<br/>The square of "+ i + " is "+ i*i );
               }
                
                fname = request.getParameter("fname");
                lname = request.getParameter("lname");
                
                fullName = fname + " "+ lname;
                
                %>
            
                <br/><!-- comment -->
                <br/>    <h1>   The full Name is <%=fullName%> </h1>
            
    </body>
</html>
