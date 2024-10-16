Algoritmo proyectoCalculadora
	Definir num Como Entero
	Definir num1 Como Entero
    Definir num2 Como Entero
    Definir resultado Como Entero
    Definir option Como Entero
	
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
		Escribir "| 7. Log. Natural      9.Calc. Área Trgl   |"
		Escribir "| 8. Calc. Área Circ.  10.Calc. Área Rctgl |"
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
				mcm <- calcularMCM(num1, num2)
				
				
				
			8:
				resultadoCirculo <- calcularAreaCirculo(radio)
				
				
				
			9:
				resultadoTriangulo <- calcularAreaTriangulo(b,h)
				
				
				
			10: 
				resultadoRctgl <- calcularAreaRctgl(base,altura)
				
				
		FinSegun
	Hasta Que option = 0
	Escribir " Has salido del menu "
FinAlgoritmo

//Modificado por David
Funcion resultadoSuma <- realizarSuma(num)  
	//Estructura Interacctiva
	// Generacion de un While
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num

		
		resultadoSuma = resultadoSuma + num
	Hasta Que num = 0
	Escribir "El resultado es ", resultadoSuma
    

		suma = suma + num
	Hasta Que num = 0
	Escribir "El resultado es ", suma

FinFuncion

//Modificado por David
Funcion resultadoResta <- realizarResta(num)

	Escribir "Introduzca un número introduzca 0 para ver el resultado: "
	Leer num
	resultadoResta = num
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoResta = resultadoResta - (num)
	Hasta Que num = 0
	Escribir "El resultado es ", resultadoResta

	//Estructura Interacctiva
	// Generacion de un While
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		resta = resta - num
	Hasta Que num = 0
	Escribir "El resultado es ", resta

FinFuncion

Funcion resultadoMultiplicar <- realizarMultiplicar(num)

	Escribir "Introduzca un número introduzca 0 para ver el resultado: "
	Leer num
	resultadoMultiplicar = num

	//Estructura Interacctiva
	// Generacion de un While

	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoMultiplicar = resultadoMultiplicar * num
		Escribir "El resultado es ", resultadoMultiplicar
	Hasta Que num = 0
	
FinFuncion

Funcion resultadoDividir <- realizarDivision(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoDividir <- num1 / num2
	Escribir "El resto de la operación es: ", num1 MOD num2
	Escribir "El resultado es ", resultadoDividir
FinFuncion

Funcion resultadoRaizCuadrada <- realizarRaizCuadrada(num1)
	Escribir "Introduzca un número: "
    Leer num1
	
	resultadoRaizCuadrada <- RAIZ(num1)
	Escribir "El resultado es ", resultadoRaizCuadrada
FinFuncion

Funcion mcd <- calcularMCD(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	//Estructura Interactiva
	//Genera do While
    Mientras num2 <> 0 Hacer
        Si num1 > num2 Entonces
            num1 <- num1 - num2
        SiNo
            num2 <- num2 - num1
        FinSi
    FinMientras
    mcd <- num1


	Escribir "El resultado es ", mcd
FinFuncion

Funcion mcm <- calcularMCM(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
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
