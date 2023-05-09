<%-- 
    Document   : viewusers
    Created on : 8/05/2023, 09:49:08 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDao, model.User, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

<h1>Users List</h1>   
        
  <% 
    List<User> list=UserDao.getAllRecords();
   request.setAttribute("list",list);
   %> 
   
  <%
      int cuentas = UserDao.hola();
  %>


<table border="1" width="90%">
<tr> <th>Id</th>
     <th>Name</th>
     <th>TotalM</th>
     <th>Edit</th>
     <th>Delete</th>
     <th>Ver movimientos</th></tr>


<c:forEach items="${list}" var="u">
            <td>${u.getID()}</td>
            <td>${u.getName()}</td>
            <td><%=cuentas%></td>
            <td><a href="editform.jsp?ID=${u.getID()}">Edit   </a></td>
            <td><a href="deleteuser.jsp?ID=${u.getID()}">Delete</a></td>
            <td><a href="movimientos.jsp?">Ver movimientos</a></td>
        </tr>
</c:forEach>
        
</table>
   
<br/><a href="adduserform.jsp">Add New User</a>   
        
</body>
</html>

