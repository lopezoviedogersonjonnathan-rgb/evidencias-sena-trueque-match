Algoritmo Pregunta_Al_Usuario_La_Edad
	
	//Preguntale al usuario la edad
	//Si la edad es menor que 18 imprimir "Eres menor de edad"
	//Caso contrario imprimir eres mayor de edad
	Definir edad Como Entero;
	Escribir "================================";
	Escribir "Ingrese su edad:"
	Escribir "================================";
	Leer edad;
	
	Si edad < 18 Entonces
		Escribir "===============================";
		Escribir "Eres menor de edad"
		Escribir "===============================";
	SiNo
		Escribir "=============================";
		Escribir "Eres mayor de edad";
		Escribir "=============================";
	FinSi
	
FinAlgoritmo

