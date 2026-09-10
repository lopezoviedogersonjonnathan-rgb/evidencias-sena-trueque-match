//Algoritmo Operadores lógicos en pseint://
//	Operador Y (&- AMBAS CONDICIONES SON VERDADERAS)
//Algoritmo Operador_Y
//	Si (edad >= 18 Y edad <= 65) Entonces
//    Escribir "Puedes trabajar";
//FinSi
//FinAlgoritmo

//Ejemplo de condición sin anidar, Solo llevan un FInsi por que solo hay un si
//Algoritmo  Operador_Y
//	Definir edad Como Entero;
//	Escribir "Ingrese su edad";
//	Leer edad;
//	Si edad	>= 18 Y edad <= 65 Entonces 
//		Escribir "puedes trabajar";
//	SiNo
//		escribir "No puede trabajar";		
//	FinSi	
//FinAlgoritmo

//Ejemplo de condicion anidada
//Algoritmo  Operador_Y
//	Definir edad Como Entero;
//	Escribir "Ingrese su edad";
//	Leer edad;
//Si edad	>= 18 Y edad <= 65 Entonces
//	Escribir "Puedes trabajar";	
//SiNo
//	Si edad < 18 Entonces
//			Escribir "No puede trabajar"
//SiNo
//	sI edad > 65 Entonces
//		Escribir "Adulto pensionado"
//		FinSi
//	  FinSi	
//  FinSi  			
//FinAlgoritmo

//EJEMPLOS COMPLETOS:
//Ejemplo 1: Operador Y
//Algoritmo EjemploY
//    Definir nota Como Real;
//    
//    Escribir "Ingresa tu nota:";
//    Leer nota;
//    
//    Si (nota >= 3.0 Y nota <= 5.0) Entonces
//        Escribir "Aprobaste";
//    Sino
//        Escribir "Reprobaste";
//    FinSi
//    
//FinAlgoritmo



//O ¿Cuándo usarlo?
//Cuando AL MENOS UNA condición debe ser verdadera.Ejemplo:
//Algoritmo Operador_O
//	Si (dia = "sábado" O dia = "domingo") Entonces
//    Escribir "Es fin de semana";
//FinSi
//FinAlgoritmo

//Algoritmo Operador_0
//    Definir edad Como Entero;
//    
//    Escribir "Ingresa tu edad:";
//    Leer edad;
//    
//    Si (edad < 18 O edad > 65) Entonces
//        Escribir "Tienes descuento";
//    Sino
//        Escribir "Pagas precio normal";
//    FinSi
//    
//FinAlgoritmo



//Operador No, ¿Cuándo usarlo?
//Para negar/invertir una condición.Ejemplo:

//Algoritmo  Operador_NO
//	Si (NO esMayorDeEdad) Entonces
//	Escribir "Eres menor de edad";
//FinSi
//FinAlgoritmo

//Algoritmo Ejemplo_NO
//    Definir llueve Como Logico;
//    
//    llueve <- Falso;
//    
//    Si (NO llueve) Entonces
//        Escribir "Vamos al parque";
//    Sino
//        Escribir "Nos quedamos en casa";
//    FinSi
//    
//FinAlgoritmo



//Combinando los operadores Lógicos:
Algoritmo Combinado
    Definir edad Como Entero;
    Definir tienePermiso Como Logico;
    
    Escribir "Ingresa tu edad:";
    Leer edad;
    Escribir "¿Tienes permiso? (Verdadero/Falso):";
    Leer tienePermiso;
    
    Si ((edad >= 18) O (edad >= 16 Y tienePermiso)) Entonces
        Escribir "Puedes entrar a la fiesta";
    Sino
        Escribir "No puedes entrar";
    FinSi
    
FinAlgoritmo
