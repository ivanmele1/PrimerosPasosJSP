<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	// leyendo datos del formulario
	String ciudad_favorita = request.getParameter("ciudad_favorita");

	//Crea la coockie
	Cookie laCookie = new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
		
	//Vida de la cookie
	laCookie.setMaxAge(365*24*60*60);
	
	//Enviar a usuario
	response.addCookie(laCookie);
	
	
	%>
	
		
	Gracias por enviar tus preferencias

<a href="agencia_viajes.jsp">Ir a agencia de viajes</a>



</body>
</html>
