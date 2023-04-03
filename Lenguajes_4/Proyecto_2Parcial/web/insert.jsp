    <%--   Document   : insert
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
             INSERT INTO registros(ID, Nombre,Total)
                VALUES (?,?,?);
             <sql:param value="${param.id1}" />
             <sql:param value="${param.nom1}" />
             <sql:param value="${param.tot1}" />

          </sql:update>
          <sql:update dataSource="${dbSource}" var="dbResult">
                CREATE TABLE ${param.nom1}(
                   Folio INT(11),
                   Descripcion VARCHAR(35),
                   Cantidad INT(11),
                   Precio INT(11),
                   Total INT(11),
                   PRIMARY KEY (Folio)
                )
             </sql:update>
          <c:if test="${dbResult>=1}">
             <c:redirect url="validar.jsp" >
                <c:param name="msg" value="1 record inserted" />
             </c:redirect>
          </c:if>
       </body>
    </html>
