Algoritmo sumaDeDivisores
    // Declarar las variables
    Definir n, i, suma Como Entero
    suma <- 0
	
    // Pedir al usuario que introduzca un número
    Escribir "Introduce un número: "
    Leer n
	
    // Bucle para encontrar los divisores de 'n'
    Para i <- 2 Hasta n-1 Hacer
        Si n MOD i = 0 Entonces
            suma <- suma + i
        FinSi
    FinPara
	
    // Mostrar la suma de los divisores
    Escribir "La suma de los divisores de ", n, " (excluyendo él mismo y la unidad) es: ", suma
FinAlgoritmo
