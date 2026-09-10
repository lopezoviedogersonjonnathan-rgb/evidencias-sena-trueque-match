Algoritmo IngresoSalidaDatos
	
    definir nombre, alturaTexto, edadTexto Como Caracter;
    definir edad, altura Como real;
    
    Escribir "Por favor ingresa tu nombre";
    Leer nombre;
    Escribir "Hola ", nombre " !bienvenido!";
    
    Escribir "Ingresa tu edad (ejemplo: 39 años):";
    Leer edadTexto;
    // Quitar " años" (son 5 caracteres: espacio + a-ñ-o-s)
    edadTexto <- Subcadena(edadTexto, 0, Longitud(edadTexto)-5);
    edad <- ConvertirANumero(edadTexto);
    
    Escribir "Ingresa tu altura (ejemplo: 1.65m):";
    Leer alturaTexto;
    // Quitar la "m" (1 caracter)
    alturaTexto <- Subcadena(alturaTexto, 0, Longitud(alturaTexto)-2);
    altura <- ConvertirANumero(alturaTexto);
    
    Escribir "Tu edad es: ", edad, " años"," y";
    Escribir "Tu altura es: ", altura, " metros";
FinAlgoritmo

//NOTA: HAY DOS FORMAS PARA APLICAR SUBCADENA:

//1* SUBCADENA(VARIABLETEXTO,POSICIÓN INICIAL, POSICIÓN FINAL)
//Escribir "Ingresa tu edad (ejemplo: 39 años):";
//Leer edadTexto;
// Quitar " años" (son 5 caracteres: espacio + a-ñ-o-s)
//edadTexto <- Subcadena(edadTexto, 0, 2);
//edad <- ConvertirANumero(edadTexto);

//1* SUBCADENA(VARIABLETEXTO,POSICIÓN INICIAL, LOGITUD(VARIABLETEXTO)-UN NÚMERO QUE AL RESTAR ME DE LA POSICIÓN) o tambien
//   SUBCADENA(VARIABLETEXTO,POSICIÓN INICIAL, LOGITUD(VARIABLETEXTO)-los caracteres a quitar + 1)
//Escribir "Ingresa tu edad (ejemplo: 39 años):";
//Leer edadTexto;
// Quitar " años" (son 5 caracteres: espacio + a-ñ-o-s)
//edadTexto <- Subcadena(edadTexto, 0,Longitud(edadTexto)-5)
//edad <- ConvertirANumero(edadTexto);


//Cuando es al contrario para número utilizamos:

//¿Cómo funciona con números?
//Con números usas OPERACIONES MATEMÁTICAS para manipularlos.
//EJEMPLOS:
//Ejemplo 1: Quitar el último dígito
//Si tienes el número 1234 y quieres 123:
//numero <- 1234;
//numero <- trunc(numero / 10);  // Resultado: 123
//¿Qué hace?

//1234 / 10 = 123.4
//trunc() = Corta los decimales, deja solo 123


//Ejemplo 2: Obtener el último dígito
//Si tienes 1234 y quieres solo el 4
//numero <- 1234;
//ultimoDigito <- numero MOD 10;  // Resultado: 4
//¿Qué hace?

//MOD = Módulo (el residuo de dividir)
//1234 MOD 10 = 4 (el residuo)


//Ejemplo 3: Obtener los primeros dígitos
//Si tienes 1234 y quieres 12:
//numero <- 1234;
//numero <- trunc(numero / 100);  // Resultado: 12

//?? PERO... SI NECESITAS SUBCADENA EN NÚMEROS:
//Conviertes el número a TEXTO primero:
//numero <- 1234;
//textoNumero <- ConvertirATexto(numero);  // "1234"
// Ahora sí puedes usar Subcadena
//resultado <- Subcadena(textoNumero, 0, 1);  // "12"
// Si lo necesitas de vuelta como número
//numeroFinal <- ConvertirANumero(resultado);  // 12

//Tipo             Herramienta          Ejemplo
//TEXTO            Subcadena()          Quitar "m" de "1.65m"
//NÚMERO           Matemáticas          (/, MOD, trunc)Quitar último dígito de 1234
//NÚMERO-TEXTO     ConvertirATexto()    1234 ? "1234"
//TEXTO-NÚMERO     ConvertirANumero()   "1234" ? 1234
