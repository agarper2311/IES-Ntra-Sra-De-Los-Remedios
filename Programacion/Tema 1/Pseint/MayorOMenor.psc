Algoritmo mayorOmenor
	
	Definir primerNum Como Entero
	Definir segundoNum Como Entero
	
	Escribir "Por favor introduzca el primer n�mero: "
	Leer primerNum
	Escribir "Por favor introduzca el segundo n�mero: "
	Leer segundoNum
	
	si primerNum > segundoNum Entonces
		Escribir "El n�mero " , primerNum , " es mayor que " , segundoNum
		
	SiNo
		si primerNum < segundoNum Entonces
			Escribir "El n�mero " , segundoNum , " es mayor que " , primerNum
			
		sino 
			Escribir "Ambos n�meros son iguales"
		FinSi
		
	FinSi
	
FinAlgoritmo
