Algoritmo panelLogin
	
	Definir usuarioPred Como Cadena
	Definir contrase�aPred Como Cadena
	Definir usuario como Cadena
	Definir contrase�a como Cadena
	
	usuarioPred = "usuario"
	contrase�aPred = "1234"
	
	
    Escribir "Introduzca su nombre de usuario: "
	Leer usuario
	Escribir "Introduzca su contrase�a: "
	Leer contrase�a
	

	si usuario = usuarioPred y contrase�a = contrase�aPred  Entonces
		Escribir "Bienvenido " + usuario + " !"
		
	SiNo
		Escribir "Usuario y/o contrase�as incorrectos"
	FinSi
FinAlgoritmo
