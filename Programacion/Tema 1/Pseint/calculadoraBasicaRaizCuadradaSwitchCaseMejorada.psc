Algoritmo calculadoraBasicaRaizCuadradaSwitchCaseMejorada
	Definir numero1 Como Real
	Definir numero2 Como Real
	Definir resultado Como Real
	Definir opcionDeOperacion Como Entero
	
	Escribir "Seleccione el tipo de operaci�n: "
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicar"
	Escribir "4. Dividir"
	Escribir "5. Ra�z cuadrada"
	Escribir "Introduzca el n�mero de la operaci�n a realizar: "
	Leer opcionDeOperacion
	
	Segun opcionDeOperacion hacer
		1:
			Escribir "Introduzca el primer n�mero: "
			Leer numero1
			Escribir "Introduzca el segundo n�mero: "
			Leer numero2
			resultado = numero1 + numero2
			
		2:
			Escribir "Introduzca el primer n�mero: "
			Leer numero1
			Escribir "Introduzca el segundo n�mero: "
			Leer numero2
			resultado = numero1 - numero2 
			
		3: 
			Escribir "Introduzca el primer n�mero: "
			Leer numero1
			Escribir "Introduzca el segundo n�mero: "
			Leer numero2
			resultado = numero1 * numero2
			
		4:
			Escribir "Introduzca el primer n�mero: "
			Leer numero1
			Escribir "Introduzca el segundo n�mero: "
			Leer numero2
			si numero2 == 0 Entonces
				Escribir "Error: no se puede dividir entre 0"
				
			SiNo
				resultado = numero1 / numero2
				Escribir "Y el resto de la operaci�n es: ", numero1 MOD numero2
			FinSi
			
		5:
			Escribir "Introduzca el n�mero del que quieres saber la ra�z cuadrada: "
			Leer numero1
			resultado = RAIZ(numero1)
			
		De Otro Modo:
			Escribir "Selecci�n no v�lida"
	FinSegun
	
	Escribir "El resultado es: ", resultado
FinAlgoritmo