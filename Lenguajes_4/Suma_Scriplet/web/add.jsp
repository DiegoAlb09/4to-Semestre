<%-- 
    Document   : add
    Created on : 6 mar. 2023, 09:14:58
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              
        <% int a= Integer.parseInt(request.getParameter("t1"));  %>
        <% int b= Integer.parseInt(request.getParameter("t2"));  %>        
        
        <p>   la suma es    </p>

    <%= a + b %>
    </body>

</html>
