<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<%

	String alumnos[] = {"luis", "mono", "miki"};

	//METEMOS EL STRING EN EL CONTEXTO DE LA PAGINA PARA PODER USAR EL JSTL
	pageContext.setAttribute("losalumnos", alumnos);

%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

CON ETIQUETAS JSP <br>

<% 
	for(String alum_temp : alumnos){
	
		out.println(alum_temp + "<br>");
	
	}
%>

CON JSTL <br>

	<c:forEach var="alum_temp1" items="${losalumnos}">
	
		${alum_temp1}<br>
	
	</c:forEach>

</body>
</html>