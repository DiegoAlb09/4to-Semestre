<%-- 
    Document   : index
    Created on : 4/04/2023, 10:24:00 AM
    Author     : diego
--%>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
<body>

<div id="id01"></div>

<script>
var xmlhttp = new XMLHttpRequest();
var url = "registros_2.txt";

xmlhttp.onreadystatechange = function() 
{
    if (xmlhttp.readyState == 4 && xmlhttp.status == 200) 
    {
        var myArr = JSON.parse(xmlhttp.responseText);
        myFunction(myArr);
    }
};
xmlhttp.open("GET", url, true);
xmlhttp.send();

function myFunction(arr) 
{
    var salida = "";
    var i;
    
    for(i = 0; i < arr.length; i++) {
        salida += "id" + i + "=" + arr[i].Id + "&nombre" + i + "=" + arr[i].Nombre + "&edad" + i + "=" + arr[i].Edad + "&"; 
    }
    
     window.location.href = "valores.jsp?" + salida;
     
            
}
</script>
</body>

</html>
