//Hacer un programa que sume 5 precios de camisas (en dólares) y que luego muestre el total de la 
//venta en pesos.  
Algoritmo SumaPreciosCamisas
    Definir precioDolares, sumaDolares, totalPesos Como Real
    Definir tasaCambio Como Real
    Definir i Como Entero
    
    sumaDolares <- 0
    tasaCambio <- 4200  // 1 dólar = 4200 pesos colombianos (puedes ajustarlo)
    
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir Sin Saltar "Ingrese el precio de la camisa ", i, " (en dólares): $"
        Leer precioDolares
        sumaDolares <- sumaDolares + precioDolares
    FinPara
    
    totalPesos <- sumaDolares * tasaCambio
    
    Escribir ""
    Escribir "Total en dólares: $", sumaDolares
    Escribir "Total en pesos: $", totalPesos
    
FinAlgoritmo
