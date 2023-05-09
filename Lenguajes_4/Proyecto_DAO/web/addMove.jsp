<%-- 
    Document   : addMove
    Created on : 8/05/2023, 09:23:53 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.MovesDao"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="m" class="model.Moves"> </jsp:useBean>
        <jsp:setProperty property="*" name="m"/>
        
        
     <p>Record successfully saved!</p>
    <jsp:include page="Movesform.html" /> 

      <%
    int i=MovesDao.save(m);
    if(i>0){
    response.sendRedirect("movimientos.jsp");
    }else{
    response.sendRedirect("Movesform.html");
    }
      %>  
    </body>
</html>

