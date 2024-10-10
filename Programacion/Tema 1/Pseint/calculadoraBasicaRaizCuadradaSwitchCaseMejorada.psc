Algoritmo calculadoraBasicaRaizCuadradaSwitchCaseMejorada
	Definir numero1 Como Real
	Definir numero2 Como Real
	Definir resultado Como Real
	Definir opcionDeOperacion Como Entero
	
	Escribir "Seleccione el tipo de operación: "
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicar"
	Escribir "4. Dividir"
	Escribir "5. Raíz cuadrada"
	Escribir "Introduzca el número de la operación a realizar: "
	Leer opcionDeOperacion
	
	Segun opcionDeOperacion hacer
		1:
			Escribir "Introduzca el primer número: "
			Leer numero1
			Escribir "Introduzca el segundo número: "
			Leer numero2
			resultado = numero1 + numero2
			
		2:
			Escribir "Introduzca el primer número: "
			Leer numero1
			Escribir "Introduzca el segundo número: "
			Leer numero2
			resultado = numero1 - numero2 
			
		3: 
			Escribir "Introduzca el primer número: "
			Leer numero1
			Escribir "Introduzca el segundo número: "
			Leer numero2
			resultado = numero1 * numero2
			
		4:
			Escribir "Introduzca el primer número: "
			Leer numero1
			Escribir "Introduzca el segundo número: "
			Leer numero2
			si numero2 == 0 Entonces
				Escribir "Error: no se puede dividir entre 0"
				
			SiNo
				resultado = numero1 / numero2
				Escribir "Y el resto de la operación es: ", numero1 MOD numero2
			FinSi
			
		5:
			Escribir "Introduzca el número del que quieres saber la raíz cuadrada: "
			Leer numero1
			resultado = RAIZ(numero1)
			
		De Otro Modo:
			Escribir "Selección no válida"
	FinSegun
	
	Escribir "El resultado es: ", resultado
FinAlgoritmo