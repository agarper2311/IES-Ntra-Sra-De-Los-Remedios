Algoritmo sumaDeNumerosParesEImpares
    Definir num Como Entero
    Definir sumaPar Como Entero
    Definir sumaImpar Como Entero
	
	sumaPar = 0
	sumaImpar = 0
	
    Escribir "Bienvenido a la suma de números"
    Escribir "Si introduce un número negativo el programa finalizará"
	
    Mientras num >= 0 Hacer
        Escribir "Introduzca un número: "
        Leer num
		
        Si num >= 0 Entonces
            Si num MOD 2 = 0 Entonces
                sumaPar <- resultadoSumaPar(sumaPar, num)
            SiNo
                sumaImpar <- resultadoSumaImPar(sumaImpar, num)
            FinSi
        FinSi
    FinMientras
	
    Escribir "La suma de los números pares introducidos es de: ", sumaPar
    Escribir "La suma de los números impares introducidos es de: ", sumaImpar
FinAlgoritmo

Funcion sumaPar <- resultadoSumaPar(sumaPar, num)
    sumaPar <- sumaPar + num
FinFuncion

Funcion sumaImpar <- resultadoSumaImPar(sumaImpar, num)
    sumaImpar <- sumaImpar + num
FinFuncion
