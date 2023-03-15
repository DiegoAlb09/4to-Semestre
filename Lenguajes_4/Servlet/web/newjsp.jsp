<%-- 
    Document   : newjsp
    Created on : 13/03/2023, 08:52:28 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="e_sumServlet_6" method="post">
        <table border="0" width="100" align="center">

                <tr>
                    <td>First Number</td>
                    <td><input type="text" name="num1" value="" /></td>
                </tr>
                <tr>
                    <td>Second Number</td>
                    <td><input type="text" name="num2" value="" /></td>
                </tr>
            <tr>
                <td><input type="submit" value="Add" name="btnadd" /></td>
                <td></td>
                </tr>
        </table>
       </form>

    </body>
</html>

