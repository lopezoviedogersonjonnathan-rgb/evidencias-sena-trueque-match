//Algoritmo Ingresa_Un_Número
//	//Solicitale al usuario que ingrese un numero
//	//Si el número es mayor que 100 aumentale 10%
//	//Imprima en pantalla el número
//
//Definir Num Como Real;
//	 Escribir "Ingresa un número";
//	 Leer Num; 
//	 Si Num > 100 entonces;
//		 //Num <- Num + (Num * 10/100);
//		 Num <- Num * 110/100
//	 FinSi
//	 Escribir "El Número final es ", Num;
//FinAlgoritmo

Algoritmo AumentarNumeroConEstilo
    Definir numero, numeroOriginal, aumento Como Real
    
    // TÍTULO
    Escribir "================================"
    Escribir "  CALCULADORA DE AUMENTO 10%  "
    Escribir "================================"
    Escribir ""
    
    // ENTRADA
    Escribir "Ingrese un número:"
    Leer numero
    numeroOriginal <- numero
    
    // SEPARADOR
    Escribir "--------------------------------"
    
    // PROCESO Y RESULTADO
    Si numero > 100 Entonces
        aumento <- numero * 0.10
        numero <- numero + aumento
        
        Escribir "================================"
        Escribir "      ? AUMENTO APLICADO       "
        Escribir "================================"
        Escribir "Número original: ", numeroOriginal
        Escribir "Aumento (10%): ", aumento
        Escribir "Número final: ", numero
        Escribir "================================"
    SiNo
        Escribir "================================"
        Escribir "     ? SIN AUMENTO            "
        Escribir "================================"
        Escribir "El número ", numero, " no es mayor a 100"
        Escribir "Número final: ", numero
        Escribir "================================"
    FinSi
    
FinAlgoritmo