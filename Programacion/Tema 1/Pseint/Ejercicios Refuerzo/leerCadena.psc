Algoritmo leerCadena
	
	Definir palabraUsuario Como Cadena
	Definir longitudPalabra Como Entero
	
	Escribir "Introduzca una cadena con más de 3 letras: "
	Leer palabraUsuario
	
	longitudPalabra <- Longitud(palabraUsuario)
	
	si Longitud(palabraUsuario) > 3 Entonces
		Escribir "La palabra ", palabraUsuario, " contiene más de 3 letras"
		Escribir "La palabra introducida contiene: ", longitudPalabra, " letras"
		
	SiNo
		Escribir "La palabra ", palabraUsuario, " contiene menos de 3 letras"
		Escribir "La palabra introducida contiene: ", longitudPalabra, " letras"
	FinSi
	
FinAlgoritmo
