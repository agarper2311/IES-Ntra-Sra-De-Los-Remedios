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
	
    // Verificar si los lados cumplen la condición de ser un triángulo
    Si (lado1 + lado2 > lado3) y (lado1 + lado3 > lado2) y (lado2 + lado3 > lado1) Entonces
        formaTriangulo = Verdadero
    Sino
        Escribir "Los datos introducidos no corresponden a un triángulo."
    FinSi
	
    // Si es un triángulo, determinar su tipo
    Si formaTriangulo = Verdadero Entonces
        Si (lado1 = lado2) Y (lado2 = lado3) Entonces
            Escribir "Es un triángulo equilátero."
        Sino
            Si (lado1 = lado2) O (lado1 = lado3) O (lado2 = lado3) Entonces
                Escribir "Es un triángulo isósceles."
            Sino
                Escribir "Es un triángulo escaleno."
            FinSi
        FinSi
    FinSi
FinAlgoritmo
