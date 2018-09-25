<%@ page import="java.util.*" %>
<html>

<body>
<form name="Formulario_Compra" action="Lista_Compra.jsp">
 
  <p>Art√≠culos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>

<h2>ME CAGO EN LA PUTA MIERTA DE ESTE CARRO DE LA COMPRA</h2>

<ul>
<%  //LA ETIQUETA <LI> SIEMPRE VA DENTRO DE LA ETIQUETA <UL>

	//HE QUERIDO A—ADIR POR MI CUENTA UN HTTPSESSION PARA HACER SETMAXINTERVAL, LO CONSEGUÕ!!!!

	List<String> ListaElementos=(List<String>)session.getAttribute("misElementos"); //RECOGEMOS LOS ATRIBUTOS DE SESION, QUE AL CARGAR PAGINA NO HAY, SOLO CUANDO LE DE A SUBMIT
	 
	long time=session.getCreationTime();
	
	out.print(time);
	

	if(ListaElementos==null){
		
		session.setMaxInactiveInterval(10); //HE QUERIDO A—ADIR POR MI CUENTA UN "SETMAXINACTIVEINTERVAL", PARA MATAR LA SESION AL CABO DE X TIEMPO Y LO CONSEGUÕ!!!!
		
		ListaElementos=new ArrayList<String>();  //CREA EL "ARRAYLIST"
		
		//session.setMaxInactiveInterval(2);
		
		session.setAttribute("misElementos", ListaElementos); //AQUI CREAMOS LA SESION, QUE ESTAR¡ VACIA AL PRINCIPIO
		
		//session.setMaxInactiveInterval(2);
		
	}


	String [] elementos = request.getParameterValues("articulos");

	if(elementos!=null){
		
		for(String elemTemp : elementos){
			
			//out.println("<li>"+ elemTemp +"</li>");
			ListaElementos.add(elemTemp);
			
		}
		
	}
		
	else{out.println("El carro est· vacio, DALE DE COMER A TU HIJO  Y DE PASO VETE A TOMAR POR CULO");}	
	
	for(String elemTemp : ListaElementos){
		
		out.println("<li>" + elemTemp + "</li>");
		
	}
		
%>
</ul>

</body>

</html>