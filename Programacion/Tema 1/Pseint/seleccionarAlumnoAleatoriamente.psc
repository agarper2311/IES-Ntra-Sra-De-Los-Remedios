Algoritmo seleccionarAlumnoAleatoriamente
	Definir alumnoAleatorio Como Entero
	Definir alumno Como Entero
	Definir num Como Entero
	
	ALUMNO = 19
	
	Escribir "Introduzca un n�mero entre para elegir un alumno aleatoriamente: "
	Leer num
	
	
	
	
	
	si num > ALUMNO Entonces
		Escribir "No hay m�s de ", ALUMNO, " alumnos en clase"
		
	SiNo
		Escribir "Listado de alumnos"
		Para i = num Hasta 19 Hacer
			Escribir "Alumno ", i
		FinPara
		Escribir "Seleccionando un alumno al azar..."
		alumnoAleatorio <- alumnoAzar(num, ALUMNO)
		
		Escribir "El alumno seleccionado es el n�mero: ", alumnoAleatorio
	FinSi
	
	
	
	
	
FinAlgoritmo

Funcion seleccionarAlumno <- alumnoAzar(num, ALUMNO)
	// Selecciona un n�mero aleatorio entre el n�mero ingresado y 19
	seleccionarAlumno = Aleatorio(num, ALUMNO)
FinFuncion
