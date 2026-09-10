//1. Un corredor de maratón (distancia 42,195 Km) ha recorrido la carrera en 2 horas 25 minutos. Se
//desea un algoritmo que calcule el tiempo medio en minutos por kilómetro.

//Solución:
// Convertir horas (h) a minutos (m)
//distancia (d) / tiempo en minutos (t_m)

Algoritmo TiempoMedioMaratonDinamico
    Definir distancia, horas, minutos, tiempoTotal, tiempoPorKm Como Real;
    
    Escribir "Ingrese la distancia recorrida (km):";
    Leer distancia;
    
    Escribir "Ingrese las horas:";
    Leer horas;
    
    Escribir "Ingrese los minutos:";
    Leer minutos;
    
    // Convertir todo a minutos
    tiempoTotal <- (horas * 60) + minutos;
    
    // Calcular tiempo medio por kilómetro
    tiempoPorKm <- tiempoTotal / distancia;
    
    // Mostrar resultado
    Escribir "----------------------------------------";
    Escribir "Tiempo total: ", tiempoTotal, " minutos";
    Escribir "Tiempo medio por kilómetro: ", tiempoPorKm, " min/km";
    
FinAlgoritmo


//Otra opcición el usuario ya sabe convertir a minutos y solo ingresa mimutos:
//	Algoritmo Calcular_Tiempo_pOR_Km
//    Definir d, t Como Real;
//    
//    Escribir "Ingrese la distancia en km:";
//    Leer d;
//    
//    Escribir "Ingrese el tiempo total en minutos:";
//    Leer t;
//    
//    // Calcular tiempo por km
//    t <- t / d;
//    
//    Escribir "Tiempo medio por kilómetro: ", t, " minutos/km";
//    
//FinAlgoritmo



