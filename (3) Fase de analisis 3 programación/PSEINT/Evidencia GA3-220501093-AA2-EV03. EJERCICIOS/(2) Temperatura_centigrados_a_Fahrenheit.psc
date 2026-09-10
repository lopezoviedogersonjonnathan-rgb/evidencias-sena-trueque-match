//2. Realizar la conversión de una temperatura dada en grados Centígrados a grados Fahrenheit
//(Fórmula: F = ((9/5) C + 32).
//9/5 = 1.8
Algoritmo Temperatura_centigrados_a_Fahrenheit
    Definir Cent, Farent Como Real;
    
    Escribir "Indicar grados centigrados:";
    Leer Cent;
    
    Farent <- (9/5 * Cent) + 32;
    //Farent <- (1.8 * Cent) + 32;
    Escribir "Los grados centigrados ", Cent, " equivalen a: ", Farent, " grados Fahrenheit";
    
FinAlgoritmo
