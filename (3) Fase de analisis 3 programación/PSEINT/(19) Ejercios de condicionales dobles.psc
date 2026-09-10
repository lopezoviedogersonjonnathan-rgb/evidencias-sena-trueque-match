//Ejercicio 1
//Solicite al usuario que introduzca un número
//Indique si este número es par o impar
//	Considera que el usuiario no ingresara el número 0

//Otra forma

//Algoritmo Número_Par_O_Impar
//	
//	Definir Num, Resultado Como Entero;
//	Escribir "================================";
//	Escribir "Por favor ingresa un número"
//	Escribir "================================";
//		Leer Num
//		Resultado <- Num mod 2;
//		
//		Si Resultado = 0 Entonces	
//	Escribir "================================";
//   	Escribir "El número es par"
//	Escribir "================================";
//Sino 
//	Escribir "================================";
//	Escribir "El Número es impar"
//	Escribir "================================";
//			
//		FinSi
//		
//FinAlgoritmo


//Ejercicio 2
//Solicita al usuario que ingrese dos números
//Muestra cual de elloses el más grande
//Considera que siempre va a aingresar números diferentes
//Algoritmo Muestra_cual_de_elloses_el_más_grande
//	Definir a, b Como Real;
//	
//	Escribir "================================";
//	Escribir "Ingresa dos números";
//	Escribir "================================";
//	Leer a, b
//	
//	Si a > b Entonces
//		Escribir "================================";
//		Escribir " El núemro mas grande es: ", a;
//		Escribir "================================";
//	Sino 
//		Escribir "================================";
//		Escribir " El número más grande es:", b;
//		Escribir "================================";
//	FinSi
//	
//FinAlgoritmo


//Ejercicio 3
//Preguntale al usuario cuanto es el precio de un producto
//y si tiene cupón de descuento.
//	Si tiene un cupón, aplica el descuento y muestra el precio final.
//		
//		Preguntale al usuario cuanto es el precio de un producto
//		y si tiene cupón de descuento.
//			Si tiene un cupón, aplica el descuento y muestra el precio final.
//				
//				Algoritmo Cupón_de_descuento
//					Definir Precio, descuento, PrecioFinal Como Real;
//					Definir Tiene_descuento Como Logico;
//					Definir respuesta Como Caracter;
//					
//					Escribir "================================";
//					Escribir "Ingrese precio del producto: ";
//					Escribir "================================";
//					Leer Precio;
//					
//					Escribir "================================";
//					Escribir "¿El producto tiene cupón? (Escriba: si o no)";
//					Escribir "================================";
//					Leer respuesta;
//					
//					Convertir la respuesta en verdadero o falso
//					Si respuesta = "si" O respuesta = "SI" O respuesta = "Si" Entonces
//						Tiene_descuento <- Verdadero;
//					SiNo
//						Tiene_descuento <- Falso;
//					FinSi
//					
//					Aplicar descuento si corresponde
//						Si Tiene_descuento Entonces
//							Escribir "================================";
//							Escribir "¿De cuánto es el descuento? (ejemplo: 10 para 10%)";
//							Leer descuento;
//							
//							Calcular el precio con descuento
//							PrecioFinal <- Precio - (Precio * descuento/100);
//							
//							Escribir "================================";
//							Escribir "? DESCUENTO APLICADO";
//							Escribir "Precio original: $", Precio;
//							Escribir "Descuento: ", descuento, "%";
//							Escribir "Precio final: $", PrecioFinal;
//							Escribir "¡Ahorraste: $", Precio - PrecioFinal, "!";
//							Escribir "================================";
//						SiNo
//							Escribir "================================";
//							Escribir "? NO TIENE DESCUENTO";
//							Escribir "Precio a pagar: $", Precio;
//							Escribir "================================";
//						FinSi	
//						
//FinAlgoritmo


//Ejercicio 4
// Ingresar un némero natural de hasta 2 cifras
//de lo contrario muestre lo mismo que falta parqa ser número de 3 cifras
//Considerar, que el usuario in gresa un núemro de hasta dos cifras
Algoritmo NumeroTresCifras
	
	Definir Num, Resultado Como Entero;
	Escribir "================================";
	Escribir "Introdusca un número de dos cifras positivo:";
	Escribir "================================";
	Leer Num;
	Resultado <- 100 - Num;
	Si Num > 10 Entonces;
		Escribir "================================";
		Escribir " Para ser de 3 cifras le falta: " Resultado;
		Escribir "================================";
	FinSi
FinAlgoritmo

//Otra forma:
//	Algoritmo NumeroTresCifras
//		
//		Definir Num Como Entero;
//		Escribir "================================";
//		Escribir "Introdusca un número de dos cifras positivo:";
//		Escribir "================================";
//		Leer Num;
//		
//		Si Num > 10 Entonces;
//			Escribir "================================";
//			Escribir " Para ser de 3 cifras le falta: " 100 - Num;
//			Escribir "================================";
//	FinSi
//FinAlgoritmo






















