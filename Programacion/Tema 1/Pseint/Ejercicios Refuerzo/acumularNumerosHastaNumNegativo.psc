Algoritmo acumularNumerosHastaNumNegativo
	Definir num Como Entero
	Definir contador Como Entero
	
	Mientras num >= 0 Hacer
		Escribir "Introduzca un número mayor o igual a 0"
		Escribir "Si introduce un número negativo, se detendrá el programa: "
		Leer num
		
		contador = contador + num
		Escribir "El resultado es: ", contador
	FinMientras
	
FinAlgoritmo
