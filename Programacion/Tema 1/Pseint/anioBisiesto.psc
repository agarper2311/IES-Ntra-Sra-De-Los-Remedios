Algoritmo anioBisiesto
    // Definir variables
    Definir entradaAnio Como Entero
    
    // Solicitar al usuario el año
    Escribir "Introduzca el año para averiguar si es bisiesto o no: "
    Leer entradaAnio
    
    // Verificar si el año es bisiesto
    Si (entradaAnio MOD 4 = 0  y entradaAnio MOD 100 <> 0) o (entradaAnio MOD 400 = 0) Entonces
            Escribir "El año es bisiesto"
        SiNo
            Escribir "El año no es bisiesto"
        FinSi
    
	
FinAlgoritmo
