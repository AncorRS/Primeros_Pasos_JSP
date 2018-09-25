<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<% 
	//AQUI RECOGEMOS LOS PARAMETROS DEL FORMULARIO
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	String pais = request.getParameter("pais");
	String tecno = request.getParameter("tecnologias");
	
	//CUANDO HACEMOS UN PROYECTO JSP Y LO CORREMOS CON SERVLETS, ES NECESARIO ESPECIFICARLE DINAMICAMENTE DONDE ESTA EL CONECTOR DRIVER DE BBDD
	Class.forName("com.mysql.jdbc.Driver");
	
	//CREAMOS LA CONEXION A LA BASE DE DATOS
	//IMPORTAMOS EL PAQUETE JAVA.SQL Y YA NO TENEMOS QUE ESCRIBIR EL PREFIJO "java.sql"
	
	try {
	//java.sql.Connection miConexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "puerta");
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "puerta");
	//java.sql.Statement miStatement = miConexion.createStatement();
	Statement miStatement = miConexion.createStatement();
	String instruccionSql = "INSERT INTO USUARIOS (Nombre, Apellido, Usuario, Contrasena, Pais, Tecnologia) VALUES ('" + nombre + "','" + apellido + "','" + usuario + "','" + contra + "','" + pais + "','"+ tecno +"')";    
	miStatement.executeUpdate(instruccionSql);
	out.println("Registrado con exito");
	}catch(Exception e){
		out.println("Ha habido un error fatallllll");
	}

	
%>

</body>
</html>