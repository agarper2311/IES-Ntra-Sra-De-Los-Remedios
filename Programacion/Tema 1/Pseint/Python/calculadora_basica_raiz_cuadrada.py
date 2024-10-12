import math

def calculadora_basica_raiz_cuadrada():

    print("Bienvenido a la calculadora: ")
    print("Menú de selección: ")
    print("1. suma")
    print("2. resta")
    print("3. Multiplicación")
    print("4. División")
    print("5. Raiz Cuadrada")

    opcion = int(input("Introduzca su selección: "))

    if opcion == 1:
        num1 = int(input("Introduzca el primer número: "))
        num2 = int(input("Introduzca el segundo número: "))
        print('El resultado es: ', num1 + num2)
    elif opcion == 2:
        num1 = int(input("Introduzca el primer número: "))
        num2 = int(input("Introduzca el segundo número: "))
        print('El resultado es: ', num1 - num2)
    elif opcion == 3:
        num1 = int(input("Introduzca el primer número: "))
        num2 = int(input("Introduzca el segundo número: "))
        print('El resultado es: ', num1 * num2)
    elif opcion == 4:
        num1 = int(input("Introduzca el primer número: "))
        num2 = int(input("Introduzca el segundo número: "))
        print('El resultado es: ', num1 / num2)
        print('El resto de la división es: ', num1 % num2)
    elif opcion == 5:
        num1 = int(input("Introduzca el número: "))
        print('El resultado es: ', math.sqrt(num1))


calculadora_basica_raiz_cuadrada()