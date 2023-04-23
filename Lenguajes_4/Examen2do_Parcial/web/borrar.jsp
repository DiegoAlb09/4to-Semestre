<%-- 
    Document   : borrar
    Created on : 5/04/2023, 12:30:27 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar dato JSON</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>
    <body>

<% 
        Connection con = null;

        String url = "jdbc:mariadb://localhost:3306/exame2";
        String driver = "org.mariadb.jdbc.Driver";
        
        try{
              Class.forName(driver);
              con = DriverManager.getConnection(url,"root","");
        try{
        Statement st =  con.createStatement();
        
        String id=request.getParameter("Id");
        
        int an = st.executeUpdate("DELETE FROM registros2 WHERE Id=" + id);
        
        con.close();
        out.println("<p> Ha sido elimianado exitosamente. </p>");
        out.println("<br>");
        out.println("<a href='tabla.jsp'> Regresar a la tabal </a>");
        }
        catch (SQLException ex){
        System.out.println("SQL statement is not executed!");
        }
        }
        catch (Exception e){
        e.printStackTrace();
        }
%>
       
    </body>
</html>