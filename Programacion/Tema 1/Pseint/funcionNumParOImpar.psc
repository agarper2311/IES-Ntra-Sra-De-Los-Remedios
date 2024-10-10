Algoritmo funcionNumParOImpar
    // Crea un programa que invoque una función que devuelva si el número leído es par o impar
    
    Definir num Como Entero
    Definir tipoNumero Como Logico
    
    Escribir "Introduzca un número: "
    Leer num
    
    // Llamada a la función que verifica si el número es par o impar
    tipoNumero <- esPar(num)
    
    Si tipoNumero = Verdadero Entonces
        Escribir "El número ", num, " es par."
    SiNo
        Escribir "El número ", num, " es impar."
    FinSi
    
FinAlgoritmo

Funcion tipoNumero <- esPar (n)
    // Función que determina si un número entero es par
    Si n MOD 2 = 0 Entonces
		tipoNumero = Verdadero
    SiNo
        tipoNumero = Falso
    FinSi
FinFuncion