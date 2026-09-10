Algoritmo Proceso_calcularEdad
Definir añoN, mesN, diaN, añoAct, mesAct, diaAct, edad Como Entero

Escribir "Ingresa año de nacimiento:"
Leer añoN
Escribir "Ingresa mes de nacimiento:"
Leer mesN
Escribir "Ingresa día de nacimiento:"
Leer diaN

Escribir "Ingresa año actual:"
Leer añoAct
Escribir "Ingresa mes actual:"
Leer mesAct
Escribir "Ingresa día actual:"
Leer diaAct

edad <- añoAct - añoN

Si (mesAct < mesN) O ((mesAct = mesN) Y (diaAct < diaN)) Entonces
	edad <- edad - 1
FinSi

Escribir "Tu edad es:", edad
FinProceso
