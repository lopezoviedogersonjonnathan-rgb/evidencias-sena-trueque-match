//Realizar un algoritmo que muestre por pantalla la tabla de multiplicar decreciente de cualquier 
//número, ingresado entre el 1 y el 10.
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