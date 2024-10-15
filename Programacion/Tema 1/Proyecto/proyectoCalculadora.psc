Algoritmo proyectoCalculadora
	Definir num Como Entero
	Definir num1 Como Entero
    Definir num2 Como Entero
    Definir resultado Como Entero
    Definir option Como Entero
	
	
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
	Escribir "|	 7. Log. Natural      8.Calc. Área Trgl   |"
	Escribir "|	 8. Calc. Área Circ.  9.Calc. Área Rctgl  |"
	Escribir "*------------------------------------------*"
	
    Leer option
	
    Segun option Hacer
        1:
            resultadoSuma <- realizarSuma(num)  // Llamada a la función suma
            Escribir "El resultado es: ", resultadoSuma
        2: 
            resultadoResta <- realizarResta(num)
			Escribir "El resultado es: ", resultadoResta
			
		3:
			resultadoMultiplicar <- realizarMultiplicar(num)
			Escribir "El resultado es: ", resultadoMultiplicar
			
		4: 
			resultadoDividir <- realizarDivision(num1, num2)
			Escribir "El resultado es: ", resultadoDividir
			
		5: 
			resultadoRaizCuadrada <- realizarRaizCuadrada(num)
			Escribir "El resultado es: ", resultadoRaizCuadrada
			
		6: 
			mcd <- calcularMCD(num1, num2)
			Escribir "El resultado es: ", mcd
			
			
		7: mcm <- calcularMCM(num1, num2)
    FinSegun
	
FinAlgoritmo

Funcion resultadoSuma <- realizarSuma(num)  
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoSuma = resultadoSuma + num
	Hasta Que num = 0
	
    
FinFuncion


Funcion resultadoResta <- realizarResta(num)
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoResta = resultadoResta - num
	Hasta Que num = 0
	
FinFuncion

// Corregir ésta función ya que da igual el número que le introduzcas, num va a almacenar el valor introducido pero el acumulador resultadoMultiplicar siempre va a valer 0

Funcion resultadoMultiplicar <- realizarMultiplicar(num)
	Repetir
		Escribir "Introduzca un número introduzca 0 para ver el resultado: "
		Leer num
		
		resultadoMultiplicar = resultadoMultiplicar * num
	Hasta Que num = 0
	
FinFuncion

Funcion resultadoDividir <- realizarDivision(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
	resultadoDividir <- num1 / num2
	Escribir "El resto de la operación es: ", num1 MOD num2
FinFuncion

Funcion resultadoRaizCuadrada <- realizarRaizCuadrada(num1)
	Escribir "Introduzca un número: "
    Leer num1
	
	resultadoRaizCuadrada <- RAIZ(num1)
FinFuncion

Funcion mcd <- calcularMCD(num1, num2)
	Escribir "Introduzca el primer número y después el segundo: "
    Leer num1
    Leer num2
	
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

Funcion mcm <- calcularMCM(num1, num2)
	
FinFuncion
	