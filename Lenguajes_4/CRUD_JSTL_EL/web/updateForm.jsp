<%-- 
    Document   : updateForm
    Created on : 23/03/2023, 11:27:47 AM
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
                         url="jdbc:mysql://localhost:3306/test"
                         user="root"/>

      <sql:query dataSource="${dbSource}" var="dbResult">
         SELECT * from test1 where id=?;
         <sql:param value="${param.id}" />
      </sql:query>


      <div id="myform">
         <form action="update.jsp" method="post">
            <h1>Update Address</h1>
            <p class="mystyle">
               Update Address ID <c:out value="${param.id}"/>
            </p>
            <c:forEach var="row" items="${dbResult.rows}">
               <input type="hidden" value="${row.id}" name="id"/>
               <label
                  >First Name <span> person</span>
               </label>
               <input type="text" value="${row.nom}" name="nom"/>  <br>
               <label>
                  edad <span> person</span>
               </label>
               <input type="text" value="${row.edad}" name="edad"/>  <br>

               <input type="submit" value="Update"/>
            </c:forEach>
         </form>
      </div>
   </body>
</html>

