<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Add Record </title>
    </head>
    <body>
 
        <style>
       table, td, th {
       border: 1px solid green;
       font-family: arial;
       color: blue;
                  }

       table {      background-color: lightgreen;        }
      </style>
        
      <%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16px;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16px;   }; "
           + "</style>");

      %>
        
       <table border="1" width="50%">
            <tr>
            <td width="100%">
      <form method="POST" action="save.jsp">

            <h2 align="center">ADD RECORD</h2>
       <table border="1" width="100%">
           <tr>
               <td width="50%"><b>ID:</b></td>
            <td width="50%"><input type="text" name="id" size="50"/> </td>
           </tr>
            <tr>
            <td width="50%"><b>Name:</b></td>
            <td width="50%"><input type="text" name="name" size="50"/> </td>
            </tr>
            <tr>
            <td width="50%"><b>City:</b></td>
            <td width="50%"><input type="text" name="city" size="50"></td>
            </tr>
            <tr>
            <td width="50%"><b>Telephone Number:</b></td>
            <td width="50%"><input type="text" name="telephone" size="15"></td>
            </tr>
      </table>
            
            <p><input type="submit" value="Submit" name="submit">
            <input type="reset" value="Reset" name="reset"></p>
      </form>
          </td>
          </tr>
     </table> 
      
      
      
    </body>
</html>