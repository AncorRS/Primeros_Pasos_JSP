package pilinf.com.CalMat;

public class Calculos {

	private static int resultado;
	//LO DECLARAMOS STATICO PARA PODER LLAMAR AL METODO SIN LA NECESIDAD DE CREAR OBJETO (INSTANCIAR)
	//SE PONE LA CLASE ANTES DEL METODO
	 
 	public static int metodoSuma(int num1, int num2){
 		
 		resultado=num1 + num2;
 		return resultado;
 		
 	}
 	
 	public static int metodoResta(int num1, int num2){
 		
 		resultado=num1 - num2;
 		return resultado;
 		
 	}

 	public static int metodoMultiplica(int num1, int num2){
		
		resultado=num1 * num2;
		return resultado;
		
	}
	
}
