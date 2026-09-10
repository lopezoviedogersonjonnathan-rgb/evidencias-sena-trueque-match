//Diseñe un programa que calcule, la velocidad promedio de un vehículo
//dado el tiempo y la distancia recorrida
//x=v*t
//v=x/t

Algoritmo Calculo_De_Velocidad
    
    Definir v, x, t Como Real;
    Definir xTexto, tTexto Como Caracter;
    
    Escribir "Indique la distancia recorrida (ejemplo: 100m):";
    leer xTexto;
    // Quitar la "m" del final
    xTexto <- Subcadena(xTexto, 0, Longitud(xTexto)-2);
    x <- ConvertirANumero(xTexto);
    
    Escribir "Indique el tiempo que se tardo en recorrer la distancia de A a B (ejemplo: 5s):";
    leer tTexto;
    // Quitar la "s" del final
    tTexto <- Subcadena(tTexto, 0, Longitud(tTexto)-2);
    t <- ConvertirANumero(tTexto);
    
    // Calcular la velocidad
    v <- (x / t);
    
    Escribir "La velocidad con la que el vehiculo recorrio es ", v, " m/s";
    
FinAlgoritmo
