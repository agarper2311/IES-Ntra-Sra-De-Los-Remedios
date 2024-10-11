// Algoritmo principal que calcula los primeros N términos de la serie de Fibonacci
Algoritmo FibonacciConFunciones
    // Declarar la variable 'n' como entero
    Definir n Como Entero
	
    // Solicitar al usuario que introduzca el número de términos
    Escribir "Introduce el número de términos: "
	
    // Leer el número introducido por el usuario y almacenarlo en 'n'
    Leer n
	
    // Mostrar el encabezado de la serie de Fibonacci
    Escribir "Serie de Fibonacci: "
	
    // Llamar a la función Fibonacci con el número de términos 'n'
    Fibonacci(n)
	
FinAlgoritmo

// Función que calcula y muestra los términos de la serie de Fibonacci
Funcion Fibonacci(n)
	
    // Declarar variables a, b, c, i como enteros
    Definir a, b, c, i Como Entero
	
    // Inicializar 'a' con 0 y 'b' con 1 (los dos primeros términos de la serie)
    a <- 0
    b <- 1
	
    // Mostrar el primer término 'a'
    Escribir a
	
    // Mostrar el segundo término 'b'
    Escribir b
	
    // Bucle para calcular los siguientes términos desde el 3 hasta 'n'
    Para i <- 3 Hasta n Hacer
		
        // Calcular el siguiente término 'c' como la suma de 'a' y 'b'
        c <- a + b
		
        // Mostrar el término calculado 'c'
        Escribir c
		
        // Actualizar 'a' para el siguiente ciclo, asignándole el valor de 'b'
        a <- b
		
        // Actualizar 'b' para el siguiente ciclo, asignándole el valor de 'c'
        b <- c
    FinPara
FinFuncion

// Realizado con la ayuda de chatGPT ya que no entiendo bien la sucesión de Fibonacci