Algoritmo maximoComunDivisor
    Definir num1 Como Entero
    Definir num2 Como Entero
    Definir mcd Como Entero
    
    Escribir "Introduzca el primer n�mero: "
    Leer num1
    Escribir "Introduzca el segundo n�mero: "
    Leer num2
    
    mcd <- calcularMCD(num1, num2)
    
    Escribir "El m�ximo com�n divisor es: ", mcd
FinAlgoritmo

Funcion mcd <- calcularMCD(num1, num2)
    Mientras num2 <> 0 Hacer
        Si num1 > num2 Entonces
            num1 <- num1 - num2
        SiNo
            num2 <- num2 - num1
        FinSi
    FinMientras
    mcd <- num1
    Escribir  mcd
FinFuncion
