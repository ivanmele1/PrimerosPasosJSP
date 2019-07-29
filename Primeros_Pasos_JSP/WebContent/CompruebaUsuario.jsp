<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


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

	
	String usuario = request.getParameter("usuario");
	
	String contra = request.getParameter("contra");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Europe/Moscow","ivan","0110");	
	
	PreparedStatement ps = con.prepareStatement(" SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
	
	ps.setString(1, usuario);
	
	ps.setString(2, contra);
	
	ResultSet rs = ps.executeQuery();
	
	if(rs.absolute(1)) out.println("Usuario autorizado");
	
	else out.println("No hay usuarios con esos datos");
	
	
	}catch(Exception e){
		
		out.println("Ha habido un error");
	}

%>


</body>
</html>