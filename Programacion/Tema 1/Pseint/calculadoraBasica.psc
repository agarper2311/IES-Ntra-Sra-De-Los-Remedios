// Inicio del algoritmo
Algoritmo calculadoraBasica
	
    // Definir variables
    Definir num1 Como Real
    Definir num2 Como Real
    Definir opcionUsuario Como Caracter
    Definir operacionSuma Como Real
    Definir operacionResta Como Real
    Definir operacionMultiplicar Como Real
    Definir operacionDivision Como Real
	
    // Mostrar por pantalla el siguiente mensaje
    Escribir "Introduzca el primer numero: "
    
    // Almacenar en memoria el primer n�mero
    Leer num1
    
    // Mostrar por pantalla el siguiente mensaje
    Escribir "Introduzca el segundo n�mero: "
    
    // Almacenar en memoria el segundo n�mero
    Leer num2
    
    // Mostrar por pantalla el men� de opciones
    Escribir "Seleccione el tipo de operaci�n"
    Escribir "Suma (+)"
    Escribir "Resta(-)"
    Escribir "Multiplicacion (*)"
    Escribir "Division (/)"
    
    // Almacenar en memoria la opci�n del usuario
    Leer opcionUsuario
    
    // Estructura If e if-else para determinar el resultado de la operaci�n
    Si opcionUsuario = "+" Entonces
        Escribir "El resultado de la suma es: ", num1 + num2
        
    SiNo
        Si opcionUsuario = "-" Entonces
            Escribir "El resultado de la resta es: ", num1 - num2
            
        SiNo
            Si opcionUsuario = "*" Entonces
                Escribir "El resultado de la multiplicaci�n es: ", num1 * num2
                
            Sino
                Si opcionUsuario = "/" Entonces
                    Si num2 = 0 Entonces
                        Escribir "Error: No se puede dividir entre 0"
                    SiNo
                        Escribir "El resultado de la divisi�n es: ", num1 / num2
						Escribir "Y el resto de la divisi�n es: ", num1 MOD num2
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
    
	// Fin del algoritmo
FinAlgoritmo
