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
	
	String usuario = request.getParameter("usuario");
	String contra = request.getParameter("contra");
	
	
	//CUANDO HACEMOS UN PROYECTO JSP Y LO CORREMOS CON SERVLETS, ES NECESARIO ESPECIFICARLE DINAMICAMENTE DONDE ESTA EL CONECTOR DRIVER DE BBDD
	Class.forName("com.mysql.jdbc.Driver");
	
	//CREAMOS LA CONEXION A LA BASE DE DATOS
	//IMPORTAMOS EL PAQUETE JAVA.SQL Y YA NO TENEMOS QUE ESCRIBIR EL PREFIJO "java.sql"
	
	try {
	//java.sql.Connection miConexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "puerta");
	Connection miConexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp", "root", "puerta");
	
	//CREAMOS CONSULTAS PREPARADAS CON prepareStatement
	PreparedStatement c_preparada = miConexion.prepareStatement("SELECT * FROM USUARIOS WHERE USUARIO=? AND CONTRASENA=?");
	
    c_preparada.setString(1, "usuario");
    c_preparada.setString(2, "contra");
    
    ResultSet miResultset = c_preparada.executeQuery();
    
    if(miResultset.absolute(1)) out.println("Existe el usuario");
    
    else out.println("Tooodo está podrío");
	
	}catch(Exception e){
		out.println("Ha habido un error fatallllll");
	}

	
%>

</body>
</html>