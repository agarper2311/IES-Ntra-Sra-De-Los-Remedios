// Inicio del algoritmo
Algoritmo parOimpar
	// Definir variables
	Definir num1 Como Entero
	Definir resultado Como Entero
	
	// Mostrar por pantalla el siguiente mensaje
	Escribir "Introduzca el n�mero: "
	
	// Almacenar en memoria el dato introducido
	Leer num1
	
	// Inicializar variable resultado
	resultado = num1 MOD 2
	
	// Estructura if if-else para determinar el resultado
	si resultado = 0 Entonces
		Escribir "El n�mero es par"
		
	SiNo
		si resultado <> 0 Entonces
			Escribir "El n�mero es impar"
		FinSi
	FinSi
	
	
FinAlgoritmo
