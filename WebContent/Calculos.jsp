<%@ page import="pilinf.com.CalMat.*" %> 
<!-- IMPORTAMES EL PACKAGE ENTERO CON EL ASTERISCO, O DEFINIMOS LA CLASE ESPCIFICA QUE QUERAMOS  -->

<!-- SI QUEREMOS IMPORTAR VARIOS PAQUETES, LAS PONEMOS EN UN IMPORT SEPARADOS POR COMAS  -->


<!-- IMPORTAMES  LA CLASE ESPCIFICA QUE QUERAMOS  page import= "pilinf.com.CalMat.Calculos"  -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EJEMPLO DECLARACIONES</title>
</head>
<body>
<h1 style="text_align:center">EJEMPLO DECLARACIONES</h1>
  
 
 <!-----------SI HACEMOS EL IMPORT DE LOS PACKAGES O CLASES, NO NOS HACE FALTA ESCRIBIR LA RUTA COMPLETA----------------->
 
 	El resultado de la suma es: <%= Calculos.metodoSuma(2, 3) %><br>
 	                          		<!--  pilinf.com.CalMat.Calculos.metodoSuma(2, 3) -->
 	<!-- TENEMOS QUE ESPICIFICAR LA RUTA DE LA CLASE DONDE ESTÁ EL METODO -->
 	
 	El resultado de la suma es: <%= Calculos.metodoResta(2, 3) %><br>
 									<!--  pilinf.com.CalMat.Calculos.metodoResta(2, 3) -->
 	<!-- TENEMOS QUE ESPICIFICAR LA RUTA DE LA CLASE DONDE ESTÁ EL METODO -->
 	
 	El resultado de la suma es: <%= Calculos.metodoMultiplica(2, 3) %><br>
 									<!--  pilinf.com.CalMat.Calculos.metodoMultiplica(2, 3) -->
 	<!-- TENEMOS QUE ESPICIFICAR LA RUTA DE LA CLASE DONDE ESTÁ EL METODO -->
  
 
  
</body>
</html>