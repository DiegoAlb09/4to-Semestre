<%-- 
    Document   : editMovesform
    Created on : 8/05/2023, 09:43:25 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.MovesDao, model.Moves" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
// Manejo de excepciones
try {
    String strFolio = request.getParameter("folio");
    int folio = Integer.parseInt(strFolio);
    Moves m = MovesDao.getRecordById(folio);
    if (m == null) {
        out.println("Movimiento no encontrado.");
        return;
    }
    request.setAttribute("moves", m);
} catch(Exception e) {
    out.println("Error al cargar el movimiento: " + e.getMessage());
    return;
}

%>
        <%
        String Folio=request.getParameter("folio");
        Moves m =MovesDao.getRecordById(Integer.parseInt(Folio));
       %>
        
       
       <h1>Edit Form</h1>
       <form action="editMoves.jsp" method="post">
           <input type="hidden" name="folio" value="<%=Folio%>"/>
        <table>
            <tr><td>Descripcion:    </td><td><input type="text"     name="des" value="<%= m.getDes()%>"/></td></tr>
            <tr><td>Cantidad   </td><td><input type="number"    name="cantidad" value="<%= m.getCantidad()%>"/></td></tr>
            <tr><td>Precio   </td><td><input type="number"    name="precio" value="<%= m.getPrecio()%>"/></td></tr>
            <tr><td>Total   </td><td><input type="number"    name="total" value="<%= m.getTotal()%>"/></td></tr>
            <tr><td colspan="2"><input type="submit" value="Save User"/></td></tr>
         </table>
       </form>
        
    </body>
</html>
