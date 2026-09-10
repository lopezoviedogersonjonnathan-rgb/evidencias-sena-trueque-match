//Dado N, escribir el producto desde 1 hasta N.

Algoritmo ProductoHastaN
    Definir N, i Como Entero
    Definir producto Como Real
    
    Escribir Sin Saltar "Ingrese el valor de N: "
    Leer N
    
    producto <- 1
    
    Para i <- 1 Hasta N Con Paso 1 Hacer
        producto <- producto * i
    FinPara
    
    Escribir "El producto desde 1 hasta ", N, " es: ", producto
    
FinAlgoritmo
