Algoritmo sumaDeNumerosPares
	// Realizar la suma solo de los números pares del 1 al 100
	
	Definir suma Como Entero
	Definir i Como Entero
	
	suma = 0
	
	Para i = 1 Hasta 100 Con Paso 1
		Si i mod 2 = 0 Entonces  // Verifica si i es par
			suma = suma + i  // Suma i a suma si es par
		FinSi
	FinPara
	
	Escribir "La suma de los números pares del 1 al 100 es: ", suma


	
FinAlgoritmo
