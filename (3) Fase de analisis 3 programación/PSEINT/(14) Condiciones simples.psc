Algoritmo Ingresa_Un_Número
	//Solicitale al usuario que ingrese un numero
	//Si el número es mayor que 100 aumentale 10%
	//Imprima en pantalla el número
	
	Definir Num Como Real;
	Escribir "Ingresa un número";
	Leer Num; 
	Si Num > 100 entonces;
		//Num <- Num + (Num * 10/100);
		Num <- Num * 110/100
	FinSi
	Escribir "El Número final es ", Num;
FinAlgoritmo
