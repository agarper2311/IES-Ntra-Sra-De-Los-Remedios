Algoritmo calificacion
    Definir nota Como Real
	
    Escribir "Introduce la nota obtenida (0-10): "
    Leer nota
	
    Si nota >= 9 Y nota <= 10 Entonces
        Escribir "Calificaci�n: Sobresaliente"
    Sino
        Si nota >= 7 Y nota < 9 Entonces
            Escribir "Calificaci�n: Notable"
        Sino
            Si nota >= 6 Y nota < 7 Entonces
                Escribir "Calificaci�n: Bien"
            Sino
                Si nota >= 5 Y nota < 6 Entonces
                    Escribir "Calificaci�n: Suficiente"
                Sino
                    Si nota >= 0 Y nota < 5 Entonces
                        Escribir "Calificaci�n: Insuficiente"
                    Sino
                        Escribir "Nota no v�lida. Debe estar entre 0 y 10."
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinAlgoritmo
