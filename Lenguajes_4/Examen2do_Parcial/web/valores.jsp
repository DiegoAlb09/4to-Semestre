<%-- 
    Document   : base
    Created on : 4/04/2023, 11:59:01 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Examen 2do Parcial!</h1>
        
        <%
            Connection con = null;
            String url = "jdbc:mariadb://localhost:3306/";
            String db = "exame2";
            String driver = "org.mariadb.jdbc.Driver";
            
            try{
                Class.forName(driver);
                con = DriverManager.getConnection(url+db, "root","");
                try{
                    Statement st = con.createStatement();
                    for (int i = 0; i < 10; i++){
                        String id = request.getParameter("id" + i);
                        if(id != null){
                            String nombre = request.getParameter("nombre" + i);
                            String edad = request.getParameter("edad" + i);
                        int val = st.executeUpdate("INSERT into registros2 (id,nombre, edad)"
                                + " VALUES ("+id+",'"+nombre+"', "+edad+")");  
                        }
                    }
                    con.close();
                    out.println("<p> Agregados los valores del JSON exitosamente</p>");
                    out.println("<br>");
                    out.println("<a href='tabla.jsp'> Tabla </a>");
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
