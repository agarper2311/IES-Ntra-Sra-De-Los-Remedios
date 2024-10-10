Algoritmo procedimientoNumParOImpar
    // Crea un programa que invoque un procedimiento que devuelva si el número leído es par o impar
    
    Definir num Como Entero
    
    Escribir "Introduzca un número: "
    Leer num
    
    // Llamada al procedimiento que verifica si el número es par o impar
    esPar(num)
    
FinAlgoritmo

Funcion esPar (n)
// Procedimiento que verifica si un número entero es par

Si n MOD 2 = 0 Entonces
	Escribir "El número ", n, " es par."
SiNo
	Escribir "El número ", n, " es impar."
FinSi
FinFuncion