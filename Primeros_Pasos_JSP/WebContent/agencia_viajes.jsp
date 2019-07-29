<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1 style="text-align: center"> Agencia de viajes </h1>

<%

String ciudad_favorita = "Madrid";

//Lee la cookie de la peticion del navegador
Cookie[] lasCookies = request.getCookies();


//Busca las preferencias.(ciudad favorita)

if(lasCookies!=null){
	
	for(Cookie cookie_temporal:lasCookies){
		if("agencia_viajes.ciudad_favorita".equals(cookie_temporal.getName())){
			
			ciudad_favorita = cookie_temporal.getValue();
			
			break;
		}
	}
}

%>


<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>


<h3>Hoteles a <%= ciudad_favorita %></h3>

<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>
<p>Esto es un texto de ejemplo</p>


</body>
</html>