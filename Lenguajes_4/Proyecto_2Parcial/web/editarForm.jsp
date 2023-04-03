<%-- 
    Document   : editarForm
    Created on : 2/04/2023, 07:24:56 PM
    Author     : diego
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;
         charset=UTF-8">
      <link href="css/style.css" rel="stylesheet" type="text/css"/>
      <title>Insert form Page</title>
   </head>
   <body>
      <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/proyecto"
                         user="root" password=""/>

      <sql:query dataSource="${dbSource}" var="dbResult">
         SELECT * from movimientos where folio=?;
         <sql:param value="${param.folio}" />
      </sql:query>


      <div id="myform">
         <form action="editar.jsp" method="post">
            <h1>MODIFICAR INFORMACION</h1>
            <p class="mystyle">
               Update Address ID <c:out value="${param.folio}"/>
            </p>
            <c:forEach var="row" items="${dbResult.rows}">  
               <input type="hidden" value="${row.folio}" name="folio2"/>
               <label
                  >Descripcion <span> </span>
               </label>
               <input type="text" value="${row.descripcion}" name="desc2"/>  <br>
               <label>
                  Cantidad <span> </span>
               </label>
               <input type="text" value="${row.cantidad}" name="cant2"/>  <br>
                 <label>
                  precio <span> </span>
               </label>
               <input type="text" value="${row.precio}" name="precio2"/>  <br>
                 <label>
                  total <span> </span>
               </label>
               <input type="text" value="${row.total}" name="tot2"/>  <br>
               <input type="submit" value="Update"/>
            </c:forEach>
         </form>
      </div>
   </body>
</html>

