Algoritmo diagramaAPseudocodigo
	i <- 10
	Escribir 'Adivine el número'
	Leer n
	Mientras s<>n Y i>1 Hacer
		Si s>n Entonces
			Escribir 'Muy bajo'
		SiNo
			Escribir 'Muy alto'
		FinSi
		i <- i -1
		Leer n
	FinMientras
	Si s=n Entonces
		Escribir 'Exacto! lo has conseguido en ', 11-i, ' Intentos'
	SiNo
		Escribir 'xxxxxxxxx', s
	FinSi
FinAlgoritmo
