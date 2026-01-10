<%-- 
    Document   : Books
    Created on : 08-Jan-2026, 1:54:34 pm
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
        <h1>
            
            Book Name : <%=request.getParameter("bname")%>
      <br/> Author Name :  <%=request.getParameter("authname")%>
       <br/> Publisher Name :  <%=request.getParameter("pname")%>
      <br/> Synopsis :  <%=request.getParameter("synopsis")%>
                   
            
            
            
            
        </h1>
    </body>
</html>
