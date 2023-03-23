<%-- 
    Document   : Etiquetas
    Created on : 22/03/2023, 07:51:19 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tarea JSTL</h1>
        <%--
        <c:out value="${ 'casa' }"/>
        <br>
        <b> esto fue un ejemplo de etiqueta c:out </b>
        --%>
        <b> 1 Imprimir cualquier string 'prueba1'</b>
        <br>
        <c:out value="${ 'prueba1' }"/>
        <br>
        <b> 2 Almacenar "casa" en variable v, imprimir v</b>
        <br>
        <c:set var= "v" value = "casa"/>
        <c:out value="${v}"/>
        <br>
        <b> 3 Cachar el error de una excepcion por divisionsobre cero </br>
        <c:catch var = "exception">
            <% int x = 10/0; %>
        </c:catch>
        <c:if test = "${exception != null}">
            Occurred exception is :${exception}
        </c:if>
        <br>
        <b> 4 Preguntar si un numero es mayor de 100 e imprimir ese numero</b>
        <br>
        <c:set var = "num" value = "100"/>
        <c:choose>
            <c:when test ="${num > 10}">
                Number is greater than 10.
            </c:when>
            <c:otherwise>
                Number is less than or equal to 10.
            </c:otherwise>
        </c:choose>
        <br>
        <b> 5 Variante del switch </b>
        <br>
        <b> 6 Mandar a otra pagina </b>
        <%--
        <c:redirect url = "/index.html"/>
        --%>
        <br>
        <b> 7 Imprimir donde esta un string (JSTL) en otro string (Hello this is a 
            JSTL function example)
        </b>
        <br>
        <c:set var ="testSrting" value = "Hello this is a JSTL function example"/>
        <%--<c:out value = "${fn:indexOf(testString, 'JSTL')}"></c:out>--%>
        <br/>
        <b> 8 Imprimir la longitud de un string </b>
        <br>
        <c:set var = "testString" value = "Hello this is a JSTL function example."/>
            Length of the given string:
        <%--<c:out value = "${fn:length(testString)}"></c:out>--%>
        <br>
        <b> 9 Reemplazar un string por otro, dentro de un string </b>
        <br>
        <c:set var="testString"             value="Hello this is a JSTL function example."/>
	Given String: <br/>  	<c:out value="${testString}" /><br/><br/>
	String after replacing JSTL to jstl:<br/>
        <c:out value="${fn:replace(testString, 'JSTL', 'jstl')}"></c:out>
        <br>
        <b> 10 Trimm un string </b>
        <c:out value ="${fn:trim(testString)}"></c:out>
    </body>
</html>
