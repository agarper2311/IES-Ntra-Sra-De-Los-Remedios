Algoritmo sumaHastaPulsarCero
	
	Definir numero Como Entero 
	Definir acumulado Como Entero
	Definir resultado Como Entero
	
	Escribir "Introduzca un n�mero, introduzca 0 para terminar: "
	Leer numero
	
	resultado <- suma(numero)
	Escribir "El resultado es: ", resultado
	
FinAlgoritmo

Funcion resultado <- suma(numero)
	
	Mientras numero <> 0
		
		acumulado = acumulado + numero
		Escribir "Introduzca otro n�mero (0 para terminar): "
		Leer numero
		
	FinMientras
	
	resultado = acumulado
FinFuncion