<%-- 
    Document   : b_02
    Created on : 6 mar. 2023, 09:07:43
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
        <%
            String name = request.getParameter("uname");
            out.print("welcome " + name);
        %>
    </body>
</html>
