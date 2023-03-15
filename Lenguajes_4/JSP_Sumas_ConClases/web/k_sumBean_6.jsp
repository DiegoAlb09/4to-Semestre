<%-- 
    Document   : k_sumBean_6
    Created on : 10/03/2023, 08:03:05 AM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>  resultados </title>
    </head>
    <body>
      <jsp:useBean id="pruebas" class="pruebas.dos_numeros" scope="request"  />  
       <jsp:setProperty name="pruebas" property="*" />
        
        
       <p>  toma parametros con scriptlet simple request.getParameter  </p>

        <% 
    
       int a = Integer.parseInt(request.getParameter("num1"));
       int b = Integer.parseInt(request.getParameter("num2"));
        %>
        
        <p>  el simbolo <.%= implica impresion de a + b </p>
        
        <%= a + b %>
 
        <p>  el num1 con java beans JSTL EL  clase pruebas metodo getNum1()  </p>
        
        <c:out value="${pruebas.getNum1()} "/>   
            
        <p> imprimiendo con scriptlet <.%= y metodos getNum1 getNum2  </p>  
       
         <%= pruebas.getNum1()+pruebas.getNum1()    %>  
        
       <p> imprimiendo con JSTL EL  el metodo suma    </p>
       
       <c:out value="${ pruebas.suma() } "/>   
       
       <p> imprimiendo con JSTL EL  el metodo getNum1 asignado a  var  dos </p>
       
       <c:set var="dos" value="${pruebas.suma()}" />

       <c:out value="dos" />    <br>
       
       <c:out value="${ pruebas.suma() + 1}" />

        

        
        
    </body>
</html>

