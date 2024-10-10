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
    
    // Almacenar en memoria el primer número
    Leer num1
    
    // Mostrar por pantalla el siguiente mensaje
    Escribir "Introduzca el segundo número: "
    
    // Almacenar en memoria el segundo número
    Leer num2
    
    // Mostrar por pantalla el menú de opciones
    Escribir "Seleccione el tipo de operación"
    Escribir "Suma (+)"
    Escribir "Resta(-)"
    Escribir "Multiplicacion (*)"
    Escribir "Division (/)"
    
    // Almacenar en memoria la opción del usuario
    Leer opcionUsuario
    
    // Estructura If e if-else para determinar el resultado de la operación
    Si opcionUsuario = "+" Entonces
        Escribir "El resultado de la suma es: ", num1 + num2
        
    SiNo
        Si opcionUsuario = "-" Entonces
            Escribir "El resultado de la resta es: ", num1 - num2
            
        SiNo
            Si opcionUsuario = "*" Entonces
                Escribir "El resultado de la multiplicación es: ", num1 * num2
                
            Sino
                Si opcionUsuario = "/" Entonces
                    Si num2 = 0 Entonces
                        Escribir "Error: No se puede dividir entre 0"
                    SiNo
                        Escribir "El resultado de la división es: ", num1 / num2
						Escribir "Y el resto de la división es: ", num1 MOD num2
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
    
	// Fin del algoritmo
FinAlgoritmo
