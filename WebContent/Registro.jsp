<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FORMULARIO REGISTRO</title>
</head>
<body>
<h1 style="text_align:center">FORMULARIO REGISTRO</h1>
  
 	El nombre es: <%= request.getParameter("nombre") %> &nbsp; El apellido es: <%= request.getParameter("apellido") %>
 	
 	<br><br>
 	
 	<jsp:include page="Fecha.jsp"></jsp:include><br><br>
 	
 	
  
</body>
</html>