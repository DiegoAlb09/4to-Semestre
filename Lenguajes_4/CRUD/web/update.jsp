<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16;   }; "
           + "</style>");

       %>  
        
        
       <% 
            String strId =request.getParameter("id");
            int id = Integer.parseInt(strId);
            Connection con = null;
            String url = "jdbc:mariadb://localhost:3306/";;
            String db = "prueba01";
            String driver = "org.mariadb.jdbc.Driver";
      try{
            Class.forName(driver);
            con = DriverManager.getConnection(url+db,"root","");
         try{
            Statement st = con.createStatement();
            String name=request.getParameter("name");
            String city=request.getParameter("city");
            String phone=request.getParameter("phone");
            int in = st.executeUpdate("UPDATE student_info SET id ='"+id+"', name='"+name+"'"
                                      + ",city='"+city+"',phone='"+phone+"' "
                                      + "WHERE id='"+id+"'");
            con.close();
            out.println("<p> The record of " +"<b>"+ name +"</b>" + " is successfully updated. </p>");
            out.println("<br>");
            out.println("<a href='index.jsp'> RETURN TO MAIN PAGE </a>");
         }
            catch (SQLException ex)    {
            System.out.println("SQL statement is not executed!");
                                      }
        }
            catch (Exception e){
            e.printStackTrace();
            }
%>
    </body>
</html>
