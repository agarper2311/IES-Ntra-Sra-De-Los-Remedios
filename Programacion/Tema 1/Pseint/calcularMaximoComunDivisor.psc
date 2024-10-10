Algoritmo calcularMaximoComunDivisorConDivisores
    // Calcula el m�ximo com�n divisor de 2 n�meros dados
	
    Definir num1 Como Entero
    Definir num2 Como Entero
    Definir temp Como Entero
    Definir i Como Entero
    
    Escribir "Introduzca el primer n�mero: "
    Leer num1
    
    Escribir "Introduzca el segundo n�mero: "
    Leer num2
    
    // Mostrar divisores de num1
    Escribir "Divisores de ", num1, ": "
    Para i = 1 Hasta num1 Hacer
        Si num1 MOD i = 0 Entonces
            Escribir i
        FinSi
    FinPara
    
    // Mostrar divisores de num2
    Escribir "Divisores de ", num2, ": "
    Para i = 1 Hasta num2 Hacer
        Si num2 MOD i = 0 Entonces
            Escribir i
        FinSi
    FinPara
    
    // Usamos el algoritmo de Euclides para calcular el MCD
    Mientras num2 <> 0 Hacer
        temp = num2
        num2 = num1 MOD num2
        num1 = temp
    FinMientras
    
    Escribir "El m�ximo com�n divisor es: ", num1
	
FinAlgoritmo
