<%-- 
    Document   : tabla
    Created on : 5/04/2023, 12:26:41 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
    <style>
        table {
  border-collapse: collapse;
  width: 50%;
  margin: auto;
  margin-top: 50px;
}

table td, table th {
  border: 1px solid #ddd;
  padding: 8px;
}

table th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}

a {
  display: block;
  text-align: center;
  padding: 5px;
  background-color: #4CAF50;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  margin: auto;
  margin-top: 10px;
  width: 60px;
}

    </style>
    </head>
        
    <body>
         
        <% 
            Connection con = null;
            String url = "jdbc:mariadb://localhost:3306/";;
            String db = "exame2";
            String driver = "org.mariadb.jdbc.Driver";
                
            try
            {
                Class.forName(driver);
                con = DriverManager.getConnection(url+db,"root","");
            
                try
                {
                    Statement st = con.createStatement();
                    String query = "SELECT * FROM registros2";
                    ResultSet rs = st.executeQuery(query);       
        %>
                       
                    <table width="50%">

                        <tr>
                            <td>Id</td>
                            <td>Nombre</td>
                            <td>Edad</td>
                            <td></td>
                        </tr>

                    <%while (rs.next()) {    %>

                    <tr>

                        <td><%=rs.getInt("Id")%></td>
                        <td><%=rs.getString("Nombre")%></td>
                        <td><%=rs.getInt("Edad")%></td>

                         <td>
                             <a href="borrar.jsp?Id=<%=rs.getInt("Id")%>">Borrar</a>
                         </td>
                    </tr>

                   <%} %> 
                </table>
                
            <%

                    rs.close();	
                    con.close();

                }
                catch (SQLException ex)
                {
                    System.out.println("SQL statement is not executed!");
                }
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
            %>        
          
    </body>
</html>

