Algoritmo calcularFactorial
	Definir n Como Entero
	Definir factorial Como Entero
	Definir i Como Entero
	
	factorial = 1
	
	Escribir "Introduzca un n�mero para calcular su factorial: "
	leer n
	
	Escribir "La sucesi�n del factorial de ", n, " es: "
	
	Para i Desde n Hasta 1 Con Paso -1 Hacer
		Escribir i
		factorial = factorial * i
	Fin Para
	
	Escribir "El factorial de ", n, " es: ", factorial
	
FinAlgoritmo
