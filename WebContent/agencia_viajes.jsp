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

	//valor de defecto
	
	String ciudad_favorita="Madrid";

	//tomamos las cookies
	
	Cookie[] lasCookies=request.getCookies();
	
	//buscamos la preferencia elegida
	
	if (lasCookies!=null){
		
		for(Cookie cookie_temp : lasCookies){
			
			if("agencia_viajes.ciudad_favorita".equals(cookie_temp.getName())){
				
				ciudad_favorita=cookie_temp.getValue();
				
				break;
				
			}
			
		}
		
	}

%>

<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>

<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>

<h3>Vuelos a <%= ciudad_favorita %></h3>

<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>
<p>Textos de ejemplo viva el metal</p>

</body>
</html>