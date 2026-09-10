//Diseña un programa que convierta una longitud de metros a centimetros y milimetros

//Diseña un programa que convierta una longitud de metros a centímetros y milímetros

Algoritmo Conversión
    Definir m, cm, mm Como Real;
    //m = cm * 100; 
	//m = mm * 1000;
    
    Escribir "Indique la longitud en m que desea convertir a cm";
    Leer m;
    cm <- m * 100;
    
    Escribir "Indique la longitud en m que desea convertir a mm";
    Leer m;
    mm <- m * 1000;
    
    Escribir "El valor de m a cm es: ", cm, " y el valor de m a mm es: ", mm;
    
FinAlgoritmo

//Otra forma:

//Algoritmo Conversión
//	Definir long Como Real
//	
//	Escribir "Escribir la longitud m:"
//	Leer long
//    Escribir "La longitud en cm es: ", long +100;
//	Escribir "La longitud en mm es: ", long +1000;
//	
//FinAlgoritmo
