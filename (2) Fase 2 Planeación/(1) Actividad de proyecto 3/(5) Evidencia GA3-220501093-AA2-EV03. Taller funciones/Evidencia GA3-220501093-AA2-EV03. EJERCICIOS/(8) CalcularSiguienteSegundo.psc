//Diseñar un algoritmo que permita ingresar la hora, minutos y segundos, y que calcule la hora en el 
//siguiente segundo ("0<= H <=23", "0<= M <=59" "0<= S<=59").

Algoritmo CalcularSiguienteSegundo
    Definir H, M, S Como Entero
    
    Escribir "Ingrese la hora actual:"
    Escribir Sin Saltar "Horas (0-23): "
    Leer H
    Escribir Sin Saltar "Minutos (0-59): "
    Leer M
    Escribir Sin Saltar "Segundos (0-59): "
    Leer S
    
    Escribir ""
    Escribir "Hora actual: ", H, ":", M, ":", S
    
    // Aumentar 1 segundo
    S <- S + 1
    
    // Si los segundos llegan a 60
    Si S = 60 Entonces
        S <- 0
        M <- M + 1
        
        // Si los minutos llegan a 60
        Si M = 60 Entonces
            M <- 0
            H <- H + 1
            
            // Si las horas llegan a 24
            Si H = 24 Entonces
                H <- 0
            FinSi
        FinSi
    FinSi
    
    Escribir "Siguiente segundo: ", H, ":", M, ":", S
    
FinAlgoritmo
