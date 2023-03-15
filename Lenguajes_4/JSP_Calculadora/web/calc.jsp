<%-- 
    Document   : calc
    Created on : 10/03/2023, 08:16:20 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Calc" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="link" scope="application" class = "model.Calc" /> 

        <% int a= Integer.parseInt(request.getParameter("num1"));  %>                
        <% int b= Integer.parseInt(request.getParameter("num2"));  %>        
        <% String ope= new String(request.getParameter("operand"));  %>   
        <% Calc calc1 = new Calc( a, b, ope);   %>
         
        <p>   resultado es     </p>

    <%= calc1.getNum1() %>
    <%= calc1.getNum2() %>
    <%= calc1.getOperand() %>

    <%= calc1.getResultS() %>
    </body>
  
</html>


