//Algoritmo sin_titulo
//	//Elabore un algoritmo que permita ingresar por teclado
//	//dos valores enterosy queimprima en pantallaun mensaje
//	//indicando la relación que existe entre ellos
//	Definir a, b Como Entero;
//	Escribir "================================";
//	Escribir "Por favor ingrese dos valores enteros:";
//	Escribir "================================";
//	Leer a, b
//	
//	Si a = b Entonces
//		Escribir "================================";
//		Escribir "Son iguales";
//		Escribir "================================";
//	SiNo
//		Si a > b | a < b Entonces
//			Escribir "================================";
//			Escribir "No ;son iguales";
//			Escribir "================================";
//		
//		FinSi
//	FinSi
//	
//	
//FinAlgoritmo

//Otra forma:
//Algoritmo CompararDosNumeros
//	
//	//Elabore un algoritmo que permita ingresar por teclado
//	//dos valores enteros y que imprima en pantalla un mensaje
//	//indicando la relación que existe entre ellos
//	
//	Definir a, b Como Entero;
//	
//	Escribir "================================";
//	Escribir "Por favor ingrese dos valores enteros:";
//	Escribir "================================";
//	Leer a, b
//	
//	// Verificar si son iguales
//	Si a = b Entonces
//		Escribir "================================";
//		Escribir "Son iguales";
//		Escribir "================================";
//	SiNo
//		// Si no son iguales, verificar cuál es mayor
//		Si a > b Entonces
//			Escribir "================================";
//			Escribir "El número ", a, " es MAYOR que ", b;
//			Escribir "================================";
//		SiNo
//			Escribir "================================";
//			Escribir "El número ", b, " es MAYOR que ", a;
//			Escribir "================================";
//		FinSi
//	FinSi
//	
//FinAlgoritmo


//Elabore un algoritmo que permita ingresar por teclado una nota
//	Si la nota esta entre 0 y 5 imprimir pesimo
//		Si la nota esta entre 6 y 10 imprimir deficinte
//			Si la nota esta entre 11y y 15 imprimir regular
//				Si la nota esta entre 16 yu 20 imprimir excelente
//					
//					Algoritmo Calificación
//						Definir nota Como Entero
//						Escribir "Ingrese una nota:";
//						Leer nota;
//						Si nota >= 0 & nota <= 5 Entonces;	
//							Escribir "la nota es pesimo";
//						SiNo
//							Si nota >= 6 & nota <= 10 Entonces;
//								Escribir "la nota es deficiente";
//							SiNo
//								Si nota >= 11 & nota <= 15 Entonces;
//									Escribir "la nota es regular"
//								SiNo
//									Si nota >= 16 & nota <= 20 Entonces;
//										Escribir "la nota es Excelente"
//									SiNO
//										Escribir "La nota ingresada no es valida";
//									FinSi
//								FinSi			
//							FinSi
//						FinSi
//						
//FinAlgoritmo



//Ejercicio 2:
//FORMA 1
//Cree un algoritmo que permita ingresar el costo unitario de un artículo
//Y la cantidad de unidades a comprar
//Si se compra 100 o más unidades aplicar descuento del 40%
//Si se compra desde 26 hasta 99 aplicar 20%
//Si se compra desde 10 hasta 25 el descuento es 12%
//Para cantidades menores no hay descuento
//Imprimir el monto a pagar
//
//Algoritmo Descuento_Por_unidades
//	Definir precio, descuento, montoTotal, montoFinal Como Real;
//	Definir cantidad Como Entero;
//	
//	Escribir "================================";
//	Escribir "  CALCULADORA DE DESCUENTOS    ";
//	Escribir "================================";
//	Escribir "";
//	
//	// ENTRADA DE DATOS
//	Escribir "Por favor ingrese el precio del artículo:";
//	Leer precio;
//	
//	Escribir "Por favor introduzca la cantidad:";
//	Leer cantidad;
//	
//	// CALCULAR MONTO TOTAL (precio × cantidad)
//	montoTotal <- precio * cantidad;
//	
//	// DETERMINAR EL DESCUENTO SEGÚN LA CANTIDAD
//	Escribir "================================";
//	
//	Si cantidad >= 100 Entonces
//		// Descuento del 40%
//		descuento <- montoTotal * 0.40;
//		montoFinal <- montoTotal - descuento;
//		
//		Escribir "? Cantidad: ", cantidad, " unidades";
//		Escribir "? Precio unitario: $", precio;
//		Escribir "? Subtotal: $", montoTotal;
//		Escribir "? Descuento aplicado: 40%";
//		Escribir "? Ahorro: $", descuento;
//		Escribir "================================";
//		Escribir "   TOTAL A PAGAR: $", montoFinal;
//		Escribir "================================";
//		
//	SiNo
//		Si cantidad >= 26 Y cantidad <= 99 Entonces
//			// Descuento del 20%
//			descuento <- montoTotal * 0.20;
//			montoFinal <- montoTotal - descuento;
//			
//			Escribir "? Cantidad: ", cantidad, " unidades";
//			Escribir "? Precio unitario: $", precio;
//			Escribir "? Subtotal: $", montoTotal;
//			Escribir "? Descuento aplicado: 20%";
//			Escribir "? Ahorro: $", descuento;
//			Escribir "================================";
//			Escribir "   TOTAL A PAGAR: $", montoFinal;
//			Escribir "================================";
//			
//		SiNo
//			Si cantidad >= 10 Y cantidad <= 25 Entonces
//				// Descuento del 12%
//				descuento <- montoTotal * 0.12;
//				montoFinal <- montoTotal - descuento;
//				
//				Escribir "? Cantidad: ", cantidad, " unidades";
//				Escribir "? Precio unitario: $", precio;
//				Escribir "? Subtotal: $", montoTotal;
//				Escribir "? Descuento aplicado: 12%";
//				Escribir "? Ahorro: $", descuento;
//				Escribir "================================";
//				Escribir "   TOTAL A PAGAR: $", montoFinal;
//				Escribir "================================";
//				
//			SiNo
//				// Sin descuento (menos de 10 unidades)
//				montoFinal <- montoTotal;
//				
//				Escribir "? Cantidad: ", cantidad, " unidades";
//				Escribir "? Precio unitario: $", precio;
//				Escribir "? No aplica descuento";
//				Escribir "================================";
//				Escribir "   TOTAL A PAGAR: $", montoFinal;
//				Escribir "================================";
//			FinSi
//		FinSi
//	FinSi
//	
//FinAlgoritmo


//Forma 2
//Cree un algoritmo que permita ingresar el costo unitario de un artículo
//	//Y la cantidad de unidades a comprar
//	//Si se compra 100 o más unidades aplicar descuento del 40%
//	//Si se compra desde 26 hasta 99 aplicar 20%
//	//Si se compra desde 10 hasta 25 el descuento es 12%
//	//Para cantidades menores no hay descuento
//mprimir el monto a pagar
//
//Algoritmo Descuento_Por_unidades
//	
//	Definir costo Como real;
//	Definir cantidad Como Entero;
//	
//	Escribir "Por favor ingrese el precio del articulo";
//	Leer costo;
//	Escribir "Por favor introduzca la cantidad";
//	Leer cantidad
//	
//	Si cantidad >= 100 Entonces
//		costo <- costo * 60 / 100;	
//	SiNo
//		Si cantidad >= 26 & cantidad <= 99 Entonces
//			costo <- costo * 80 / 100;
//		SiNo
//			Si cantidad >= 10 & cantidad <= 25 Entonces
//				costo <- costo * 25 / 100;
//						
//			FinSi
//		FinSi
//	FinSi
//	Escribir "El monto a pagar es:", costo * cantidad; 
//	
//FinAlgoritmo


//Ejercicio 3 calculadora

Algoritmo calculadora
	Definir a, b Como entero
	Definir resultado Como Real
	Definir operador Como caracter
	
	Escribir "Introdusca un número"
	Leer a;
	Escribir "Introduzca un operador (+,-,*,/,%)";
	Leer operador;
	Escribir "Ingrese un segundo número"
	Leer b;
	
	Si operador = '+' Entonces
		resultado <- a+b;
	SiNo
		Si operador = '-' Entonces
			resultado <- a-b;
		SiNo
			Si operador = '*' Entonces
				resultado <- a*b;
			SiNo
				Si operador = '/' Entonces
					resultado <- a/b;
				SiNo
					Si operador = '%' Entonces
						resultado <- a%b;
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "El resultado de la operación: ", a," ", operador," ", b, " = ", resultado;
FinAlgoritmo




