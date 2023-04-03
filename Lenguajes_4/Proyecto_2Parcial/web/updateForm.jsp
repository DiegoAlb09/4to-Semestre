<%-- 
    Document   : updateForm
    Created on : 2/04/2023, 07:26:06 PM
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
         SELECT * from registros where id=?;
         <sql:param value="${param.id}" />
      </sql:query>


      <div id="myform">
         <form action="update.jsp" method="post">
            <h1>MODIFICAR INFORMACION</h1>
            <p class="mystyle">
               Update Address ID <c:out value="${param.id}"/>
            </p>
            <c:forEach var="row" items="${dbResult.rows}">
               <input type="hidden" value="${row.id}" name="id"/>
               <label
                  >Nombre <span> person</span>
               </label>
               <input type="text" value="${row.nombre}" name="nom"/>  <br>
               <label>
                  Total de movimiento <span> person</span>
               </label>
               <input type="text" value="${row.total}" name="tot"/>  <br>

               <input type="submit" value="Update"/>
            </c:forEach>
         </form>
      </div>
   </body>
</html>
