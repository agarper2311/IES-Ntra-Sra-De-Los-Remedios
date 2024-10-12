def funcion_suma_hasta_pulsar_cero():

    print('Bienvenido a calculadora')
    print('Pulse 0 para saber el resultado de la operación')

    num = int(input('Introduzca un número: '))

    resultado = suma(num)

    print('El resultado es: ', resultado)


def suma(num):

    resultado = 0

    while num != 0:
        resultado = resultado + num
        num = int(input('Introduzca otro número o 0 para terminar: '))
    return resultado

funcion_suma_hasta_pulsar_cero()