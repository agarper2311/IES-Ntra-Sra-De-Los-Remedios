Algoritmo panelLogin
	
	Definir usuarioPred Como Cadena
	Definir contraseņaPred Como Cadena
	Definir usuario como Cadena
	Definir contraseņa como Cadena
	
	usuarioPred = "usuario"
	contraseņaPred = "1234"
	
	
    Escribir "Introduzca su nombre de usuario: "
	Leer usuario
	Escribir "Introduzca su contraseņa: "
	Leer contraseņa
	

	si usuario = usuarioPred y contraseņa = contraseņaPred  Entonces
		Escribir "Bienvenido " + usuario + " !"
		
	SiNo
		Escribir "Usuario y/o contraseņas incorrectos"
	FinSi
FinAlgoritmo
