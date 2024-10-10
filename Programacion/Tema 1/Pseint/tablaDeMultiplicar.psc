Algoritmo tablaDeMultiplicar
    Definir num Como Entero
    Definir i Como Entero
    Definir tope Como Entero
    
    tope = 10
    
    Repetir
        Escribir "Introduce un número y te mostraré la tabla de multiplicar. Introduce 0 o pulse enter para terminar: "
        Leer num
        
        si num = 0 Entonces
            Escribir "Saliendo..."
            
        SiNo
            // Bucle para calcular y mostrar la tabla de multiplicar
            Para i = 1 Hasta tope Con Paso 1 Hacer
                multiplicar = num * i
                Escribir num, " x ", i, " = ", multiplicar
            FinPara
        FinSi
        
        Escribir "Presiona Enter para salir o un numero distinto de 0 para continuar..."
        Leer num  // Lee una nueva entrada sin mostrarla
		HastaQue num = 0
		
FinAlgoritmo
