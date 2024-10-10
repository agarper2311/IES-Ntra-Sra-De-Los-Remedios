Algoritmo holaConcatenaConEspacioFuncion
    Definir palabra1 Como Cadena
    Definir palabra2 Como Cadena
    Definir resultado Como Cadena
	Definir espacio Como Cadena
    
    Escribir "Introduzca la primera palabra: "
    Leer palabra1
    
    Escribir "Introduzca la segunda palabra: "
    Leer palabra2
    
    resultado <- concatenaEspacio(palabra1, palabra2)
    
    Escribir "Resultado concatenado: ", resultado
FinAlgoritmo

Funcion resultado <- concatenaEspacio(palabra1, palabra2)
    
    espacio <- " "
    concat <- palabra1 + espacio + palabra2
    
    resultado <- concat
	
FinFuncion
