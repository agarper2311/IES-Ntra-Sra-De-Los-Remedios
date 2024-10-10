Algoritmo calculadoraBasicaRaizCuadradaSwitchCase
	Definir num1 Como Real
	Definir num2 Como Real
	Definir resultado Como Real
	Definir opcion Como Entero
	Definir opcion2 Como Entero
	
	Escribir "Introduzca el primer número: "
	Leer num1
	
	Escribir "Introduzca el segundo número: "
	Leer num2
	
	Escribir "Seleccione el tipo de operación: "
	Escribir "1. Suma"
	Escribir "2. Resta"
	Escribir "3. Multiplicar"
	Escribir "4. Dividir"
	Escribir "5. Raiz cuadrada"
	Escribir "Introduzca el número de la operación a realizar: "
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
				Escribir "Y el resto de la operación es: ", num1 MOD num2
			FinSi
			
		5:
			Escribir "De que número quieres saber la raiz cuadrada: "
			Escribir "Del Primer número que introduciste o del segundo, marca con 1 o 2."
			Leer opcion2
			
			Si opcion2 = 1 Entonces
				resultado = RAIZ(num1)
				
			SiNo
				si opcion2 = 2 Entonces
					resultado = RAIZ(num2)
				FinSi
			FinSi
			
		De Otro Modo:
			Escribir "Selección no válida"
	FinSegun
	
	
	Escribir "El resultado es: ", resultado
FinAlgoritmo