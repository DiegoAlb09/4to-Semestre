<%-- 
    Document   : list
    Created on : 15/03/2023, 07:39:53 PM
    Author     : dante
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
     <style>
    h2 {
        text-align:center;
        font-family: arial;
        color: red;
       };
    td {
        text-align:center;
        font-family: arial;
        font-size: 16px;
    };
     </style>          
        
        
    </head>
    
 

     <%
out.println("<style>  p {font-family: arial;"
           + " color: red; font-size: 16px;   }; "
           + "</style>");
out.println("<style>  a,b {font-family: arial;"
           + " color: blue; font-size: 16px;  "
            + "}; </style>");

out.println("<style>  a.space {font-family: arial;"
           + " color: blue; font-size: 18px;  "
            + "margin:0 0 0 208px;}; </style>");

      %>
    
    
<body>

<div align="center" width="200%">
    <br>
    <h2>USERS DETAILS SYSTEM</h2>
    <br>
    <div align="left" width="200%">
<% out.println("<a class='space' href='insert.jsp'> ADD RECORD </a>");  %>  
    </div>
<br>
<table border="1" borderColor="black" cellPadding="0" cellSpacing="0" width="920" height="80">
<tbody>
<td bgColor="cyan" width="150" align="center" height="19"><font color="red"><b>
Student No.</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>NAME</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>CITY</b></font></td>
<td bgColor="cyan" width="230" height="19"><font color="red"><b>PHONE</b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>ACTIONS </b></font></td>
<td bgColor="cyan" width="290" height="19"><font color="red"><b>TAKEN </b></font></td>
<%
String DRIVER = "org.mariadb.jdbc.Driver";
Class.forName("org.mariadb.jdbc.Driver");
//Class.forName(DRIVER).newInstance();
Connection con = DriverManager.getConnection(
        "jdbc:mariadb://localhost/prueba01", 
        "root", 
        "");
ResultSet rst=null;
Statement stmt=null;
try{

String url="jdbc:mariadb://localhost:3306/prueba01";

        String user = "root";
        String password = "";
con=DriverManager.getConnection(url, user, password);
stmt=con.createStatement();
rst=stmt.executeQuery("SELECT * FROM student_info ORDER BY id ASC; ");
while(rst.next()){

%>
<tr>
<td bgColor="lightgreen" vAlign="top" width="80"  height="19"><%=rst.getInt("id")%></td>
<td bgColor="lightgreen" vAlign="top" width="110" height="19"><%=rst.getString(2)%></td>
<td bgColor="lightgreen" vAlign="top" width="224" height="19"><%=rst.getString(3)%></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19"><%=rst.getString(4)%></td>
<td bgColor="lightgreen" vAlign="top" width="220" height="19" >
    <a href="edit.jsp?id=<%=rst.getInt("id")%>"> Edit Record </a></td>
<td bgColor="lightgreen" vAlign="top" width="230" height="19">
    <a href="delete.jsp?id=<%=rst.getInt("id")%>"> Delete Record </a></td>
</tr>
<%
}


rst.close();
stmt.close();
con.close();
}catch(Exception e){
System.out.println(e.getMessage());
}
%>
</tbody>
</table>
</center>
</div>
</body>

</html>