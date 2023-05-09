<%-- 
    Document   : editMoves
    Created on : 8/05/2023, 09:42:44 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.MovesDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
       <jsp:useBean id="m" class="model.Moves" >  </jsp:useBean>
       <jsp:setProperty property="*" name="m"  />

<%
int i=MovesDao.update(m);
    if(i>0){
    response.sendRedirect("movimientos.jsp");
    }else{
    response.sendRedirect("index.jsp");
    }
%> 
        
    </body>
</html>
