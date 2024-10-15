Algoritmo seleccionarAlumnoAleatoriamente
	Definir alumnoAleatorio Como Entero
	Definir alumno Como Entero
	Definir num Como Entero
	
	ALUMNO = 19
	
	Escribir "Introduzca un número para elegir un alumno aleatoriamente: "
	Leer num
	
	Escribir "Listado de alumnos"
	Para i = num Hasta 19 Hacer
		Escribir "Alumno ", i
	FinPara
	
	Escribir "Seleccionando un alumno al azar..."
	alumnoAleatorio <- alumnoAzar(num, ALUMNO)
	
	Escribir "El alumno seleccionado es el número: ", alumnoAleatorio
	
FinAlgoritmo

Funcion seleccionarAlumno <- alumnoAzar(num, ALUMNO)
	// Selecciona un número aleatorio entre el número ingresado y 19
	seleccionarAlumno = Aleatorio(num, ALUMNO)
FinFuncion
