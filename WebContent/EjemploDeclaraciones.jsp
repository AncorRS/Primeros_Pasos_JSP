<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EJEMPLO DECLARACIONES</title>
</head>
<body>
<h1 style="text_align:center">EJEMPLO DECLARACIONES</h1>
  
 <%!
 
 //EN UN JSP INCLUIR EL MENOR NUMERO DE CODIGO POSIBLE
 
 	private int resultado;
 
 	private int metodoSuma(int num1, int num2){
 		
 		resultado=num1 + num2;
 		return resultado;
 		
 	}
 	
	private int metodoResta(int num1, int num2){
 		
 		resultado=num1 - num2;
 		return resultado;
 		
 	}

	private int metodoMultiplica(int num1, int num2){
		
		resultado=num1 * num2;
		return resultado;
		
	}
 
 %>
 
 
 	El resultado de la suma es: <%= metodoSuma(2, 3) %> <br>
 	
 	El resultado de la suma es: <%= metodoResta(2, 3) %> <br>
 	
 	El resultado de la suma es: <%= metodoMultiplica(2, 3) %> <br>
  
 
  
</body>
</html>