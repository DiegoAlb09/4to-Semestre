<%-- 
    Document   : validar
    Created on : 30/03/2023, 09:14:52 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
       table {
 border-collapse: collapse;
 width: 100%;
 margin: 20px 0;
}

th, td {
 text-align: left;
 padding: 8px;
}

th {
 background-color: #f2f2f2;
 color: #444;
}

tr:nth-child(even) {
 background-color: #f2f2f2;
}

tr:hover {
 background-color: #ddd;
}

#myform {
 width: 50%;
 margin: 0 auto;
 padding: 20px;
 background-color: #f2f2f2;
 border: 1px solid #ccc;
 border-radius: 5px;
}

#myform label {
 display: block;
 margin-bottom: 5px;
}

#myform input[type="text"] {
 width: 100%;
 padding: 5px;
 margin-bottom: 10px;
 border-radius: 5px;
 border: 1px solid #ccc;
}

#myform input[type="submit"] {
 display: block;
 margin: 0 auto;
 background-color: #4CAF50;
 color: white;
 border: none;
 border-radius: 5px;
 padding: 10px 20px;
 cursor: pointer;
}

#myform input[type="submit"]:hover {
 background-color: #3e8e41;
}

.CSSTableGenerator {
 width: 100%;
}

.CSSTableGenerator table {
 border-collapse: collapse;
 border-spacing: 0;
 width: 100%;
 margin: 0 auto;
 background-color: #fff;
 color: #333;
 border: 1px solid #ccc;
 border-radius: 5px;
}

.CSSTableGenerator td, .CSSTableGenerator th {
 padding: 6px;
 border: 1px solid #ccc;
 text-align: center;
}

.CSSTableGenerator th {
 background-color: #f2f2f2;
 color: #444;
}

.CSSTableGenerator tr:nth-child(even) {
 background-color: #f2f2f2;
}

.CSSTableGenerator tr:hover {
 background-color: #ddd;
}

.CSSTableGenerator a {
 text-decoration: none;
 color: #333;
 border: 1px solid #ccc;
 padding: 5px;
 border-radius: 5px;
}

.CSSTableGenerator a:hover {
 background-color: #ddd;
}


        </style>
        <title>Home Page</title>
    </head>
    <body>
        <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/proyecto"
                           user="root" password=""/>
        <sql:query dataSource="${dbSource}" var="dbResult">
            SELECT * FROM registros;
        </sql:query>

        <div id="myform">
            <form action="insert.jsp" method="post">
                <h1>Agregar Usuario</h1>
                <label>ID</label>
                <input type="text" name="id1"/>  <br>
                <label>Nombre de usuario</label>
                <input type="text" name="nom1"/>  <br>
                <label>Total de movimiento</label>
                <input type="text" name="tot1"/>  <br>
                <input type="submit" value="agregar"/>
            </form>
        </div>
        <br/>
        <font color="blue">
            <c:if test="${not empty param.msg}">
               <c:out value="${param.msg}" />
            </c:if>
        </font>
        <br/>
        <form>
            <div class="CSSTableGenerator">
                <table>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Total de Movimiento</td>
                        <td>movimientos</td>
                        <td>borrar</td>
                        <td>editar</td>
                        <td colspan="2"></td>
                    </tr>
                    <c:forEach var="row" items="${dbResult.rows}">
                        <tr>
                            <td><c:out value="${row.ID}"/></td>
                            <td><c:out value="${row.Nombre}"/></td>
                            <td><c:out value="${row.Total}"/></td>
                            <td>
                                <a href="movimientos.jsp?id=<c:out
                                value="${row.ID}"/>">movimientos</a>
                            </td>
                            <td>
                                <a href="updateForm.jsp?id=<c:out
                                value="${row.ID}"/>">Update</a>
                            </td>
                            <td>
                                <a href="delete.jsp?id=<c:out
                                value="${row.ID}"/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </form>
    </body>
</html>
