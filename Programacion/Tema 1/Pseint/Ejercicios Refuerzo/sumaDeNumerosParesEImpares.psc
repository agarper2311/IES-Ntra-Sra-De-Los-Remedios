Algoritmo sumaDeNumerosParesEImpares
    Definir num Como Entero
    Definir sumaPar Como Entero
    Definir sumaImpar Como Entero
	
	sumaPar = 0
	sumaImpar = 0
	
    Escribir "Bienvenido a la suma de n�meros"
    Escribir "Si introduce un n�mero negativo el programa finalizar�"
	
    Mientras num >= 0 Hacer
        Escribir "Introduzca un n�mero: "
        Leer num
		
        Si num >= 0 Entonces
            Si num MOD 2 = 0 Entonces
                sumaPar <- resultadoSumaPar(sumaPar, num)
            SiNo
                sumaImpar <- resultadoSumaImPar(sumaImpar, num)
            FinSi
        FinSi
    FinMientras
	
    Escribir "La suma de los n�meros pares introducidos es de: ", sumaPar
    Escribir "La suma de los n�meros impares introducidos es de: ", sumaImpar
FinAlgoritmo

Funcion sumaPar <- resultadoSumaPar(sumaPar, num)
    sumaPar <- sumaPar + num
FinFuncion

Funcion sumaImpar <- resultadoSumaImPar(sumaImpar, num)
    sumaImpar <- sumaImpar + num
FinFuncion
