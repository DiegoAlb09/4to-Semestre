<%-- 
    Document   : index
    Created on : 23/03/2023, 11:27:08 AM
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
      <title>Home Page</title>
   </head>
   <body>
 
      <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/test"
                         user="root"/>
      <sql:query dataSource="${dbSource}" var="dbResult">
         SELECT * FROM test1;
      </sql:query>

      <div id="myform">
         <form action="insert.jsp" method="post">
            <h1>New Address</h1>
            <p class="mystyle">Add new address details</p>
            <label>ID <span>Insert</span> </label>
            <input type="text" name="id"/>   <br>
            <label>First Name <span> person</span> </label>
            <input type="text" name="nom"/>  <br>
            <label>Edad <span> person</span> </label>
            <input type="text" name="edad"/>   <br>

            <input type="submit" value="Add New"/>
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
                  <td>ID</td>
                  <td>Name</td>
                  <td>edad</td>
                  
                  <td colspan="2"></td>
               </tr>
               <c:forEach var="row" items="${dbResult.rows}">
                  <tr>
                     <td><c:out value="${row.id}"/></td>
                     <td><c:out value="${row.nom}"/></td>
                     <td><c:out value="${row.edad}"/></td>

                     <td>
                        <a href="updateForm.jsp?id=<c:out
                           value="${row.id}"/>">Update</a>
                     </td>
                     <td>
                         <a href="delete.jsp?id=<c:out
                        value="${row.id}"/>">Delete</a>
                     </td>
                  </tr>
               </c:forEach>
            </table>
         </div>
      </form>
      <br/>
   </body>
</html>


