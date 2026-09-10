//Diseña un programa que calcule al área de un círculo dado su radio.
//(para elevar al cuadrado alt + 0178
//Area del circulo = PI * r²

Algoritmo Area_Del_Circulo
    Definir A, P, R Como Real;
    P <- PI;
    Escribir "Indique el valor del radio";
    Leer R;
    A <- (P * R ^ 2);  // Usamos el operador ^ para elevar al cuadrado
    Escribir "El área del círculo es: ", A;
FinAlgoritmo