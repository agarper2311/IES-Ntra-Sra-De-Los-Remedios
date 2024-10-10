Algoritmo panelLogin
	
	Definir usuarioPred Como Cadena
	Definir contraseñaPred Como Cadena
	Definir usuario como Cadena
	Definir contraseña como Cadena
	
	usuarioPred = "usuario"
	contraseñaPred = "1234"
	
	
    Escribir "Introduzca su nombre de usuario: "
	Leer usuario
	Escribir "Introduzca su contraseña: "
	Leer contraseña
	

	si usuario = usuarioPred y contraseña = contraseñaPred  Entonces
		Escribir "Bienvenido " + usuario + " !"
		
	SiNo
		Escribir "Usuario y/o contraseñas incorrectos"
	FinSi
FinAlgoritmo
