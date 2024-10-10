Algoritmo calculadoraBasicaRaizCuadradaSwitchCase
	Definir num1 Como Real
	Definir num2 Como Real
	Definir resultado Como Real
	Definir opcion Como Entero
	Definir opcion2 Como Entero
	
	Escribir "Introduzca el primer n�mero: "
	Leer num1
	
	Escribir "Introduzca el segundo n�mero: "
	Leer num2
	
	Escribir "Seleccione el tipo de operaci�n: "
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicar"
	Escribir "4. Dividir"
	Escribir "5. Raiz cuadrada"
	Escribir "Introduzca el n�mero de la operaci�n a realizar: "
	Leer opcion
	
	Segun opcion hacer
		1:
			resultado = num1 + num2
			
		2:
			resultado = num1 - num2 
			
		3: 
			resultado = num1 * num2
			
		4:
			si num2 == 0 Entonces
				Escribir "Error: no se puede dividir entre 0"
				
			SiNo
				resultado = num1 / num2
				Escribir "Y el resto de la operaci�n es: ", num1 MOD num2
			FinSi
			
		5:
			Escribir "De que n�mero quieres saber la raiz cuadrada: "
			Escribir "Del Primer n�mero que introduciste o del segundo, marca con 1 o 2."
			Leer opcion2
			
			Si opcion2 = 1 Entonces
				resultado = RAIZ(num1)
				
			SiNo
				si opcion2 = 2 Entonces
					resultado = RAIZ(num2)
				FinSi
			FinSi
			
		De Otro Modo:
			Escribir "Selecci�n no v�lida"
	FinSegun
	
	
	Escribir "El resultado es: ", resultado
FinAlgoritmo