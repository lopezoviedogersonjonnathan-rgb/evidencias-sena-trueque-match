Algoritmo IngresoSalidaDatos
	
    definir nombre, alturaTexto, edadTexto Como Caracter;
    definir edad, altura Como real;
    
    Escribir "Por favor ingresa tu nombre";
    Leer nombre;
    Escribir "Hola ", nombre " !bienvenido!";
    
    Escribir "Ingresa tu edad (ejemplo: 39 años):";
    Leer edadTexto;
    // Quitar " años" (son 5 caracteres: espacio + a-ñ-o-s)
    edadTexto <- Subcadena(edadTexto, 0, 2);
    edad <- ConvertirANumero(edadTexto);
    
    Escribir "Ingresa tu altura (ejemplo: 1.65 m):";
    Leer alturaTexto;
    // Quitar la "m" (1 caracter)
    alturaTexto <- Subcadena(alturaTexto, 0, 4);
    altura <- ConvertirANumero(alturaTexto);
    
    Escribir "Tu edad es: ", edad, " años";
    Escribir "Tu altura es: ", altura, " metros";
FinAlgoritmo