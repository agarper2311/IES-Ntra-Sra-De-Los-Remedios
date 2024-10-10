Algoritmo triangulo
    Definir lado1 Como Real
    Definir lado2 Como Real
    Definir lado3 Como Real
    Definir formaTriangulo Como Logico
	
    // Inicializar la variable
    formaTriangulo = Falso
	
    // Pedir al usuario las longitudes de los tres lados
    Escribir "Introduzca la longitud del primer lado: "
    Leer lado1
	
    Escribir "Introduzca la longitud del segundo lado: "
    Leer lado2
	
    Escribir "Introduzca la longitud del tercer lado: "
    Leer lado3
	
    // Verificar si los lados cumplen la condici�n de ser un tri�ngulo
    Si (lado1 + lado2 > lado3) y (lado1 + lado3 > lado2) y (lado2 + lado3 > lado1) Entonces
        formaTriangulo = Verdadero
    Sino
        Escribir "Los datos introducidos no corresponden a un tri�ngulo."
    FinSi
	
    // Si es un tri�ngulo, determinar su tipo
    Si formaTriangulo = Verdadero Entonces
        Si (lado1 = lado2) Y (lado2 = lado3) Entonces
            Escribir "Es un tri�ngulo equil�tero."
        Sino
            Si (lado1 = lado2) O (lado1 = lado3) O (lado2 = lado3) Entonces
                Escribir "Es un tri�ngulo is�sceles."
            Sino
                Escribir "Es un tri�ngulo escaleno."
            FinSi
        FinSi
    FinSi
FinAlgoritmo
