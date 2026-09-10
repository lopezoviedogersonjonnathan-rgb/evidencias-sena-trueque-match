//Hacer un programa que registre el consumo realizado por los clientes de un restaurante, si el 
//consumo de cada cliente excede 50000 se hará un descuento del 20 %. Se debe mostrar el pago de 
//cada cliente y el total de todos los pagos.
Algoritmo ConsumoRestaurante
    Definir consumo, descuento, pagoCliente, totalPagos Como Real
    Definir numClientes, i Como Entero
    
    totalPagos <- 0
    
    Escribir Sin Saltar "¿Cuántos clientes hay?: "
    Leer numClientes
    
    Para i <- 1 Hasta numClientes Con Paso 1 Hacer
        Escribir ""
        Escribir "Cliente ", i, ":"
        Escribir Sin Saltar "Ingrese el consumo: $"
        Leer consumo
        
        Si consumo > 50000 Entonces
            descuento <- consumo * 0.20
            pagoCliente <- consumo - descuento
            Escribir "Tiene descuento del 20%: -$", descuento
            Escribir "Pago del cliente ", i, ": $", pagoCliente
        SiNo
            pagoCliente <- consumo
            Escribir "No tiene descuento"
            Escribir "Pago del cliente ", i, ": $", pagoCliente
        FinSi
        
        totalPagos <- totalPagos + pagoCliente
    FinPara
    
    Escribir ""
    Escribir "==============================="
    Escribir "TOTAL DE TODOS LOS PAGOS: $", totalPagos
    
FinAlgoritmo