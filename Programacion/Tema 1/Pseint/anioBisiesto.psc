Algoritmo anioBisiesto
    // Definir variables
    Definir entradaAnio Como Entero
    
    // Solicitar al usuario el a�o
    Escribir "Introduzca el a�o para averiguar si es bisiesto o no: "
    Leer entradaAnio
    
    // Verificar si el a�o es bisiesto
    Si (entradaAnio MOD 4 = 0  y entradaAnio MOD 100 <> 0) o (entradaAnio MOD 400 = 0) Entonces
            Escribir "El a�o es bisiesto"
        SiNo
            Escribir "El a�o no es bisiesto"
        FinSi
    
	
FinAlgoritmo
