<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EJEMPLO DECLARACIONES</title>
</head>
<body>
<h1 style="text_align:center">EJEMPLO OBJETO JSP</h1>
  
 	Peticion datos del navegador: <%= request.getHeader("User-Agent") %>
 	<!-- USER-AGENT PARA VER LOS PARAMETROS DEL NAVEGADOR -->
 	
 	<!-- IMPORTANTE, ESTOS OBJETOS NO APARECEN EN EL VIDEO, ME PUSE A INDAGAR CON LA API -->
 	<!-- Y ME CONSTRUI UNA TABLA CON ESOS METODOS DEL REQUEST -->
 	<br><br>
 	<table style="width:100%" border="1">
 	<tr><th>OBJETOS</th></tr>
 	<tr><td>
      <%= request.getLocale() %> 
 	</td></tr>
 	<tr><td>
 	Dame la direccion remota: <%= request.getRemoteAddr() %> </td></tr>
 	<tr><td>
 	Dame las cookies: <%= request.getCookies() %> </td></tr>
 	<tr><td>
 	Host: <%= request.getRemoteHost() %> </td></tr>
 	<tr><td>
 	Puerto: <%= request.getLocalPort() %> </td></tr>
 	
 	</table>
  
</body>
</html>