<%-- 
    Document   : adduser
    Created on : 8/05/2023, 09:25:52 PM
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
    response.sendRedirect("viewusers.jsp");
    }else{
    response.sendRedirect("userform.html");
    }
      %>  
        
    </body>
</html>
