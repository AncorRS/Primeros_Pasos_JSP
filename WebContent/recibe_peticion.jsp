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

	//recibimos los parametros seminales
	
	String ciudad_favorita=request.getParameter("ciudad_favorita"); 

	//leemos la cookie
	
	Cookie laCookie=new Cookie("agencia_viajes.ciudad_favorita", ciudad_favorita);
	
	//vida de la cookie
	
	laCookie.setMaxAge(365*24*60*60);
	
	//insertamos la cookieç
	
	response.addCookie(laCookie);
	
%>

Gracias por enviar tus preferencias

<a href="agencia_viajes.jsp">Ir a la agencia de viajes</a>

</body>
</html>