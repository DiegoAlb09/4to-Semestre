<%-- 
    Document   : Pruebas
    Created on : 8/05/2023, 09:47:38 PM
    Author     : diego
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Imprimir datos ingresados</title>
</head>
<body>

<h1>Datos ingresados:</h1>

<%
    // obtener los valores ingresados en los campos de formulario
    String descripcion = request.getParameter("des");
    int folio = Integer.parseInt(request.getParameter("folio"));
    int cantidad = Integer.parseInt(request.getParameter("cantidad"));
    double precio = Double.parseDouble(request.getParameter("precio"));
    double total = Double.parseDouble(request.getParameter("total"));
%>

<p>Descripción: <%= descripcion %></p>
<p>Folio: <%= folio %></p>
<p>Cantidad: <%= cantidad %></p>
<p>Precio: <%= precio %></p>
<p>Total: <%= total %></p>

</body>
</html>
