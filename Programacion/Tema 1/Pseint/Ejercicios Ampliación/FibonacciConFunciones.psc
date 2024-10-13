// Algoritmo principal que calcula los primeros N t?rminos de la serie de Fibonacci
Algoritmo FibonacciConFunciones
    // Declarar la variable 'n' como entero
    Definir n Como Entero
	
    // Solicitar al usuario que introduzca el n?mero de t?rminos
    Escribir "Introduce el n?mero de t?rminos: "
	
    // Leer el n?mero introducido por el usuario y almacenarlo en 'n'
    Leer n
	
    // Mostrar el encabezado de la serie de Fibonacci
    Escribir "Serie de Fibonacci: "
	
    // Llamar a la funci?n Fibonacci con el n?mero de t?rminos 'n'
    Fibonacci(n)
	
FinAlgoritmo

// Funci?n que calcula y muestra los t?rminos de la serie de Fibonacci
Funcion Fibonacci(n)
	
    // Declarar variables a, b, c, i como enteros
    Definir a, b, c, i Como Entero
	
    // Inicializar 'a' con 0 y 'b' con 1 (los dos primeros t?rminos de la serie)
    a <- 0
    b <- 1
	
    // Mostrar el primer t?rmino 'a'
    Escribir a
	
    // Mostrar el segundo t?rmino 'b'
    Escribir b
	
    // Bucle para calcular los siguientes t?rminos desde el 3 hasta 'n'
    Para i <- 3 Hasta n Hacer
		
        // Calcular el siguiente t?rmino 'c' como la suma de 'a' y 'b'
        c <- a + b
		
        // Mostrar el t?rmino calculado 'c'
        Escribir c
		
        // Actualizar 'a' para el siguiente ciclo, asign?ndole el valor de 'b'
        a <- b
		
        // Actualizar 'b' para el siguiente ciclo, asign?ndole el valor de 'c'
        b <- c
    FinPara
FinFuncion

// Realizado con la ayuda de chatGPT ya que no entiendo bien la sucesi?n de Fibonacci