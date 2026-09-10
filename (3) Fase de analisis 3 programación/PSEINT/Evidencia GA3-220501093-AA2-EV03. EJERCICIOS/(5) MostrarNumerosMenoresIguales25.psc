//Elaborar un algoritmo que permita ingresar 20 números y muestre todos los números menores e 
//iguales a 25. 
Algoritmo MostrarNumerosMenoresIguales25
    Definir num, i Como Entero
    
    Escribir "=== Programa para mostrar números <= 25 ==="
    Escribir ""
    
    // Ingresar 20 números
    Para i <- 1 Hasta 20 Con Paso 1 Hacer
        Escribir Sin Saltar "Ingrese el número ", i, ": "
        Leer num
        
        // Verificar si es menor o igual a 25
        Si num <= 25 Entonces
            Escribir "   ? ", num, " es menor o igual a 25"
        FinSi
    FinPara
    
    Escribir ""
    Escribir "=== Fin del programa ==="
FinAlgoritmo