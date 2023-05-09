<%-- 
    Document   : movimientos
    Created on : 8/05/2023, 09:46:54 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

<%@page import="dao.MovesDao, model.Moves, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>   
        
  <% 
    List<Moves> list=MovesDao.getAllRecords();
   request.setAttribute("list",list);
   %>

<table border="1" width="90%">
<tr> <th>Folio</th>
     <th>Descripcion</th>
     <th>Cantidad</th>
     <th>Precio</th>
     <th>Total</th>
     <th>Edit</th>
     <th>Delete</th></tr>

<c:forEach items="${list}" var="u">
            <td>${u.getFolio()}</td>
            <td>${u.getDes()}</td>
            <td>${u.getCantidad()}</td>
            <td>${u.getPrecio()}</td>
            <td>${u.getTotal()}</td>
            <td><a href="editMovesform.jsp?folio=${u.getFolio()}">Edit   </a></td>
            <td><a href="deleteMoves.jsp?folio=${u.getFolio()}">Delete</a></td>
        </tr>
</c:forEach>
        
</table>
   
<br/><a href="addMovesform.jsp">Add New User</a>   
<br><a href="viewusers.jsp">Regresar</a>
        
</body>
</html>
