Algoritmo calificacion
    Definir nota Como Real
	
    Escribir "Introduce la nota obtenida (0-10): "
    Leer nota
	
    Si nota >= 9 Y nota <= 10 Entonces
        Escribir "Calificación: Sobresaliente"
    Sino
        Si nota >= 7 Y nota < 9 Entonces
            Escribir "Calificación: Notable"
        Sino
            Si nota >= 6 Y nota < 7 Entonces
                Escribir "Calificación: Bien"
            Sino
                Si nota >= 5 Y nota < 6 Entonces
                    Escribir "Calificación: Suficiente"
                Sino
                    Si nota >= 0 Y nota < 5 Entonces
                        Escribir "Calificación: Insuficiente"
                    Sino
                        Escribir "Nota no válida. Debe estar entre 0 y 10."
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinAlgoritmo
