def calificacion():

    nota = float(input('Introduzca la nota: '))

    if nota >= 9 and nota <= 10:
        print('Calificación: Sobresaliente')
    elif nota >= 7 and nota < 9:
        print('Calificación: Notable')
    elif nota >= 6 and nota < 7:
        print('Calificación: Bien')
    elif nota >= 5 and nota < 6:
        print('Calificación: Suficiente')
    elif nota >= 0 and nota < 5:
        print('Calificación: Insuficiente')

    else: print('Nota no válida')



calificacion()