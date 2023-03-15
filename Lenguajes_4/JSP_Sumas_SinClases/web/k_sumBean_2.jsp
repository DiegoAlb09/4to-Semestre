<%-- 
    Document   : k_sumBean_2
    Created on : 10/03/2023, 07:54:42 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> JSP Page </title>
    </head>
    <body>
        <h1> Hello Wordl! </h1>
        <p> Toma parametros con scriptlet simple request.getParameter </p>
        
        <%
            int a = Integer.parseInt(request.getParameter("num1"));
            int b = Integer.parseInt(request.getParameter("num2"));
        %>
        <p> El simbolo <.% = Implica impresion de a + b </p>
        
        <%= a + b %>
    </body>
</html>