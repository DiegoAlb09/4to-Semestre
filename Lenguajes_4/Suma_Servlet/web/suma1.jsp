<%-- 
    Document   : newjsp
    Created on : 4/05/2023, 10:14:57 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
   <body bgcolor="yellow">
        <center><h1>Addition of Two Number</h1></center>
        <form action="suma2" method="post">
        <table border="0" width="100" align="center">

                <tr>
                    <td>First Number</td>
                    <td><input type="text" name="txtnum1" value="" /> </td>
                </tr>
                <tr>
                    <td>Second Number</td>
                    <td><input type="text" name="txtnum2" value="" /> </td>
                </tr>
                <tr>
                <td><input type="submit" value="Add" name="btnadd" /> </td>
                <td></td>
                </tr>
        </table>
        </form>
    </body>
</html>
