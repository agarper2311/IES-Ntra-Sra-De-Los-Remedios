Algoritmo procedimientoNumParOImpar
    // Crea un programa que invoque un procedimiento que devuelva si el n�mero le�do es par o impar
    
    Definir num Como Entero
    
    Escribir "Introduzca un n�mero: "
    Leer num
    
    // Llamada al procedimiento que verifica si el n�mero es par o impar
    esPar(num)
    
FinAlgoritmo

Funcion esPar (n)
// Procedimiento que verifica si un n�mero entero es par

Si n MOD 2 = 0 Entonces
	Escribir "El n�mero ", n, " es par."
SiNo
	Escribir "El n�mero ", n, " es impar."
FinSi
FinFuncion