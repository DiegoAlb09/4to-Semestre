<%-- 
    Document   : adduser
    Created on : 10/04/2023, 09:13:39 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.UserDao"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:useBean id="u" class="model.User"> </jsp:useBean>
        <jsp:setProperty property="*" name="u"/>
        
        
     <p>Record successfully saved!</p>
    <jsp:include page="userform.html" /> 
    
      <%
    int i=UserDao.save(u);
    if(i>0){
    response.sendRedirect("adduser-success.jsp");
    }else{
    response.sendRedirect("adduser-error.jsp");
    }
      %>  
        
    </body>
</html>

