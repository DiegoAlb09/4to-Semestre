<%-- 
    Document   : editform
    Created on : 8/05/2023, 09:41:42 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDao, model.User" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        String id=request.getParameter("ID");
        User u=UserDao.getRecordById(Integer.parseInt(id));
       %>
        
       
       <h1>Edit Form</h1>
       <form action="edituser.jsp" method="post">
           <input type="hidden" name="ID" value="<%=id%>"/>
        <table>
            <tr><td>Name:    </td><td><input type="text"     name="name" value="<%= u.getName()%>"/></td></tr>
            <input type="hidden"    name="mov" value="<%= u.getMov()%>"/>
            <tr><td colspan="2"><input type="submit" value="Save User"/></td></tr>
         </table>
       </form>
        
    </body>
</html>
