<%-- 
    Document   : contra
    Created on : 8/05/2023, 09:27:33 PM
    Author     : diego
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
</head>
<body>
	<%
		// Obtener los parámetros de usuario y contraseña enviados desde el formulario
		String usuario = request.getParameter("usuario");
		String contrasena = request.getParameter("contrasena");

		// Validar si los campos de usuario y contraseña están vacíos
		if(usuario == null || contrasena == null || usuario.isEmpty() || contrasena.isEmpty()) {
			out.println("Por favor, ingrese su usuario y contraseña.");
		}
		else {
			// Validar si el usuario y la contraseña son correctos
			if(usuario.equals("diego") && contrasena.equals("diego")) {
				// Si el usuario y la contraseña son correctos, redirigir a la página de inicio
				response.sendRedirect("index.jsp");
			}
			else {
				// Si el usuario y la contraseña son incorrectos, mostrar mensaje de error
				out.println("Usuario o contraseña incorrectos. Por favor, intente nuevamente.");
			}
		}
	%>

	<h1>Login</h1>
	<form method="post">
		<label for="usuario">Usuario:</label>
		<input type="text" name="usuario" required><br>

		<label for="contrasena">Contraseña:</label>
		<input type="password" name="contrasena" required><br>

		<button type="submit">Ingresar</button>
	</form>
</body>
</html>
