//Escribir el algoritmo que permite calcular la nota correspondiente al primer parcial de "análisis" 
//para un estudiante cualquiera. Se debe considerar que hay dos talleres y un quiz, que en conjunto 
//valen un 30 % de la nota y el resto (70 %) corresponde a la nota del examen parcial.
//Solucion:
Algoritmo CalculoNotaPrimerParcial
    // 1. Variables: Se definen las variables para almacenar las notas de los talleres, quiz, examen y las notas calculadas
    Definir taller1, taller2, quiz, examen Como Real
    Definir notaTalleres, notaQuiz, notaExamen, notaFinal Como Real
    
    // 2. Entrada de datos: Se solicita al usuario que ingrese las notas
    Escribir "CÁLCULO NOTA PRIMER PARCIAL - ANÁLISIS"
    Escribir ""
    // Nota del Taller 1
    Escribir "Ingrese la nota del Taller 1 (0-5): "
    Leer taller1
    // Nota del Taller 2
    Escribir "Ingrese la nota del Taller 2 (0-5): "
    Leer taller2
    // Nota del Quiz
    Escribir "Ingrese la nota del Quiz (0-5): "
    Leer quiz
    // Nota del Examen Parcial
    Escribir "Ingrese la nota del Examen Parcial (0-5): "
    Leer examen
    
    // 3. Procesamiento: Cálculo de la nota final
    // Se calcula el promedio de los dos talleres y el quiz
    notaTalleres = (taller1 + taller2 + quiz) / 3
    // Se multiplica ese promedio por 0.30 (30%)
    notaTalleres = notaTalleres * 0.30
    // Se multiplica la nota del examen por 0.70 (70%)
    notaExamen = examen * 0.70
    // Se suman ambos valores para obtener la nota final
    notaFinal = notaTalleres + notaExamen
    
    // 4. Salida: Muestra los resultados desglosados y la nota final del primer parcial
    Escribir ""
    Escribir "RESULTADOS"
    Escribir "Nota Talleres y Quiz (30%): ", notaTalleres
    Escribir "Nota Examen (70%): ", notaExamen
    Escribir "NOTA FINAL PRIMER PARCIAL: ", notaFinal
    
FinAlgoritmo