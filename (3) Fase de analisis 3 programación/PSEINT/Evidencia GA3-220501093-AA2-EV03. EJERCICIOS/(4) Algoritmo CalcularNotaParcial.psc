//4. Un capital C está situado a un tipo de interés R anual ¿al término de cuántos años se doblará? 

//Si tienes un capital inicial C con un interés R% anual, cada año tu dinero crece.
//Ejemplo:	
//Capital inicial: $1,000,000
//Interés: 10% anual	
//Año 1: $1,000,000 × 1.10 = $1,100,000
//Año 2: $1,100,000 × 1.10 = $1,210,000
//Año 3: $1,210,000 × 1.10 = $1,331,000
//...y así hasta que llegue a $2,000,000 (el doble)
Algoritmo DoblarCapital
    Definir capital, capitalActual, interes Como Real
    Definir años Como Entero
    
    // Solicitar datos
    Escribir "Ingrese el capital inicial: "
    Leer capital
    Escribir "Ingrese la tasa de interés anual (en %): "
    Leer interes
    
    // Inicializar variables
    capitalActual <- capital
    años <- 0
    
    // Calcular cuántos años toma doblar el capital
    Mientras capitalActual < (capital * 2) Hacer
        capitalActual <- capitalActual * (1 + interes/100)
        años <- años + 1
    FinMientras
    
    // Mostrar resultado
    Escribir "El capital se doblará en ", años, " años"
    Escribir "Capital inicial: $", capital
    Escribir "Capital final: $", capitalActual
    
FinAlgoritmo
