<%-- 
    Document   : boton
    Created on : 2/04/2023, 07:24:25 PM
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
      <title>JSP Page</title>
   </head>
   <body>

      <sql:setDataSource var="dbSource"
                         driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/proyecto"
                         user="root" password=""/>


      <sql:update dataSource="${dbSource}" var="dbResult">
         INSERT INTO registros (id, nombre, total)
            VALUES (?,?,?);
         <sql:param value="${param.id}" />
         <sql:param value="${param.nombre}" />
         <sql:param value="${param.total}" />
        
      </sql:update>
      <c:if test="${dbResult>=1}">
         <c:redirect url="validar.jsp" >
            <c:param name="msg" value="1 record inserted" />
         </c:redirect>
      </c:if>
   </body>
</html>
