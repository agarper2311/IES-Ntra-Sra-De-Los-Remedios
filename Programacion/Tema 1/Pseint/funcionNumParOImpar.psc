Algoritmo funcionNumParOImpar
    // Crea un programa que invoque una funci�n que devuelva si el n�mero le�do es par o impar
    
    Definir num Como Entero
    Definir tipoNumero Como Logico
    
    Escribir "Introduzca un n�mero: "
    Leer num
    
    // Llamada a la funci�n que verifica si el n�mero es par o impar
    tipoNumero <- esPar(num)
    
    Si tipoNumero = Verdadero Entonces
        Escribir "El n�mero ", num, " es par."
    SiNo
        Escribir "El n�mero ", num, " es impar."
    FinSi
    
FinAlgoritmo

Funcion tipoNumero <- esPar (n)
    // Funci�n que determina si un n�mero entero es par
    Si n MOD 2 = 0 Entonces
		tipoNumero = Verdadero
    SiNo
        tipoNumero = Falso
    FinSi
FinFuncion