Algoritmo sin_titulo
	Definir a, b Como Real;
	Escribir "Ingrese el primer número";
	Leer a;
	
	Escribir "Ingrese el segundo número";
	leer b;
	
	Escribir "El resultado de sumar ",a," con ",b," es",(a+b);
	Escribir "El resultado de restar ",a," con ",b," es",(a-b);
	Escribir "El resultado de multiplicar ",a," con ",b," es",(a*b);
	Escribir "El resultado de dividir ",a," con ",b," es",(a/b);
	Escribir "El resultado de DIVIDIR ",a," con ",b," es",(a%b);//ES EL OPERADOR ALGEBRAICO MOD = RESIDUO
	
FinAlgoritmo
//Orden en las operaciones aritmeticas,
//se resuelve primero multiplicación  y divición; luego suma y resta
//ejemplo:
//4+5*3-6/2+5*0
//4+(5*3)-(6/2)+(5*0)
//4+15-3+0=22