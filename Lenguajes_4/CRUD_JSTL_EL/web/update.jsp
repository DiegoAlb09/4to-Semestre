<%-- 
    Document   : update
    Created on : 23/03/2023, 11:26:47 AM
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
                         url="jdbc:mysql://localhost:3306/test"
                         user="root"/>

      <sql:update dataSource="${dbSource}" var="dbResult">
         UPDATE test1 SET nom=?, edad=?   WHERE id=?;
         <sql:param value="${param.nom}" />
         <sql:param value="${param.edad}" />
         <sql:param value="${param.id}" />
      </sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="index.jsp" >
            <c:param name="msg" value="1 record updated" />
         </c:redirect>
      </c:if>
   </body>
</html>

