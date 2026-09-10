Algoritmo Calculadora
	Definir A , B Como Entero;
	Definir resultado Como Real
	Definir operador Como Caracter
	
	Escribir "Por favor ingrese un número";
	Leer a;
	
	Escribir "Por favor ingrese un operador"
	Leer  operador
	
	Escribir " Por favor ingrese el segundo número"
	Leer b;
	
	Segun operador Hacer
		'+': resultado <- a + b;
			Escribir a,' ',operador,' ',b,' = ', resultado;
		'-': resultado <- a - b;
			Escribir a,' ',operador,' ',b,' = ', resultado;
		'*': resultado <- a * b;
			Escribir a,' ',operador,' ',b,' = ', resultado;
		'/': Si b = 0 Entonces 
				Escribir "No se puede dividir por cero";
			SiNo
			 resultado <- a / b;
				Escribir a,' ',operador,' ',b,' = ', resultado;
			FinSi
		'/': resultado <- a / b;
			Escribir a,' ',operador,' ',b,' = ', resultado;
		'%': resultado <- a % b;
			Escribir a,' ',operador,' ',b,' = ', resultado;
		De Otro Modo:
			Escribir  "El operador ingresado no es valido"
	FinSegun
	
FinAlgoritmo
