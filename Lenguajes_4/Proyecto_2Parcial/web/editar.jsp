<%-- 
    Document   : editar
    Created on : 2/04/2023, 07:24:42 PM
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
      <sql:setDataSource var="dbSource" driver="com.mysql.jdbc.Driver"
                         url="jdbc:mysql://localhost:3306/proyecto"
                         user="root" password=""/>

      <sql:update dataSource="${dbSource}" var="dbResult">
         UPDATE movimientoss SET descripcion=?, cantidad=?, precio=?, total=?  WHERE folio=?;
         <sql:param value="${param.desc2}" />
         <sql:param value="${param.cant2}" />
         <sql:param value="${param.precio2}" />
         <sql:param value="${param.tot2}" />
         <sql:param value="${param.folio2}" />
      </sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="movimientos.jsp" >
            <c:param name="msg" value="1 record updated" />
         </c:redirect>
      </c:if>
   </body>
</html>
