<%-- 
    Document   : movimientos
    Created on : 2/04/2023, 07:25:39 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </head>
    <body>
       <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/proyecto"
                         user="root" password=""/>
      <sql:query dataSource="${dbSource}" var="dbResult">
         SELECT * FROM movimientos;
      </sql:query>
         <sql:update dataSource="${dbSource}" var="dbResult2">
         UPDATE registros SET total = total+1 WHERE id = ${param.id};
      </sql:update>
      <div id="myform">
         <form action="insertar2.jsp" method="post">
        
            <!-- <p class="mystyle">Add new address details</p> -->
            <h1>REGISTRO </h1>
            <label>FOLIO </label>
            <input type="text" name="folio"/>  <br>
            <label>DESCRIPCION   </label>
            <input type="text" name="desc"/>  <br>
            <label>CANTIDAD</label>
            <input type="text" name="cant"/>  <br>
            <label>PRECIO</label>
            <input type="text" name="pre"/>  <br>
            <label>TOTAL</label>
            <input type="text" name="total"/>  <br>
            <input type="submit" value="agregar"/> <br>
                   <a href="validar.jsp?folio=<c:out
                           value="${row.folio}"/>">regresar</a>
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
         <div class="CSSTableGenerator" >
            <table>
               <tr>
                  <td>FOLIO</td>
                  <td>DESCRIPCION</td>
                  <td>CANTITAD</td>
                  <td>PRECIO</td>
                  <td>TOTAL</td>
                  <td>BORRAR</td>
                  <td>EDITAR</td>
                  <td colspan="2"></td>
               </tr>
               <c:forEach var="row" items="${dbResult.rows}">
                  <tr>
                     <td><c:out value="${row.folio}"/></td>
                     <td><c:out value="${row.descripcion}"/></td>
                     <td><c:out value="${row.cantidad}"/></td>
                     <td><c:out value="${row.precio}"/></td>
                     <td><c:out value="${row.total}"/></td>
                                     <td>
                        <a href="borrar.jsp?folio=<c:out
                           value="${row.folio}"/>">Borrar</a>
                     </td>
                                                   <td>
                        <a href="editarForm.jsp?folio=<c:out
                           value="${row.folio}"/>">editar</a>
                     </td>
                     
                  </tr>
           
               </c:forEach>
            </table>
         </div>
      </form>
      <br/>
</html>
