Algoritmo mayorOmenor
	
	Definir primerNum Como Entero
	Definir segundoNum Como Entero
	
	Escribir "Por favor introduzca el primer número: "
	Leer primerNum
	Escribir "Por favor introduzca el segundo número: "
	Leer segundoNum
	
	si primerNum > segundoNum Entonces
		Escribir "El número " , primerNum , " es mayor que " , segundoNum
		
	SiNo
		si primerNum < segundoNum Entonces
			Escribir "El número " , segundoNum , " es mayor que " , primerNum
			
		sino 
			Escribir "Ambos números son iguales"
		FinSi
		
	FinSi
	
FinAlgoritmo
