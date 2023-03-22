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
           + " color: red; font-size: 16px;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16px;   }; "
           + "</style>");

        %>
        
        <%
        Connection con = null;
        
        String url = "jdbc:mariadb://localhost:3306/";;
        String db = "prueba01";
        String driver = "org.mariadb.jdbc.Driver";
        try{
            Class.forName(driver);
            con = DriverManager.getConnection(url+db,"root","");
        try   {
            Statement st = con.createStatement();
            String id = request.getParameter("id");
            String name=request.getParameter("name");
            String city=request.getParameter("city");
            String telephone=request.getParameter("telephone");

   //      INSERT INTO test1(id, nom, edad)
   //         VALUES (?,?,?);            

 // "insert into student(firstname,lastname,email,pass,confirm_pass,dob,age,gender,address,country,state,city,"
//         + "telephone,mobile) values('"+fname+"','"+lname+"','"+email+"','"+pass+"','"+cpass+"','"+dob+"',"+
//         age+",'"+gender+"','"+address+"','"+country+"','"+state+"','"+city+"',"+telephone+","+mobile+")");
//        out.
            
            int val = st.executeUpdate("INSERT into student_info (id,name,city,phone) "
                    + " VALUES ('"+id+"','"+name+"','"+city+"','"+telephone +"')");

            con.close();
            out.println("<p> The record of " +"<b>"+ name +"</b>" + " is successfully saved. </p>");
            out.println("<br>");
            out.println("<a href='index.jsp'> RETURN TO MAIN PAGE </a>");
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
