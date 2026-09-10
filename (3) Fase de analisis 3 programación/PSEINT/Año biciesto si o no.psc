Algoritmo AÑO_BICIESTO
	DEFINIR año Como Entero 
		Escribir "Ingrese el año:"
		Leer año;
		
		Si ((año mod 4 = 0) y (año mod 100 <> 0)) o (año mod 400 = 0) Entonces
			Escribir "El año es bisiesto";
		Sino
			Escribir "El año no es bisiesto"
		FinSi
FinProceso
