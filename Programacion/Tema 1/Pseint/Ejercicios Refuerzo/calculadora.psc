Algoritmo calculadora
    Definir num1 Como Entero
    Definir num2 Como Entero
    Definir resultado Como Entero
    Definir option Como Entero
	
    Escribir "Menú de selección: "
    Escribir "1. Suma"
    Escribir "2. Resta"
    Escribir "3. Multiplicar"
    Escribir "4. Dividir"
    Escribir "5. Raiz Cuadrada"
    Leer option
	
    Segun option Hacer
        1:
            resultadoSuma <- realizarSuma(num1, num2)  // Llamada a la función suma
            Escribir "El resultado es: ", resultadoSuma
        2: 
            resultadoResta <- realizarResta(num1, num2)
			Escribir "El resultado es: ", resultadoResta
			
		3:
			resultadoMultiplicar <- realizarMultiplicar(num1, num2)
			Escribir "El resultado es: ", resultadoMultiplicar
			
		4: 
			resultadoDividir <- realizarDivision(num1, num2)
			Escribir "El resultado es: ", resultadoDividir
			
		5: 
			resultadoRaizCuadrada <- realizarRaizCuadrada(num1)
			Escribir "El resultado es: ", resultadoRaizCuadrada
			
			
    FinSegun
	
FinAlgoritmo

// Intento de función para almacenar la frase para introducir los números y llamarla
// en otras funciones

// Funcion introducirNumeros <- leerNumeros(num1, num2)
// 	Escribir "Introduzca el primer número y después el segundo: "
//     Leer num1
//     Leer num2
	
// 	introducirNumeros <- num1 + num2
// FinFuncion

Funcion resultadoSuma <- realizarSuma(num1, num2)  
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
    resultadoSuma <- num1 + num2 
FinFuncion


Funcion resultadoResta <- realizarResta(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoResta <- num1 - num2
FinFuncion

Funcion resultadoMultiplicar <- realizarMultiplicar(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoMultiplicar <- num1 * num2
FinFuncion

Funcion resultadoDividir <- realizarDivision(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoDividir <- num1 / num2
	Escribir "El resto de la operación es: ", num1 MOD num2
FinFuncion

Funcion resultadoRaizCuadrada <- realizarRaizCuadrada(num1)
	Escribir "Introduzca un número: "
    Leer num1
	
	resultadoRaizCuadrada <- RAIZ(num1)
FinFuncion
	