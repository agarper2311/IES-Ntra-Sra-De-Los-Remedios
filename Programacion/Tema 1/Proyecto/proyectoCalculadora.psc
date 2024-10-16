Algoritmo proyectoCalculadora
	Definir num Como Entero
	Definir num1 Como Entero
    Definir num2 Como Entero
    Definir resultado Como Entero
    Definir option Como Entero
	
	// Variables para la sucesión de Fibonacci
	Definir a, b, c, i Como Entero
	
	//Estructura Interacctiva
	// Generacion de un While
	//Hecho por Angel
	//Modificado por David
	Repetir
		
		Escribir "Calculadora Avanzada"
		Escribir ""
		Escribir "Menú de selección: "
		Escribir "*__________________________________________*"
		Escribir "|          Operaciones Básicas             |"
		Escribir "*------------------------------------------*"
		Escribir "| 1.Suma	 2.Resta  3.Multiplicar 4.Dividir |"
		Escribir "*------------------------------------------*"
		Escribir "|         Operaciones Intermedias          |"
		Escribir "*------------------------------------------*"
		Escribir "|   5. Raiz Cuadrada	 6. MCD  7.MCM        |"
		Escribir "*------------------------------------------*"
		Escribir "|         Operaciones Avanzadas            |"
		Escribir "*------------------------------------------*"
		Escribir "| 8. Calc. Área Circ.  9.Calc. Área Trgl   |"
		Escribir "| 10.Calc. Área Rctgl 11.Suc. de Fibonnaci |"
		Escribir "*------------------------------------------*"
		Escribir "| Pon el número de la operación a realizar.|"
		Escribir "| O introduzca 0 para salilir              |"
		Escribir "*------------------------------------------*"
		
		Leer option
		
		//Estructura Selectiva
		Segun option Hacer
			1:
				resultadoSuma <- realizarSuma(num)  // Llamada a la función suma
			2: 
				resultadoResta <- realizarResta(num)
			3:
				resultadoMultiplicar <- realizarMultiplicar(num)
				
			4: 
				resultadoDividir <- realizarDivision(num1, num2)
				
			5: 
				resultadoRaizCuadrada <- realizarRaizCuadrada(num)
				
			6: 
				mcd <- calcularMCD(num1, num2)
				
				
			7: 
				mcm <- calcularMCM(num)
				
				
				
			8:
				resultadoCirculo <- calcularAreaCirculo(radio)
				
				
				
			9:
				resultadoTriangulo <- calcularAreaTriangulo(b,h)
				
				
				
			10: 
				resultadoRctgl <- calcularAreaRctgl(base,altura)
				
			11:
				resultadoFibonacci <- sucesionFibonnaci(num)
		FinSegun
	Hasta Que option = 0
	Escribir " Has salido del menu "
FinAlgoritmo


//Realizado por Ángel
Funcion resultadoSuma <- realizarSuma(num)  
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num

		
		resultadoSuma = resultadoSuma + num
	Hasta Que num = 0
	Escribir "El resultado es ", resultadoSuma

FinFuncion

//Realizado por Ángel
Funcion resultadoResta <- realizarResta(num)

	Escribir "Introduzca un número introduzca 0 para ver el resultado: "
	Leer num
	resultadoResta = num
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoResta = resultadoResta - num
	Hasta Que num = 0
	Escribir "El resultado es ", resultadoResta


FinFuncion

Funcion resultadoMultiplicar <- realizarMultiplicar(num)

	Escribir "Introduzca un número introduzca 0 para ver el resultado: "
	Leer num
	resultadoMultiplicar = num

	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		// Condición sí para que cuando el usuario introduzca 0 la función no tome ese valor y de 0 como resultado
		si num <> 0 Entonces
			resultadoMultiplicar = resultadoMultiplicar * num
		FinSi
		

	Hasta Que num = 0
	Escribir "El resultado es ", resultadoMultiplicar
	
FinFuncion

Funcion resultadoDividir <- realizarDivision(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoDividir <- num1 / num2
	Escribir "El resto de la operación es: ", num1 MOD num2
	Escribir "El resultado es ", resultadoDividir
FinFuncion


Funcion resultadoFibonnaci <- sucesionFibonnaci(num)
    Escribir "Introduce el número de términos: "
    Leer num
    
    // Verificar que el número de términos sea válido
    Si num <= 0 Entonces
        Escribir "Por favor, introduce un número mayor que 0."
    Sino
        // Inicializar 'a' con 0 y 'b' con 1 (los dos primeros términos de la serie)
        a <- 0
        b <- 1
        
        // Mostrar el primer término 'a'
        Escribir a
        
        // Si se quiere mostrar más de un término, mostrar el segundo término 'b'
        Si num > 1 Entonces
            Escribir b
        FinSi
        
        // Bucle para calcular los siguientes términos desde el 3 hasta 'num'
        Para i <- 3 Hasta num Hacer
            // Calcular el siguiente término 'c' como la suma de 'a' y 'b'
            c <- a + b
            
            // Mostrar el término calculado 'c'
            Escribir c
            
            // Actualizar 'a' y 'b' para el siguiente ciclo
            a <- b
            b <- c
        FinPara
    FinSi
Fin Funcion


Funcion resultadoRaizCuadrada <- realizarRaizCuadrada(num1)
	Escribir "Introduzca un número: "
    Leer num1
	
	resultadoRaizCuadrada <- RAIZ(num1)
	Escribir "El resultado es ", resultadoRaizCuadrada
FinFuncion

Funcion mcd <- calcularMCD(num1, num2)
    // Calculamos el MCD usando el algoritmo de Euclides
    Mientras num2 <> 0 Hacer
        Si num1 > num2 Entonces
            num1 <- num1 - num2
        SiNo
            num2 <- num2 - num1
        FinSi
    FinMientras
	
    mcd <- num1  // El MCD es el valor de num1 al final del proceso
FinFuncion



Funcion mcm <- calcularMCM(num)
    Escribir "Introduzca el primer número (0 para salir): "
    Leer num
    Si num = 0 Entonces
        Escribir "No se puede calcular el MCM de 0. Saliendo."
        mcm <- 0
        // Termina la función sin hacer más cálculos
    Sino
        mcm <- num  // Inicializamos el acumulador con el primer número
		
        Repetir
            Escribir "Introduzca otro número (0 para ver el resultado y salir): "
            Leer num
            
            Si num <> 0 Entonces
                // Calculamos el MCM usando la relación MCM(a, b) = (a * b) / MCD(a, b)
                mcd <- calcularMCD(mcm, num)  // Llamamos a la función para calcular el MCD
                mcm <- (mcm * num) / mcd  // Actualizamos el MCM acumulado
            FinSi
            
        Hasta Que num = 0  // El ciclo se repite hasta que se introduzca 0
        
        Escribir "El MCM de los números es: ", mcm  // Mostramos el resultado final
    FinSi
FinFuncion



//Hecho por David
Funcion resultadoCirculo <- calcularAreaCirculo(radio)
	Escribir "Radio del circulo"
	Leer radio
	//Operacion para calcular el area.
	area = PI * radio^2
	Escribir "El area del circulo es: ", area
FinFuncion

//Hecho por David
Funcion resultadoTriangulo <- calcularAreaTriangulo(base,altura)
	Escribir "Introduce la base del triangulo: "
	Leer base
	Escribir "Introduce la altura del triangulo: "
	Leer altura
	//Operacion para calcular area Triangulo
	area = (base * altura) / 2
	Escribir "El area del triangulo es: ", area
FinFuncion

//Hecho por David
Funcion resultadoRctgl <- calcularAreaRctgl(base,altura)
	Escribir "Introduce la base del Rectangulo: "
	Leer base
	Escribir "Introduce la altura del Rectangulo: "
	Leer altura
	area = base*altura
	Escribir "El area del rectangulo es: ", area 
FinFuncion


// Realizado por Jaime Ramírez

Funcion logn <- resultadoLogn ( num1 )
	Repetir
		Escribir "Introduzca un numero"
		Leer num1
		
		logn <- ln(num1)
		Escribir "El resultado es " logn
	Hasta Que option <- 0
Fin Funcion

Funcion tangente <- resultadoTangente ( num1 )
	Repetir
		Escribir "Introduzca un numero"
		Leer num1
		tangente <- tan(num1)
		Escribir "El resultado es " tangente
	Hasta Que option <- 0
	
	
Fin Funcion

Funcion coseno <- resultadoCoseno ( num1 )
	Repetir
		Escribir "Introduzca un numero"
		Leer num1
		coseno <- cos(num1)
		Escribir "El resultado es " coseno
	Hasta Que option <- 0
	
Fin Funcion

Funcion potencia <- resultadoPotencia (num1, num2 )
	Repetir
		Escribir "Introduzca dos números"
		Leer num1, num2
		potencia <- num1 ^ num2
		Escribir "El resultado es ", potencia
	Hasta Que option <- 0
	potencia <- num1 ^ num2
	Escribir "El resultado es ", potencia
Fin Funcion

Funcion seno <- resultadoSeno ( num1 )
	Repetir
		Escribir "Introduzca un numero"
		Leer num1
		seno <- sen(num1)
		Escribir "El seno es " seno
	Hasta Que option <- 0
	
Fin Funcion