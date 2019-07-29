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
	String nombre = request.getParameter("nombre");

	String apellido = request.getParameter("apellido");
	
	String usuario = request.getParameter("usuario");
	
	String contra = request.getParameter("contra");
	
	String pais = request.getParameter("pais");
	
	String tecno = request.getParameter("tecnologias");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp?useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=Europe/Moscow","ivan","0110");	
	
	Statement st = con.createStatement();
	
	String instruccionSql= "INSERT INTO USUARIOS (NOMBRE, APELLIDO, USUARIO, CONTRASENA, PAIS, TECNOLOGIA) VALUES('" + nombre + "', '" + apellido + "', '" + usuario + "', '" + contra + "', '" + pais + "', '" + tecno + "')";
	
	st.executeUpdate(instruccionSql);
	
	out.println("Registro con exito");
	
	}catch(Exception e){
		
		out.println("Ha habido un error");
	}

%>


</body>
</html>