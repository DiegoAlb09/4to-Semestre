<%--     Document   : index  --%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;
         charset=UTF-8">
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
         <style>
           body {
  background-color: #F5F5F5;
  font-family: Arial, sans-serif;
}

#myform {
  background-color: #FFFFFF;
  border-radius: 5px;
  box-shadow: 0 0 10px rgba(0,0,0,0.2);
  margin: 50px auto;
  padding: 20px;
  text-align: center;
  width: 400px;
}

h1 {
  color: #333333;
  font-size: 24px;
  font-weight: normal;
  margin: 0;
  padding-bottom: 10px;
}

label {
  color: #999999;
  display: block;
  font-size: 14px;
  margin-bottom: 5px;
  text-align: left;
}

input[type="text"],
input[type="password"] {
  border: 1px solid #CCCCCC;
  border-radius: 5px;
  display: block;
  font-size: 16px;
  margin-bottom: 20px;
  padding: 10px;
  width: 100%;
}

input[type="submit"] {
  background-color: #333333;
  border: none;
  border-radius: 5px;
  color: #FFFFFF;
  cursor: pointer;
  display: block;
  font-size: 16px;
  margin: 20px auto 0;
  padding: 10px;
  width: 100px;
}

input[type="submit"]:hover {
  background-color: #666666;
}


         </style>

      <title>Home Page</title>
   </head>
   <body>
       <div id="myform">
         <form  method="post">
            <h1>INICIO DE SESION </h1>
            <label>USUARIO  </label>
            <input type="text" name="nom"/>  <br>
            <label>contraseña</label>
            <input type="password" name="contra"/>   <br>

            <input type="submit" value="ENTER"/>
         </form>
                              <%
    String usuario = request.getParameter("nom");
    String contrasena = request.getParameter("contra");
    if (usuario != null && usuario.equals("DiegoA") && contrasena != null && contrasena.equals("1234567")) {
        // Si las credenciales son válidas, redirigir a la página de inserción
        response.sendRedirect("validar.jsp");
    } else if (usuario != null || contrasena != null) {
        // Si las credenciales no son válidas, mostrar un mensaje de error
        out.println("<p class=\"error-message\">Usuario o contraseña incorrectos</p>");
    }
%>
      </div>
   </body>
</html>
